<!--{*
/*
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
*/
*}-->

<section class="page-body mypage-body" id="mypage-favorite-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <nav id="mypage-nav">
    <!--{if $tpl_navi != ""}-->
    <!--{include file=$tpl_navi}-->
    <!--{else}-->
    <!--{include file=`$smarty.const.TEMPLATE_REALDIR`mypage/navi.tpl}-->
    <!--{/if}-->
  </nav>
  <article id="mypage-favorite-contents">
    <form name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="order_id" value="">
      <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->">
      <input type="hidden" name="mode" value="">
      <input type="hidden" name="product_id" value="">
      <section class="bloc-body">
        <header>
          <h1><!--{$tpl_subtitle|h}--></h1>
        </header>
        <div class="bloc-article">
          <!--{if $tpl_linemax > 0}-->
          <p><span class="attention"><!--{$tpl_linemax}-->件</span>のお気に入りがあります。</p>
          <!--▼ページナビ-->
          <section class="pagination" id="favorite-pager">
            <ul>
              <!--{$tpl_strnavi}-->
            </ul>
          </section>
          <!--▲ページナビ-->
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>削除</th>
                <th>商品画像</th>
                <th>商品名</th>
                <th><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)</th>
              </tr>
            </thead>
            <tbody>
              <!--{section name=cnt loop=$arrFavorite}-->
              <!--{assign var=product_id value="`$arrFavorite[cnt].product_id`"}-->
              <tr>
                <td><a href="javascript:fnModeSubmit('delete_favorite','product_id','<!--{$product_id|h}-->');">削除</a></td>
                <td><a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$product_id|u}-->"><img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrFavorite[cnt].main_list_image|sfNoImageMainList|h}-->&amp;width=65&amp;height=65"></a></td>
                <td><a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$product_id|u}-->"><!--{$arrFavorite[cnt].name}--></a></td>
                <td>
                  <span class="price">
                    <!--{if $arrFavorite[cnt].price02_min_inctax == $arrFavorite[cnt].price02_max_inctax}-->
                    <!--{$arrFavorite[cnt].price02_min_inctax|number_format}-->
                    <!--{else}-->
                    <!--{$arrFavorite[cnt].price02_min_inctax|number_format}-->～<!--{$arrFavorite[cnt].price02_max_inctax|number_format}-->
                    <!--{/if}-->円</span>
                </td>
              </tr>
              <!--{/section}-->
            </tbody>
          </table>
          <!--{else}-->
          <div class="alert alert-info">
            お気に入りが登録されておりません。
          </div>
          <!--{/if}-->
        </div>
      </section>
    </form>
  </article>
</section>