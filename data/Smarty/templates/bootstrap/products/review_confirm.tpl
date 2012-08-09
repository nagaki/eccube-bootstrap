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

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="お客様の声書き込み（確認ページ）"}-->

<section class="page-body" id="review-confirm-area">
  <header>
    <h1>レビュー書き込み</h1>
  </header>
  <article id="review-confirm-contents">
    <form name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="complete">
      <!--{foreach from=$arrForm key=key item=item}-->
      <!--{if $key ne "mode"}-->
      <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item|h}-->">
      <!--{/if}-->
      <!--{/foreach}-->
      <table class="table">
        <colgroup>
          <col width="30%">
          <col width="70%">
        </colgroup>
        <tbody>
          <tr>
            <th>商品名</th>
            <td><!--{$arrForm.name|h}--></td>
          </tr>
          <tr>
            <th>投稿者名</th>
            <td><!--{$arrForm.reviewer_name|h}--></td>
          </tr>
          <tr>
            <th>投稿者URL</th>
            <td><!--{$arrForm.reviewer_url|h}--></td>
          </tr>
          <tr>
            <th>性別</th>
            <td><!--{if $arrForm.sex eq 1}-->男性<!--{elseif $arrForm.sex eq 2}-->女性<!--{/if}--></td>
          </tr>
          <tr>
            <th>おすすめレベル</th>
            <td><span class="recommend_level"><!--{$arrRECOMMEND[$arrForm.recommend_level]}--></span></td>
          </tr>
          <tr>
            <th>タイトル</th>
            <td><!--{$arrForm.title|h}--></td>
          </tr>
          <tr>
            <th>コメント</th>
            <td><!--{$arrForm.comment|h|nl2br}--></td>
          </tr>
        </tbody>
      </table>
      <div class="form-actions">
        <button class="btn" type="submit" onclick="mode.value='return';" name="back" id="back">戻る</button>
        <button class="btn btn-primary" type="submit" name="send" id="send">レビューを投稿する</button>
      </div>
    </form>
  </article>
</section>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
