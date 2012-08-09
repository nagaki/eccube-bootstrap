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

<section class="page-body mypage-body" id="mypage-delivery-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <nav id="mypage-nav">
    <!--{include file=$tpl_navi}-->
  </nav>
  <article id="mypage-delivery-contents">
    <section class="bloc-body">
      <header>
        <h1><!--{$tpl_subtitle|h}--></h1>
      </header>
      <div class="bloc-article">
        <p>登録住所以外への住所へ送付される場合等にご利用いただくことができます。<br>最大<span class="attention"><!--{$smarty.const.DELIV_ADDR_MAX|h}-->件</span>まで登録できます。</p>
        <!--{if $tpl_linemax > 0}-->
        <form name="form1" method="post" action="?" >
          <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
          <input type="hidden" name="mode" value="">
          <input type="hidden" name="other_deliv_id" value="">
          <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->">
          <table class="table">
            <colgroup>
              <col width="5%">
              <col width="25%">
              <col width="50%">
              <col width="10%">
              <col width="10%">
            </colgroup>
            <thead>
              <tr>
                <th colspan="5">お届け先</th>
              </tr>
            </thead>
            <tbody>
              <!--{section name=cnt loop=$arrOtherDeliv}-->
              <!--{assign var=OtherPref value="`$arrOtherDeliv[cnt].pref`"}-->
              <tr>
                <td><!--{$smarty.section.cnt.iteration}--></td>
                <td><label for="add<!--{$smarty.section.cnt.iteration}-->">お届け先住所</label></td>
                <td>
                  〒<!--{$arrOtherDeliv[cnt].zip01}-->-<!--{$arrOtherDeliv[cnt].zip02}--><br>
                  <!--{$arrPref[$OtherPref]|h}--><!--{$arrOtherDeliv[cnt].addr01|h}--><!--{$arrOtherDeliv[cnt].addr02|h}--><br>
                  <!--{$arrOtherDeliv[cnt].name01|h}-->&nbsp;<!--{$arrOtherDeliv[cnt].name02|h}-->
                </td>
                <td>
                  <a href="./delivery_addr.php" onclick="win02('./delivery_addr.php?other_deliv_id=<!--{$arrOtherDeliv[cnt].other_deliv_id}-->','deliv_disp','600','640'); return false;">変更</a>
                </td>
                <td>
                  <a href="#" onclick="fnModeSubmit('delete','other_deliv_id','<!--{$arrOtherDeliv[cnt].other_deliv_id}-->'); return false;">削除</a>
                </td>
              </tr>
              <!--{/section}-->
            </tbody>
          </table>
        </form>
        <!--{else}-->
        <div class="alert alert-info">
          <strong>新しいお届け先は登録されていません。</strong>
        </div>
        <!--{/if}-->
      </div>
      <!--{if $tpl_linemax < $smarty.const.DELIV_ADDR_MAX}-->
      <!--{* 退会時非表示 *}-->
      <!--{if $tpl_login}-->      
      <footer class="form-actions">
        <a class="btn btn-info" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win03('./delivery_addr.php','delivadd','600','640'); return false;"><i class="icon-plus icon-white"></i>&nbsp;新しいお届け先を追加</a>
      </footer>
      <!--{/if}-->
      <!--{/if}-->
    </section>
  </article>
</section>