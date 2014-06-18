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
   <div id="undercolumn_shopping">
     <h2 class="title"><!--{$tpl_title|h}--></h2>

     <!-- ▼その他決済情報を表示する場合は表示 -->
     <!--{if $arrOther.title.value}-->
     <div class="alert alert-info">
       <b>■<!--{$arrOther.title.name}-->情報</b>
       <!--{foreach key=key item=item from=$arrOther}-->
       <!--{if $key != "title"}-->
       <!--{if $item.name != ""}-->
       <!--{$item.name}-->：
       <!--{/if}-->
       <!--{$item.value|nl2br}-->
       <!--{/if}-->
       <!--{/foreach}-->
     </div>
     <!--{/if}-->
     <!-- ▲コンビに決済の場合には表示 -->

     <div id="complete_area">
       <div class="panel panel-default">
         <div class="panel-heading">
           <h2 class="panel-title"><!--{$arrInfo.shop_name|h}-->の商品をご購入いただき、ありがとうございました。</h2>
         </div>
         <div class="panel-body">
           <p>ただいま、ご注文の確認メールをお送りさせていただきました。</p>
           <p>万一、ご確認メールが届かない場合は、トラブルの可能性もありますので大変お手数ではございますがもう一度お問い合わせいただくか、お電話にてお問い合わせくださいませ。</p>
           <p>今後ともご愛顧賜りますようよろしくお願い申し上げます。</p>
         </div>
       </div>

       <div class="panel panel-default">
         <div class="panel-heading">
           <h2 class="panel-title">店舗へのお問い合わせ</h2>
         </div>
         <div class="panel-body">
           <dl>
             <dt>店舗名</dt>
             <dd><!--{$arrInfo.shop_name|h}--></dd>
             <dt>電話番号</dt>
             <dd><!--{$arrInfo.tel01}-->-<!--{$arrInfo.tel02}-->-<!--{$arrInfo.tel03}--> <!--{if $arrInfo.business_hour != ""}-->（受付時間/<!--{$arrInfo.business_hour}-->）<!--{/if}--></dd>
             <dt>Eメールアドレス</dt>
             <dd><a href="mailto:<!--{$arrInfo.email02|escape:'hex'}-->"><!--{$arrInfo.email02|escape:'hexentity'}--></a></dd>
           </dl>
         </div>
       </div>

     </div>

     <div class="btn_area">
       <a class="btn btn-default" href="<!--{$smarty.const.TOP_URL}-->">トップページへ</a>
     </div>

   </div>
 </div>
