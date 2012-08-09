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

<section class="page-body mypage-body" id="mypage-login-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="mypage-login-contents">
    <form class="form-horizontal" name="login_mypage" id="login_mypage" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return fnCheckLogin('login_mypage')">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="login">
      <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->">
      <section class="bloc-body">
        <header>
          <h1>会員登録がお済みのお客様</h1>
        </header>
        <div class="bloc-article">
          <p class="inputtext">会員の方は、登録時に入力されたメールアドレスとパスワードでログインしてください。</p>
          <div class="control-group">
            <!--{assign var=key value="login_email"}-->
            <label class="control-label" for="mypage-login-email">メールアドレス</label>
            <div class="controls">
              <span class="attention"><!--{$arrErr[$key]}--></span>
              <input id="mypage-login-email" type="text" name="<!--{$key}-->" value="<!--{$tpl_login_email|h}-->" maxlength="<!--{$arrForm[$key].length}-->">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <label class="checkbox inline" for="login_memory">
                <!--{assign var=key value="login_memory"}-->
                <input type="checkbox" name="<!--{$key}-->" value="1"<!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory">メールアドレスをコンピューターに記憶させる
              </label>
            </div>
          </div>
          <div class="control-group">
            <!--{assign var=key value="login_pass"}-->
            <label class="control-label" for="mypage-login-password">パスワード</label>
            <div class="controls">
              <span class="attention"><!--{$arrErr[$key]}--></span>
              <input id="mypage-login-password" type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->">
            </div>
          </div>
        </div>
        <footer class="form-actions">
          <button class="btn btn-primary" type="submit" name="log" id="log">ログイン</button>
        </footer>
      </section>
    </form>
    <aside class="alert alert-block">
      パスワードを忘れた方は<a href="<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="win01('<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','460'); return false;" target="_blank">こちら</a>からパスワードの再発行を行ってください。<br>メールアドレスを忘れた方は、お手数ですが、<a href="<!--{$smarty.const.ROOT_URLPATH}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせページ</a>からお問い合わせください。
    </aside>
    <aside>
      <h3>会員登録されていないお客様</h3>
      <p>会員登録をすると便利なマイページをご利用いただけます。<br>また、ログインするだけで、毎回お名前や住所などを入力することなくスムーズにお買い物をお楽しみいただけます。</p>
      <div class="form-actions">
        <a class="btn btn-success" href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録をする</a>
      </div>
    </aside>
  </article>
</section>