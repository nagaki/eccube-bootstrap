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

<script>
  function fnSetClassCategories(form, classcat_id2_selected) {
    var $form = $(form);
    var product_id = $form.find('input[name=product_id]').val();
    var $sele1 = $form.find('select[name=classcategory_id1]');
    var $sele2 = $form.find('select[name=classcategory_id2]');
    setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
  }
// 並び順を変更
function fnChangeOrderby(orderby) {
  fnSetVal('orderby', orderby);
  fnSetVal('pageno', 1);
  fnSubmit();
}
// 表示件数を変更
function fnChangeDispNumber(dispNumber) {
  fnSetVal('disp_number', dispNumber);
  fnSetVal('pageno', 1);
  fnSubmit();
}
// カゴに入れる
function fnInCart(productForm) {
  var product_id = productForm["product_id"].value;
  fnChangeAction("?#product" + product_id);
  if (productForm["classcategory_id1"]) {
    fnSetVal("classcategory_id1", productForm["classcategory_id1"].value);
  }
  if (productForm["classcategory_id2"]) {
    fnSetVal("classcategory_id2", productForm["classcategory_id2"].value);
  }
  fnSetVal("quantity", productForm["quantity"].value);
  fnSetVal("product_id", productForm["product_id"].value);
  fnSetVal("product_class_id", productForm["product_class_id"].value);
  fnSubmit();
}

$(function() {
  var selector = $("div.navi").find("a");
  selector.each(function(){
    var fn = $(this).attr("onclick");
    var addfn = "function(){fnSetVal('product_id', '');}" + fn;
    //alert(addfn);
    $(this).attr("onclick", addfn);
  });
});
</script>

