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

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="お客様の声書き込み（入力ページ）"}-->

<section class="page-body" id="review-edit-area">
  <header>
    <h1>商品レビュー書き込み</h1>
  </header>
  <article id="review-edit-contents">
    <p class="windowtext">以下の商品について、お客様のご意見、ご感想をどしどしお寄せください。<br>ご入力後、一番下の「確認ページへ」ボタンをクリックしてください。</p>
    <div class="alert alert-info">
      <a class="close" data-dismiss="alert">&times;</a>
      <strong>必須項目</strong>&nbsp;太字の項目は必須項目です。
    </div>
    <form class="form-horizontal" name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="confirm">
      <input type="hidden" name="product_id" value="<!--{$arrForm.product_id|h}-->">

      <div class="control-group">
        <label class="control-label">商品名</label>
        <div class="controls"><h3><!--{$arrForm.name|h}--></h3></div>
      </div>
      <div class="control-group">
        <label class="control-label require-label" for="reviewer-nickname">投稿者名</label>
        <div class="controls"><span class="attention"><!--{$arrErr.reviewer_name}--></span><input id="reviewer-nickname" type="text" name="reviewer_name" value="<!--{$arrForm.reviewer_name|h}-->" class="required" maxlength="<!--{$smarty.const.STEXT_LEN}-->" autofocus></div>
      </div>
      <div class="control-group">
        <label class="control-label" for="reviewer-url">投稿者URL</label>
        <div class="controls"><span class="attention"><!--{$arrErr.reviewer_url}--></span><input id="reviewer-url" type="text" name="reviewer_url" value="<!--{$arrForm.reviewer_url|h}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->"></div>
      </div>
      <div class="control-group">
        <label class="control-label">性別</label>
        <div class="controls">
          <label class="inline radio" for="man"><input type="radio" name="sex" id="man" value="1" <!--{if $arrForm.sex eq 1}--> checked="checked"<!--{/if}-->>男性</label>
          <label class="inline radio" for="woman"><input type="radio" name="sex" id="woman" value="2" <!--{if $arrForm.sex eq 2}--> checked="checked"<!--{/if}-->>女性</label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label require-label" for="recommend-level">おすすめレベル</label>
        <div class="controls">
          <span class="attention"><!--{$arrErr.recommend_level}--></span>
          <select id="recommend-level" name="recommend_level" class="required">
            <option value="" selected="selected">選択してください</option>
            <!--{html_options options=$arrRECOMMEND selected=$arrForm.recommend_level}-->
          </select>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label require-label" for="recommend-title">タイトル</label>
        <div class="controls">
          <span class="attention"><!--{$arrErr.title}--></span>
          <input id="recommend-title" type="text" name="title" value="<!--{$arrForm.title|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="required">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label require-label" for="recommend-comment">コメント</label>
        <div class="controls">
          <span class="attention"><!--{$arrErr.comment}--></span>
          <textarea id="recommend-comment" name="comment" class="required"><!--{$arrForm.comment|h}--></textarea>
        </div>
      </div>
      <div class="form-actions">
        <button class="btn btn-primary" type="submit" name="conf" id="conf">確認ページヘ</button>
      </div>
    </form>
  </article>
</section>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
