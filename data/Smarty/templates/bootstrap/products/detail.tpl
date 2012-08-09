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

<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/products.js"></script>
<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.js"></script>
<link rel="stylesheet" href="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.css" media="screen">
<script>
  // 規格2に選択肢を割り当てる。
  function fnSetClassCategories(form, classcat_id2_selected) {
    var $form = $(form);
    var product_id = $form.find('input[name=product_id]').val();
    var $sele1 = $form.find('select[name=classcategory_id1]');
    var $sele2 = $form.find('select[name=classcategory_id2]');
    setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
  }
  jQuery(function($) {
    $('a.expansion').facebox({
      loadingImage : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/loading.gif',
      closeImage   : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/closelabel.png'
    });
  });
</script>
<form name="form1" id="form1" method="post" action="?">
  <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
  <article id="product-detail-block">
    <header>
      <!--★商品名★-->
      <h1 id="product-title"><!--{$arrProduct.name|h}--></h1>
      <!--▼商品ステータス-->
      <!--{assign var=ps value=$productStatus[$tpl_product_id]}-->
      <!--{if count($ps) > 0}-->
      <div id="product-status">
        <!--{foreach from=$ps item=status}-->
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
    </header>
    <div id="product-data" class="row-fluid">
      <div class="span6">
        <div id="product-data-img">
          <!--{assign var=key value="main_image"}-->
          <!--★画像★-->
          <!--{if $arrProduct.main_large_image|strlen >= 1}-->
          <a class="expansion" href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_large_image|h}-->" target="_blank">
            <!--{/if}-->
            <img src="<!--{$arrFile[$key].filepath|h}-->" width="<!--{$arrFile[$key].width}-->" height="<!--{$arrFile[$key].height}-->" alt="<!--{$arrProduct.name|h}-->">
            <!--{if $arrProduct.main_large_image|strlen >= 1}-->
          </a>
          <!--{/if}-->
        </div>
        <!--{if false}-->
        <!--{*$arrProduct.main_large_image|strlen >= 1*}-->
        <span>
          <!--★拡大する★-->
          <a href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_large_image|h}-->" class="expansion" target="_blank"><i class="icon-zoom-in"></i>画像を拡大する</a>
        </span>
        <!--{/if}-->
      </div>
      <div class="span6" id="product-data-txt">
        <dl class="dl-horizontal">
          <!--★商品コード★-->
          <dt>商品コード</dt>
          <dd>
            <span id="product_code_default">
              <!--{if $arrProduct.product_code_min == $arrProduct.product_code_max}-->
              <!--{$arrProduct.product_code_min|h}-->
              <!--{else}-->
              <!--{$arrProduct.product_code_min|h}-->～<!--{$arrProduct.product_code_max|h}-->
              <!--{/if}-->
            </span><span id="product_code_dynamic"></span>
          </dd>
          <!--★通常価格★-->
          <!--{if $arrProduct.price01_min_inctax > 0}-->
          <dt><!--{$smarty.const.NORMAL_PRICE_TITLE}-->(税込)</dt>
          <dd class="price">
            <span id="maker-price"><!--{strip}-->
              <!--{if $arrProduct.price01_min_inctax == $arrProduct.price01_max_inctax}-->
              <!--{$arrProduct.price01_min_inctax|number_format}-->
              <!--{else}-->
              <!--{$arrProduct.price01_min_inctax|number_format}-->～<!--{$arrProduct.price01_max_inctax|number_format}-->
              <!--{/if}-->
            </span><span id="price01_dynamic"></span><!--{/strip}-->
            円
          </dd>
          <!--{/if}-->
          <!--★販売価格★-->
          <dt><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)</dt>
          <dd class="price">
            <span id="sales-price"><!--{strip}-->
              <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
              <!--{$arrProduct.price02_min_inctax|number_format}-->
              <!--{else}-->
              <!--{$arrProduct.price02_min_inctax|number_format}-->～<!--{$arrProduct.price02_max_inctax|number_format}-->
              <!--{/if}-->
            </span><span id="price02_dynamic"></span><!--{/strip}-->
            円
          </dd>
          <!--★ポイント★-->
          <!--{if $smarty.const.USE_POINT !== false}-->
          <dt class="point">ポイント</dt>
          <dd id="point_default"><!--{strip}-->
            <!--{if $arrProduct.price02_min == $arrProduct.price02_max}-->
            <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|number_format}-->
            <!--{else}-->
            <!--{if $arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate == $arrProduct.price02_max|sfPrePoint:$arrProduct.point_rate}-->
            <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|number_format}-->
            <!--{else}-->
            <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|number_format}-->～<!--{$arrProduct.price02_max|sfPrePoint:$arrProduct.point_rate|number_format}-->
            <!--{/if}-->
            <!--{/if}-->
            <span id="point_dynamic"></span><!--{/strip}-->
            Pt
          </dd>
          <!--{/if}-->
          <!--{* ▼メーカー *}-->
          <!--{if $arrProduct.maker_name|strlen >= 1}-->
          <dt>メーカー</dt>
          <dd><!--{$arrProduct.maker_name|h}--></dd>
          <!--{/if}-->
          <!--{* ▲メーカー *}-->
          <!--▼メーカーURL-->
          <!--{if $arrProduct.comment1|strlen >= 1}-->
          <dt>メーカーURL</dt>
          <dd><a href="<!--{$arrProduct.comment1|h}-->"><!--{$arrProduct.comment1|h}--></a></dd>
          <!--{/if}-->
          <!--▼メーカーURL-->
          <!--★関連カテゴリ★-->
          <dt>関連カテゴリ</dt>
          <!--{section name=r loop=$arrRelativeCat}-->
          <dd>
            <!--{section name=s loop=$arrRelativeCat[r]}-->
            <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$arrRelativeCat[r][s].category_id}-->"><!--{$arrRelativeCat[r][s].category_name}--></a>
            <!--{if !$smarty.section.s.last}--><!--{$smarty.const.SEPA_CATNAVI}--><!--{/if}-->
            <!--{/section}-->
          </dd>
          <!--{/section}-->
        </dl>
      </div>
    </div>
    <!--★詳細メインコメント★-->
    <div id="product-main-explanation"><!--{$arrProduct.main_comment|nl2br_html}--></div>
    <!--▼買い物かご-->
    <div>
      <input type="hidden" name="mode" value="cart">
      <input type="hidden" name="product_id" value="<!--{$tpl_product_id}-->">
      <input type="hidden" name="product_class_id" value="<!--{$tpl_product_class_id}-->" id="product_class_id">
      <input type="hidden" name="favorite_product_id" value="">
      <div class="row-fluid">
        <!--{if $tpl_stock_find}-->
        <!--{if $tpl_classcat_find1}-->
        <div class="span6">
          <div class="well">
            <!--▼規格1-->
            <div class="control-group">
              <label class="control-label" for="classcategory_id1"><!--{$tpl_class_name1|h}--></label>
              <div class="controls">
                <!--{if $arrErr.classcategory_id1 != ""}-->
                <span class="attention"><!--{$tpl_class_name1}-->を入力して下さい。</span>
                <!--{/if}-->
                <select class="input-medium" id="classcategory_id1" name="classcategory_id1">
                  <!--{html_options options=$arrClassCat1 selected=$arrForm.classcategory_id1.value}-->
                </select>
              </div>
            </div>
            <!--▲規格1-->
            <!--{if $tpl_classcat_find2}-->
            <!--▼規格2-->
            <div class="control-group">
              <label class="control-label" for="classcategory_id2"><!--{$tpl_class_name2|h}--></label>
              <div class="controls">
                <!--{if $arrErr.classcategory_id2 != ""}-->
                <span class="attention"><!--{$tpl_class_name2}-->を入力して下さい。</span>
                <!--{/if}-->
                <select class="input-medium" id="classcategory_id2" name="classcategory_id2">
                </select>
              </div>
            </div>
            <!--▲規格2-->
            <!--{/if}-->
          </div>
        </div>
        <!--{/if}-->
        <div class="<!--{if $tpl_classcat_find1}-->span6<!--{else}--><!--{/if}-->">
          <div class="well">
            <!--★数量★-->
            <div class="control-group">
              <label class="control-label" for="quantity">数量</label>
              <div class="controls">
                <!--{if $arrErr.quantity != ""}-->
                <span class="attention"><!--{$arrErr.quantity}--></span>
                <!--{/if}-->
                <div class="attention" id="cartbtn_dynamic"></div>
                <input type="number" min="1" max="72" id="quantity" name="quantity" value="<!--{$arrForm.quantity.value|default:1|h}-->" maxlength="<!--{$smarty.const.INT_LEN}-->" class="required">
              </div>
            </div>
            <!--★カゴに入れる★-->
            <a class="btn btn-large btn-primary" href="javascript:void(document.form1.submit())" id="cart"><i class="icon-shopping-cart icon-white"></i>カゴに入れる</a>
          </div>
        </div>
        <!--{else}-->
        <div class="row attention">申し訳ございませんが、只今品切れ中です。</div>
        <!--{/if}-->
      </div>
      <!--★お気に入り登録★-->
      <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1 && $tpl_login === true}-->
      <div class="well">
        <!--{assign var=add_favorite value="add_favorite`$product_id`"}-->
        <!--{if $arrErr[$add_favorite]}-->
        <div class="attention"><!--{$arrErr[$add_favorite]}--></div>
        <!--{/if}-->
        <!--{if !$is_favorite}-->
        <a class="btn btn-success" href="javascript:fnChangeAction('?product_id=<!--{$arrProduct.product_id|h}-->'); fnModeSubmit('add_favorite','favorite_product_id','<!--{$arrProduct.product_id|h}-->');" id="add-favorite-product" rel="popover" data-content="お気に入りに登録すると、マイページからこの商品を参照できるようになります。" data-original-title="お気に入りに登録する"><i class="icon-star icon-white"></i>お気に入りに登録する</a>
        <!--{else}-->
        <button class="btn disabled" id="add_favorite_product" disabled="disabled">お気に入り登録済</button>
        <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.tipsy.js"></script>
        <script>
          var favoriteButton = $("#add_favorite_product");
          favoriteButton.tipsy({gravity: $.fn.tipsy.autoNS, fallback: "お気に入りに登録済み", fade: true });
      
          <!--{if $just_added_favorite == true}-->
          favoriteButton.load(function(){$(this).tipsy("show")});
          $(function(){
            var tid = setTimeout('favoriteButton.tipsy("hide")',5000);
          });
          <!--{/if}-->
        </script>
        <!--{/if}-->
      </div>
      <!--{/if}-->
    </div>
    <!--▲買い物かご-->
  </article>
