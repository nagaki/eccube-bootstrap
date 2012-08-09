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

<section class="page-body mypage-body" id="mypage-index-area">
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
  <article id="mypage-index-contents">
    <form name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="order_id" value="">
      <input type="hidden" name="pageno" value="<!--{$objNavi->nowpage}-->">
      <section class="bloc-body">
        <header>
          <h1><!--{$tpl_subtitle|h}--></h1>
        </header>
        <div>
          <!--{if $objNavi->all_row > 0}-->
          <p><span class="attention"><!--{$objNavi->all_row}-->件</span>の購入履歴があります。</p>
          <table class="table">
            <thead>
              <tr>
                <th>購入日時</th>
                <th>注文番号</th>
                <th>お支払い方法</th>
                <th>合計金額</th>
                <th>詳細</th>
              </tr>
            </thead>
            <tbody>
              <!--{section name=cnt loop=$arrOrder}-->
              <tr>
                <td><!--{$arrOrder[cnt].create_date|sfDispDBDate}--></td>
                <td><!--{$arrOrder[cnt].order_id}--></td>
                <!--{assign var=payment_id value="`$arrOrder[cnt].payment_id`"}-->
                <td><!--{$arrPayment[$payment_id]|h}--></td>
                <td><!--{$arrOrder[cnt].payment_total|number_format}-->円</td>
                <td><a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/history.php?order_id=<!--{$arrOrder[cnt].order_id}-->">詳細</a></td>
              </tr>
              <!--{/section}-->
            </tbody>
          </table>
          <!--▼ページナビ-->
          <section class="pagination" id="bought-pager">
            <ul>
            <!--{$objNavi->strnavi}-->
            </ul>
          </section>
          <!--▲ページナビ-->
          <!--{else}-->
          <p>購入履歴はありません。</p>
          <!--{/if}-->
        </div>
      <section>
    </form>
  </article>
</section>
