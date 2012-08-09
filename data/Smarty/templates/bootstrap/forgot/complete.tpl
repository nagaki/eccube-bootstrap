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

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(完了ページ)"}-->

<section class="page-body" class="forgot-password-area">
  <header>
    <h1>パスワードを忘れた方</h1>
  </header>
  <article id="forgot-password-contents">
    <p class="information">パスワードの発行が完了いたしました。ログインには下記のパスワードをご利用ください。</p>
    <div class="alert alert-success">
      パスワードを変更される際は、マイページの「会員登録内容変更」より変更ください。
    </div>
    <form class="form-horizontal" action="?" method="post" name="form1">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <!--{if $smarty.const.FORGOT_MAIL != 1}-->
      <div id="control-group">
        <label class="control-label" for="new-password">新しいパスワード</label>
        <div class="controls">
          <input id="new-password" type="text" value="<!--{$arrForm.new_password}-->">
        </div>
      </div>
      <!--{else}-->
      <p><span class="attention">新しいパスワードを、ご登録メールアドレスに送付致しました。</span></p>
      <!--{/if}-->
      <div class="form-actions">
        <a class="btn" href="javascript:window.close()" id="close">閉じる</a>
      </div>
    </form>
  </article>
</section>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
