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

<!--{if count($arrBestProducts) > 0}-->
<section class="bloc-body" id="recommend-area">
  <header>
    <h1>おすすめ商品情報</h1>
  </header>
  <div id="recommend-contents" class="bloc-article">
    <ul class="thumbnails">
      <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->
      <li class="span3 recomment-count-<!--{$smarty.foreach.recommend_products.index+1}-->">
        <a class="thumbnail" href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->" rel="popover" data-content="<!--{$arrProduct.comment|h|nl2br}-->" data-original-title="<!--{$arrProduct.name|h}-->">
          <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_image|sfNoImageMainList|h}-->" alt="<!--{$arrProduct.name|h}-->">
          <h1 class="list-product-title"><!--{$arrProduct.name|h}--></h1>
          <div class="list-product-price"><!--{$smarty.const.SALE_PRICE_TITLE}--><span class="price"><!--{$arrProduct.price02_min_inctax|number_format}--> 円</span></div>
          <div class="list-product-comment"><!--{$arrProduct.comment|h|nl2br}--></div>
        </a>
      </li>
      <!--{/foreach}-->
    </ul>
  </div>
  <footer>
    <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=0"><i class="icon-th-list"></i>&nbsp;全商品を見る</a>
  </footer>
</section>
<!--{/if}-->