</form>
<!--詳細ここまで-->

<!--▼サブコメント-->
<!--{section name=cnt loop=$smarty.const.PRODUCTSUB_MAX}-->
<!--{assign var=key value="sub_title`$smarty.section.cnt.index+1`"}-->
<!--{assign var=ikey value="sub_image`$smarty.section.cnt.index+1`"}-->
<!--{if $arrProduct[$key] != "" or $arrProduct[$ikey]|strlen >= 1}-->
<aside class="product-sub-body">
  <header>
    <h1><!--★サブタイトル★--><!--{$arrProduct[$key]|h}--></h1>
  </header>
  <section class="product-sub-content">
    <!--{assign var=ckey value="sub_comment`$smarty.section.cnt.index+1`"}-->
    <!--▼サブ画像-->
    <!--{assign var=lkey value="sub_large_image`$smarty.section.cnt.index+1`"}-->
    <!--{if $arrProduct[$ikey]|strlen >= 1}-->
    <div>
      <!--★サブテキスト★--><!--{$arrProduct[$ckey]|nl2br_html}-->
    </div>
    <div>
      <!--{if $arrProduct[$lkey]|strlen >= 1}-->
      <a href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct[$lkey]|h}-->" target="_blank" >
      <!--{/if}-->
        <img src="<!--{$arrFile[$ikey].filepath}-->" alt="<!--{$arrProduct.name|h}-->" width="<!--{$arrFile[$ikey].width}-->" height="<!--{$arrFile[$ikey].height}-->">
      <!--{if $arrProduct[$lkey]|strlen >= 1}-->
      </a>
      <!--{/if}-->
    </div>
    <!--{else}-->
    <div>
      <!--★サブテキスト★--><!--{$arrProduct[$ckey]|nl2br_html}-->
    </div>
    <!--{/if}-->
    <!--▲サブ画像-->
  </section>
