<!--{*
* This file is part of EC-CUBE
*
* Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
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

<section class="page-body" id="cart-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="cart-contents">
    <!--{if false}-->
    <!--{if $smarty.const.USE_POINT !== false || count($arrProductsClass) > 0}-->
    <aside>
      <!--★ポイント案内★-->
      <!--{if $smarty.const.USE_POINT !== false}-->
      <div class="alert alert-info">
        <!--{if $tpl_login}-->
        <span class="customer-name"><!--{$tpl_name|h}--> 様</span>の、現在の所持ポイントは「<span class="point"><!--{$tpl_user_point|number_format|default:0}--> pt</span>」です。<br>
        <!--{else}-->
        ポイント制度をご利用になられる場合は、会員登録後ログインしてくださいますようお願い致します。<br>
        <!--{/if}-->
        ポイントは商品購入時に<span class="price">1pt＝<!--{$smarty.const.POINT_VALUE}-->円</span>として使用することができます。<br>
      </div>
      <!--{/if}-->
    </aside>
    <!--{/if}-->
    <!--{/if}-->
    <aside class="totalmoney-area">
      <!--{* カゴの中に商品がある場合にのみ表示 *}-->
      <!--{if count($cartKeys) > 1}-->
      <p class="alert">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <strong><!--{foreach from=$cartKeys item=key name=cartKey}--><!--{$arrProductType[$key]}--><!--{if !$smarty.foreach.cartKey.last}-->、<!--{/if}--><!--{/foreach}-->は同時購入できません。</strong><br>お手数ですが、個別に購入手続きをお願い致します。
      </p>
      <!--{/if}-->

      <!--{if strlen($tpl_error) != 0}-->
      <p class="alert">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <!--{$tpl_error|h}-->
      </p>
      <!--{/if}-->

      <!--{if strlen($tpl_message) != 0}-->
      <p class="alert">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <!--{$tpl_message|h|nl2br}-->
      </p>
      <!--{/if}-->
    </aside>
    <!--{if count($cartItems) > 0}-->
    <!--{foreach from=$cartKeys item=key}-->
    <section class="bloc-body">
      <form name="form<!--{$key}-->" id="form<!--{$key}-->" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
        <input type="hidden" name="mode" value="confirm">
        <input type="hidden" name="cart_no" value="">
        <input type="hidden" name="cartKey" value="<!--{$key}-->">
        <input type="hidden" name="category_id" value="<!--{$tpl_category_id|h}-->">
        <!--{if count($cartKeys) > 1}-->
        <header>
          <h1><!--{$arrProductType[$key]}--></h1>
        </header>
        <p>
          <!--{$arrProductType[$key]}-->の合計金額は&nbsp;<span class="badge badge-success"><!--{$tpl_total_inctax[$key]|number_format}--></span>&nbsp;円です。
          <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
          <!--{if $arrInfo.free_rule > 0}-->
          <!--{if !$arrData[$key].is_deliv_free}-->
          <span class="badge badge-important">+&nbsp;<!--{$tpl_deliv_free[$key]|number_format}--></span>&nbsp;円で送料無料
          <!--{else}-->

          現在、<span class="attention">送料無料</span>です
          <!--{/if}-->
          <!--{/if}-->
          <!--{/if}-->
        </p>
        <!--{else}-->
        <p>
          お買い上げ商品の合計金額は&nbsp;<span class="badge badge-success"><!--{$tpl_total_inctax[$key]|number_format}--></span>&nbsp;円です。
          <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
          <!--{if $arrInfo.free_rule > 0}-->
          <!--{if !$arrData[$key].is_deliv_free}-->
          <span class="badge badge-important">+&nbsp;<!--{$tpl_deliv_free[$key]|number_format}--></span>&nbsp;円で送料無料
          <!--{else}-->
          現在、<span class="attention">送料無料</span>です
          <!--{/if}-->
          <!--{/if}-->
          <!--{/if}-->
        </p>
        <!--{/if}-->
        <table class="table">
          <colgroup>
            <col width="10%">
            <col width="15%">
            <col width="30%">
            <col width="15%">
            <col width="15%">
            <col width="15%">
          </colgroup>
          <thead>
            <tr>
              <th>削除</th>
              <th>商品写真</th>
              <th>商品名</th>
              <th>単価</th>
              <th>数量</th>
              <th>小計</th>
            </tr>
          </thead>
          <tbody>
            <!--{foreach from=$cartItems[$key] item=item}-->
            <tr>
              <td><a href="?" onclick="fnFormModeSubmit('form<!--{$key}-->', 'delete', 'cart_no', '<!--{$item.cart_no}-->'); return false;"><i class="icon-remove"></i></a>
              </td>
              <td>
                <a class="expansion product-thumbnail" target="_blank"
                  <!--{if $item.productsClass.main_image|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->"
                  <!--{/if}-->
                  >
                  <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->&amp;width=65&amp;height=65" alt="<!--{$item.productsClass.name|h}-->">
                </a>
              </td>
              <td><!--{* 商品名 *}--><strong><!--{$item.productsClass.name|h}--></strong><br>
                <!--{if $item.productsClass.classcategory_name1 != ""}-->
                <!--{$item.productsClass.class_name1}-->：<!--{$item.productsClass.classcategory_name1}--><br>
                <!--{/if}-->
                <!--{if $item.productsClass.classcategory_name2 != ""}-->
                <!--{$item.productsClass.class_name2}-->：<!--{$item.productsClass.classcategory_name2}-->
                <!--{/if}-->
              </td>
              <td>
                <!--{$item.price|sfCalcIncTax|number_format}-->円
              </td>
              <td>
                <p><span class="badge badge-info"><!--{$item.quantity}--></span></p>
                <div class="btn-group btn-group-vertical" id="quantity_level">
                  <button class="btn" href="?" onclick="fnFormModeSubmit('form<!--{$key}-->','up','cart_no','<!--{$item.cart_no}-->'); return false"><i class="icon-plus-sign"></i></button>
                  <button class="btn" href="?" onclick="fnFormModeSubmit('form<!--{$key}-->','down','cart_no','<!--{$item.cart_no}-->'); return false"><i class="icon-minus-sign"></i></button>
                </div>
              </td>
              <td><!--{$item.total_inctax|number_format}-->円</td>
            </tr>
            <!--{/foreach}-->
            <tr>
              <th colspan="5">小計</th>
              <td><!--{$tpl_total_inctax[$key]|number_format}-->円</td>
            </tr>
            <tr>
              <th colspan="5">合計</th>
              <td><span class="total-price"><!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format}-->円</span></td>
            </tr>
            <!--{if $smarty.const.USE_POINT !== false}-->
            <!--{if $arrData[$key].birth_point > 0}-->
            <tr>
              <th colspan="5">お誕生月ポイント</th>
              <td><!--{$arrData[$key].birth_point|number_format}-->pt</td>
            </tr>
            <!--{/if}-->
            <tr>
              <th colspan="5">今回加算ポイント</th>
              <td><!--{$arrData[$key].add_point|number_format}-->pt</td>
            </tr>
            <!--{/if}-->
          </tbody>
        </table>
        <!--{if strlen($tpl_error) == 0}-->
        <p>上記内容でよろしければ「購入手続きへ」ボタンをクリックしてください。</p>
        <!--{/if}-->
        <div class="form-actions">
          <!--{if $tpl_prev_url != ""}-->
          <a class="btn btn-large" href="<!--{$tpl_prev_url|h}-->" name="back<!--{$key}-->">戻る</a>
          <!--{/if}-->
          <!--{if strlen($tpl_error) == 0}-->
          <input type="hidden" name="cartKey" value="<!--{$key}-->">
          <button class="btn btn-large btn-primary" type="submit" name="confirm">購入手続きへ</button>
          <!--{/if}-->
        </div>
      </form>
    </section>
    <!--{/foreach}-->
    <!--{else}-->
    <p class="alert">
      <a href="#" class="close" data-dismiss="alert">&times;</a>
      現在カート内に商品はございません。
    </p>
    <!--{/if}-->
  </article>
</section>