<section class="page-body" id="product-list-area">
  <!--★タイトル★-->
  <header>
    <h1><!--{$tpl_subtitle|h}--></h1>
  </header>
  <article id="product-list-contents">
    <form name="form1" id="form1" method="get" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="<!--{$mode|h}-->">
      <!--{* ▼検索条件 *}-->
      <input type="hidden" name="category_id" value="<!--{$arrSearchData.category_id|h}-->">
      <input type="hidden" name="maker_id" value="<!--{$arrSearchData.maker_id|h}-->">
      <input type="hidden" name="name" value="<!--{$arrSearchData.name|h}-->">
      <!--{* ▲検索条件 *}-->
      <!--{* ▼ページナビ関連 *}-->
      <input type="hidden" name="orderby" value="<!--{$orderby|h}-->">
      <input type="hidden" name="disp_number" value="<!--{$disp_number|h}-->">
      <input type="hidden" name="pageno" value="<!--{$tpl_pageno|h}-->">
      <!--{* ▲ページナビ関連 *}-->
      <!--{* ▼注文関連 *}-->
      <input type="hidden" name="product_id" value="">
      <input type="hidden" name="classcategory_id1" value="">
      <input type="hidden" name="classcategory_id2" value="">
      <input type="hidden" name="product_class_id" value="">
      <input type="hidden" name="quantity" value="">
      <!--{* ▲注文関連 *}-->
      <input type="hidden" name="rnd" value="<!--{$tpl_rnd|h}-->">
    </form>
    <!--▼検索条件-->
    <!--{if $tpl_subtitle == "検索結果"}-->
    <dl class="dl-horizontal">
      <dt>商品カテゴリ</dt>
      <dd><!--{$arrSearch.category|h}--></dd>
      <!--{if $arrSearch.maker|strlen >= 1}-->
      <dt>メーカー</dt>
      <dd><!--{$arrSearch.maker|h}--></dd>
      <!--{/if}-->
      <dt>商品名</dt>
      <dd><!--{$arrSearch.name|h}--></dd>
    </dl>
    <!--{/if}-->
    <!--▲検索条件-->
    <!--▼ページナビ(本文)-->
    <!--{capture name=page_navi_body}-->
    <!--{if $tpl_linemax > $disp_number}-->
    <section class="pagination pull-right product-list-pager">
      <ul>
        <!--{$tpl_strnavi}-->
      </ul>
    </section>
    <!--{/if}-->
    <section class="page-navi-block container row-fluid">
      <div class="list-order-selector">
        <ul class="nav nav-pills">
          <li class="<!--{if $orderby == 'price'}-->active<!--{/if}-->"><a href="javascript:fnChangeOrderby('price');">価格順</a></li>
          <li class="<!--{if $orderby == "date"}-->active<!--{/if}-->"><a href="javascript:fnChangeOrderby('date');">新着順</a></li>
        </ul>
      </div>
      <div class="list-count-selector">
        <label class="select" for="disp_number">表示件数
          <select class="input-mini" id="disp_number" name="disp_number" onchange="javascript:fnChangeDispNumber(this.value);">
            <!--{foreach from=$arrPRODUCTLISTMAX item="dispnum" key="num"}-->
            <option value="<!--{$num}-->" <!--{if $num == $disp_number}-->selected="selected"<!--{/if}-->><!--{$dispnum}--></option>
            <!--{/foreach}-->
          </select>
        </label>
      </div>
    </section>
    <!--{/capture}-->
    <!--▲ページナビ(本文)-->
    <!--{if $smarty.foreach.arrProducts.first}-->
    <!--▼件数-->
    <div id="list-product-count">
      <span class="label">商品数<!--{if $tpl_linemax > 0}--><!--{$tpl_linemax}--><!--{else}-->0<!--{/if}-->件</span>
    </div>
    <!--▲件数-->
    <!--▼ページナビ(上部)-->
    <form name="page_navi_top" id="page-navi-top" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <!--{if $tpl_linemax > 0}--><!--{$smarty.capture.page_navi_body|smarty:nodefaults}--><!--{/if}-->
    </form>
    <!--▲ページナビ(上部)-->
    <!--{/if}-->
    <section class="bloc-body" id="product-list-flow">
      <ul class="thumbnails">
        <!--{foreach from=$arrProducts item=arrProduct name=arrProducts}-->
        <!--{assign var=id value=$arrProduct.product_id}-->
        <!--{assign var=arrErr value=$arrProduct.arrErr}-->
        <!--▼商品-->
        <li class="span3 list-product-bloc list-count-<!--{$smarty.foreach.arrProducts.index+1}-->">
          <a class="thumbnail" href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
            <!--★画像★-->
            <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_image|sfNoImageMainList|h}-->" alt="<!--{$arrProduct.name|h}-->">
            <!--★商品名★-->
            <h2 class="list-product-title"><!--{$arrProduct.name|h}--></h2>
            <!--▼商品ステータス-->
            <!--{if count($productStatus[$id]) > 0}-->
            <div class="list-product-status">
              <!--{foreach from=$productStatus[$id] item=status}-->
              <span class="label
                <!--{if $status == 1}-->
                label-info
                <!--{elseif $status == 2}-->
                label-success
                <!--{elseif $status == 3}-->
                label-warning
                <!--{elseif $status == 4}-->
                label-important
                <!--{else}-->
                label-inverse
                <!--{/if}-->
              "><!--{$arrSTATUS[$status]}--></span>
              <!--{/foreach}-->
            </div>
            <!--{/if}-->
            <!--▲商品ステータス-->
            <!--★価格★-->
            <div class="list-product-price">
              <!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)
              <span id="price02_default_<!--{$id}-->"><!--{strip}-->
                <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
                <!--{$arrProduct.price02_min_inctax|number_format}-->
                <!--{else}-->
                <!--{$arrProduct.price02_min_inctax|number_format}-->～<!--{$arrProduct.price02_max_inctax|number_format}-->
                <!--{/if}-->
              </span><span id="price02_dynamic_<!--{$id}-->"></span><!--{/strip}-->
              円
            </div>
            <!--★コメント★-->
            <div class="list-product-comment">
              <!--{$arrProduct.main_list_comment|h|nl2br}-->
            </div>
            <!--{if false}-->
            <!--▼買い物かご-->
            <form name="product_form<!--{$id|h}-->" action="?" onsubmit="return false;">
              <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
              <input type="hidden" name="product_id" value="<!--{$id|h}-->">
              <input type="hidden" name="product_class_id" id="product_class_id<!--{$id|h}-->" value="<!--{$tpl_product_class_id[$id]}-->">
              <div>
                <!--{if $tpl_stock_find[$id]}-->
                <!--{if $tpl_classcat_find1[$id]}-->
                <div class="form-inline">
                  <!--▼規格1-->
                  <!--{if $arrErr.classcategory_id1 != ""}-->
                  <p class="attention">※ <!--{$tpl_class_name1[$id]}-->を入力して下さい。</p>
                  <!--{/if}-->
                  <label for="list-class-id1"><!--{$tpl_class_name1[$id]|h}-->
                    <select id="list-class-id1" class="input-medium" name="classcategory_id1">
                      <!--{html_options options=$arrClassCat1[$id] selected=$arrProduct.classcategory_id1}-->
                    </select>
                  </label>
                  <!--▲規格1-->
                  <!--{if $tpl_classcat_find2[$id]}-->
                  <!--▼規格2-->
                  <!--{if $arrErr.classcategory_id2 != ""}-->
                  <p class="attention">※ <!--{$tpl_class_name2[$id]}-->を入力して下さい。</p>
                  <!--{/if}-->
                  <label for="list-class-id2"><!--{$tpl_class_name2[$id]|h}-->
                    <select id="list-class-id2" class="input-medium" name="classcategory_id2">
                    </select>
                  </label>
                  <!--▲規格2-->
                  <!--{/if}-->
                </div>
                <!--{/if}-->
                <div class="form-inline">
                  <!--{if $arrErr.quantity != ""}-->
                  <span class="attention"><!--{$arrErr.quantity}--></span>
                  <!--{/if}-->
                  <label for="list-quantity">数量
                    <input id="list-quantity" type="text" name="quantity" class="input-mini" value="<!--{$arrProduct.quantity|default:1|h}-->" maxlength="<!--{$smarty.const.INT_LEN}-->">
                  </label>
                  <!--★カゴに入れる★-->
                  <span id="cartbtn_default_<!--{$id}-->">
                    <button class="btn btn-primary" type="submit" id="cart<!--{$id}-->">カゴに入れる</button>
                  </span>
                  <div class="attention" id="cartbtn_dynamic_<!--{$id}-->"></div>
                </div>
                <!--{else}-->
                <div>申し訳ございませんが、只今品切れ中です。</div>
                <!--{/if}-->
              </div>
            </form>
            <!--▲買い物かご-->

            <!--{/if}-->

            <!--★商品詳細を見る★-->
            <!--{assign var=name value="detail`$id`"}-->
            <!--{* <a class="btn btn-info" href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><i class="icon-info-sign icon-white"></i>&nbsp;商品詳細を見る</a> *}-->
          </a>
        </li>
        <!--▲商品-->
        <!--{foreachelse}-->
        <!--{include file="frontparts/search_zero.tpl"}-->
        <!--{/foreach}-->
      </ul>
    </section>
    <!--{if $smarty.foreach.arrProducts.last}-->
    <div>
      <!--▼ページナビ(下部)-->
      <form class="form-inline" name="page_navi_bottom" id="page_navi_bottom" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
        <!--{if $tpl_linemax > 0}--><!--{$smarty.capture.page_navi_body|smarty:nodefaults}--><!--{/if}-->
      </form>
      <!--▲ページナビ(下部)-->
    </div>
    <!--{/if}-->

  </article>

</section>
