<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2013 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

 <div id="undercolumn">
   <div id="undercolumn_cart">
     <h2 class="title"><!--{$tpl_title|h}--></h2>

     <!--{if $smarty.const.USE_POINT !== false || count($arrProductsClass) > 0}-->
     <!--★ポイント案内★-->
     <!--{if $smarty.const.USE_POINT !== false}-->
     <div class="panel panel-default">
       <div class="panel-body">
       <!--{if $tpl_login}-->
       <span class="user_name"><!--{$tpl_name|h}--> 様</span>の、現在の所持ポイントは「<span class="point"><!--{$tpl_user_point|number_format|default:0|h}--> pt</span>」です。<br />
       <!--{else}-->
       ポイント制度をご利用になられる場合は、<a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録</a>後ログインしてくださいますようお願い致します。<br />
       <!--{/if}-->
       ポイントは商品購入時に<span class="price">1pt＝<!--{$smarty.const.POINT_VALUE|h}-->円</span>として使用することができます。
       </div>
     </div>
     <!--{/if}-->
     <!--{/if}-->

     <div class="totalmoney_area">
       <!--{* カゴの中に商品がある場合にのみ表示 *}-->
       <!--{if count($cartKeys) > 1}-->
       <div class="alert alert-warning">
         <b><!--{foreach from=$cartKeys item=key name=cartKey}--><!--{$arrProductType[$key]|h}--><!--{if !$smarty.foreach.cartKey.last}-->、<!--{/if}--><!--{/foreach}-->は同時購入できません。</b>
         お手数ですが、個別に購入手続きをお願い致します。
       </div>
       <!--{/if}-->

       <!--{if strlen($tpl_error) != 0}-->
       <div class="alert alert-danger">
         <!--{$tpl_error|h}-->
       </div>
       <!--{/if}-->

       <!--{if strlen($tpl_message) != 0}-->
       <div class="alert alert-warning">
         <!--{$tpl_message|h|nl2br}-->
       </div>
       <!--{/if}-->
     </div>

     <!--{if count($cartItems) > 0}-->
     <!--{foreach from=$cartKeys item=key}-->
     <div class="form_area">
       <form name="form<!--{$key|h}-->" id="form<!--{$key|h}-->" method="post" action="?">
         <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME|h}-->" value="<!--{$transactionid|h}-->" />
         <input type="hidden" name="mode" value="confirm" />
         <input type="hidden" name="cart_no" value="" />
         <input type="hidden" name="cartKey" value="<!--{$key|h}-->" />
         <input type="hidden" name="category_id" value="<!--{$tpl_category_id|h}-->" />
         <input type="hidden" name="product_id" value="<!--{$tpl_product_id|h}-->" />
         <!--{if count($cartKeys) > 1}-->
         <h3><!--{$arrProductType[$key]|h}--></h3>
         <!--{assign var=purchasing_goods_name value=$arrProductType[$key]}-->
         <!--{else}-->
         <!--{assign var=purchasing_goods_name value="カゴの中の商品"}-->
         <!--{/if}-->
         <p>
           <!--{$purchasing_goods_name|h}-->の合計金額は「<span class="price"><!--{$tpl_total_inctax[$key]|number_format|h}-->円</span>」です。
           <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
           <!--{if $arrInfo.free_rule > 0}-->
           <!--{if !$arrData[$key].is_deliv_free}-->
           あと「<span class="price"><!--{$tpl_deliv_free[$key]|number_format|h}-->円</span>」で送料無料です！！
           <!--{else}-->
           現在、「<span class="attention">送料無料</span>」です！！
           <!--{/if}-->
           <!--{/if}-->
           <!--{/if}-->
         </p>

         <table class="table">
           <colgroup>
             <col width="10%" />
             <col width="15%" />
             <col width="30%" />
             <col width="15%" />
             <col width="15%" />
             <col width="15%" />
           </colgroup>
           <thead>
             <tr>
               <th class="alignC">削除</th>
               <th class="alignC">商品写真</th>
               <th class="alignC">商品名</th>
               <th class="alignC">単価</th>
               <th class="alignC">数量</th>
               <th class="alignC">小計</th>
             </tr>
           </thead>
           <tbody>
           <!--{foreach from=$cartItems[$key] item=item}-->
           <tr style="<!--{if $item.error}-->background-color: <!--{$smarty.const.ERR_COLOR|h}-->;<!--{/if}-->">
             <td class="alignC"><a href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->', 'delete', 'cart_no', '<!--{$item.cart_no|h}-->'); return false;">削除</a>
             </td>
             <td class="alignC">
               <!--{if $item.productsClass.main_image|strlen >= 1}-->
               <a class="expansion" target="_blank" href="<!--{$smarty.const.IMAGE_SAVE_URLPATH|h}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->">
                 <!--{/if}-->
                 <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->" style="max-width: 65px;max-height: 65px;" alt="<!--{$item.productsClass.name|h}-->" />
                 <!--{if $item.productsClass.main_image|strlen >= 1}-->
               </a>
               <!--{/if}-->
             </td>
             <td><!--{* 商品名 *}--><strong><!--{$item.productsClass.name|h}--></strong>
               <!--{if $item.productsClass.classcategory_name1 != ""}-->
               <div><!--{$item.productsClass.class_name1|h}-->：<!--{$item.productsClass.classcategory_name1|h}--></div>
               <!--{/if}-->
               <!--{if $item.productsClass.classcategory_name2 != ""}-->
               <div><!--{$item.productsClass.class_name2|h}-->：<!--{$item.productsClass.classcategory_name2|h}--></div>
               <!--{/if}-->
             </td>
             <td class="alignR">
               <!--{$item.price_inctax|number_format|h}-->円
             </td>
             <td class="alignC">
               <p><!--{$item.quantity|h}--></p>
               <div class="btn-group" id="quantity_level">
                 <a class="btn btn-default" href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->','up','cart_no','<!--{$item.cart_no|h}-->'); return false"><span class="glyphicon glyphicon-chevron-up"></span></a>
                 <!--{if $item.quantity > 1}-->
                 <a class="btn btn-default" href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->','down','cart_no','<!--{$item.cart_no|h}-->'); return false"><span class="glyphicon glyphicon-chevron-down"></span></a>
                 <!--{/if}-->
               </div>
             </td>
             <td class="alignR"><!--{$item.total_inctax|number_format|h}-->円</td>
           </tr>
           <!--{/foreach}-->
           <tr>
             <th colspan="5" class="alignR">小計</th>
             <td class="alignR"><!--{$tpl_total_inctax[$key]|number_format|h}-->円</td>
           </tr>
           <tr>
             <th colspan="5" class="alignR">合計</th>
             <td class="alignR"><span class="price"><!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format|h}-->円</span></td>
           </tr>
           <!--{if $smarty.const.USE_POINT !== false}-->
           <!--{if $arrData[$key].birth_point > 0}-->
           <tr>
             <th colspan="5" class="alignR">お誕生月ポイント</th>
             <td class="alignR"><!--{$arrData[$key].birth_point|number_format|h}-->pt</td>
           </tr>
           <!--{/if}-->
           <tr>
             <th colspan="5" class="alignR">今回加算ポイント</th>
             <td class="alignR"><!--{$arrData[$key].add_point|number_format|h}-->pt</td>
           </tr>
           <!--{/if}-->
           </tbody>
         </table>
         <!--{if strlen($tpl_error) == 0}-->
         <p class="alignC">上記内容でよろしければ「購入手続きへ」ボタンをクリックしてください。</p>
         <!--{/if}-->
         <div class="btn_area">
           <!--{if $tpl_prev_url != ""}-->
           <a class="btn btn-default" href="<!--{$tpl_prev_url|h}-->">戻る</a>
           <!--{/if}-->
           <!--{if strlen($tpl_error) == 0}-->
           <input class="btn btn-default" type="submit" value="購入手続きへ" name="confirm" />
           <!--{/if}-->
         </div>
       </form>
     </div>
     <!--{/foreach}-->
     <!--{else}-->
     <div class="alert alert-warning">現在カート内に商品はございません。</div>
     <!--{/if}-->
   </div>
 </div>