</aside>
<!--{/if}-->
<!--{/section}-->
<!--▲サブコメント-->

<!--商品レビュー-->
<aside id="customer-review-block" class="product-sub-body">
  <header>
    <h1>商品レビュー</h1>
  </header>
  <div>
    <p>この商品に対するご感想をぜひお寄せください。</p>
    <div id="customer-review-button">
      <!--{if count($arrReview) < $smarty.const.REVIEW_REGIST_MAX}-->
      <!--★新規レビューを書き込む★-->
      <a class="btn btn-mini" href="./review.php" onclick="win02('./review.php?product_id=<!--{$arrProduct.product_id}-->','review','600','640'); return false;" target="_blank" id="review-button">新規レビューを書き込む</a>
      <!--{/if}-->
    </div>
  </div>
  <!--{if count($arrReview) > 0}-->
  <section>
    <!--{section name=cnt loop=$arrReview}-->
    <div class="customer-review-posted">
      <h2 class="review-title"><!--{$arrReview[cnt].title|h}--></h2>
      <p class="review-date"><!--{$arrReview[cnt].create_date|sfDispDBDate:false}--> 投稿者<!--{if $arrReview[cnt].reviewer_url}--><a href="<!--{$arrReview[cnt].reviewer_url}-->" target="_blank"><!--{$arrReview[cnt].reviewer_name|h}--></a><!--{else}--><!--{$arrReview[cnt].reviewer_name|h}--><!--{/if}--> おすすめレベル<span class="recommend-level"><!--{assign var=level value=$arrReview[cnt].recommend_level}--><!--{$arrRECOMMEND[$level]|h}--></span></p>
      <p class="review-comment"><!--{$arrReview[cnt].comment|h|nl2br}--></p>
    </div>
    <!--{/section}-->
  </section>
  <!--{/if}-->
