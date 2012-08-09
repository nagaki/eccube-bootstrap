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

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(入力ページ)"}-->

<section class="page-body" id="makenew-password-area">
  <header>
    <h1>パスワードの再発行</h1>
  </header>
  <aritcle id="makenew-password">
    <p class="information">ご登録時のメールアドレスと、ご登録されたお名前を入力して「次へ」ボタンをクリックしてください。</p>
    <div class="alert alert-block">新しくパスワードを発行いたしますので、現在のパスワードはご利用できなくなります。ご了承下さい。</div>
    <form class="form-horizontal" action="?" method="post" name="form1">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="mail_check">
      <div class="control-group">
        <label class="control-label" for="entry-email">登録されているメールアドレス</label>
        <div class="controls">
          <span class="attention"><!--{$arrErr.email}--></span>
          <input id="entry-email" type="text" name="email" value="<!--{$arrForm.email|default:$tpl_login_email|h}-->">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="entry-surname">登録されているお名前</label>
        <div class="controls">
          <span class="attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--><!--{$errmsg}--></span>
          <input id="entry-surname" type="text" class="input-medium" name="name01" value="<!--{$arrForm.name01|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="姓">
          <input type="text" class="input-medium" name="name02" value="<!--{$arrForm.name02|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="名">
        </div>
      </div>
      <div class="form-actions">
        <button class="btn btn-primary" type="submit" name="next" id="next">次へ</button>
      </div>
    </form>
  </article>
</section>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->