</aside>
<!--お客様の声ここまで-->

<!--▼関連商品-->
<!--{if $arrRecommend}-->
<aside id="who-bought-block" class="product-sub-body">
  <header>
    <h1>その他のオススメ商品</h1>
  </header>
  <ul class="thumbnails">
    <!--{foreach from=$arrRecommend item=arrItem name="arrRecommend"}-->
    <li class="span3 who-bought-count-<!--{$smarty.foreach.arrRecommend.index+1}-->">
      <a class="thumbnail" href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrItem.product_id|u}-->" rel="popover" data-content="<!--{$arrItem.comment|h|nl2br}-->" data-original-title="<!--{$arrItem.name|h}-->">
        <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrItem.main_image|sfNoImageMainList|h}-->" alt="<!--{$arrItem.name|h}-->">
        <!--{assign var=price02_min value=`$arrItem.price02_min_inctax`}-->
        <!--{assign var=price02_max value=`$arrItem.price02_max_inctax`}-->
        <h2 class="list-product-title"><!--{$arrItem.name|h}--></h2>
        <div class="list-product-price"><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)<span class="price">
        <!--{if $price02_min == $price02_max}-->
        <!--{$price02_min|number_format}-->
        <!--{else}-->
        <!--{$price02_min|number_format}-->～<!--{$price02_max|number_format}-->
        <!--{/if}-->円</span></div>
        <div class="list-product-comment"><!--{$arrItem.comment|h|nl2br}--></div>
      </a>
    </li>
    <!--{/foreach}-->
  </ul>
</aside>
<!--{/if}-->
<!--▲関連商品-->