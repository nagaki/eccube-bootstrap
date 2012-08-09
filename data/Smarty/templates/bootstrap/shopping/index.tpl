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

<section class="page-body" id="shopping-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="shopping-contents">
    <form class="form-horizontal" name="member_form" id="member_form" method="post" action="?" onsubmit="return fnCheckLogin('member_form')">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="login">
      <section class="bloc-body" id="member-area">
        <header>
          <h1>会員登録がお済みのお客様</h1>
        </header>
        <p>会員の方は、登録時に入力されたメールアドレスとパスワードでログインしてください。</p>
        <div>
          <div class="control-group">
            <!--{assign var=key value="login_email"}-->
            <label class="control-label" for="cart-login-email">メールアドレス</label>
            <div class="controls">
              <!--{if strlen($arrErr[$key]) >= 1}--><span class="attention"><!--{$arrErr[$key]}--></span><!--{/if}-->
              <input id="cart-login-email" type="text" name="<!--{$key}-->" value="<!--{$tpl_login_email|h}-->" maxlength="<!--{$arrForm[$key].length}-->">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <!--{assign var=key value="login_memory"}-->
              <label class="checkbox" for="login_memory">
                <input type="checkbox" name="<!--{$key}-->" value="1"<!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory">メールアドレスをコンピューターに記憶させる
              </label>
            </div>
          </div>
          <div class="control-group">
            <!--{assign var=key value="login_pass"}-->
            <label class="control-label" for="cart-login-password">パスワード</label>
            <div class="controls">
              <span class="attention"><!--{$arrErr[$key]}--></span>
              <input id="cart-login-password" type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->">
            </div>
          </div>
          <div class="form-actions">
            <button class="btn btn-primary" type="submit" name="log" id="log">ログイン</button>
          </div>
        </div>
        <div class="alert alert-block">
          <strong>パスワードを忘れた方</strong>は<a href="<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="win01('<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','460'); return false;" target="_blank">こちら</a>からパスワードの再発行を行ってください。<br>
          <strong>メールアドレスを忘れた方</strong>は、お手数ですが、<a href="<!--{$smarty.const.ROOT_URLPATH}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせページ</a>からお問い合わせください。
        </div>
      </section>
    </form>
    <aside class="bloc-body" id="nomember-area">
      <header>
        <h1>まだ会員登録されていないお客様</h1>
      </header>
      <section id="nomember-regist">
        <h2><i class="icon-ok"></i>&nbsp;会員登録をする</h2>
        <p class="inputtext">会員登録をすると便利なMyページをご利用いただけます。<br>また、ログインするだけで、毎回お名前や住所などを入力することなくスムーズにお買い物をお楽しみいただけます。</p>
        <div class="inputbox">
          <div class="form-actions">
            <a class="btn btn-info" href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録をする</a>
          </div>
        </div>
      </section>
      <section id="nomember-noregist">
        <h2><i class="icon-remove"></i>&nbsp;会員登録をせずに購入手続きへ進む</h2>
        <p class="inputtext">会員登録をせずに購入手続きをされたい方は、下記よりお進みください。</p>
        <form name="member_form2" id="member_form2" method="post" action="?">
          <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
          <input type="hidden" name="mode" value="nonmember">
          <div class="inputbox">
            <div class="form-actions">
              <button class="btn btn-primary" type="submit" name="buystep" id="buystep">購入手続きへ</button>
            </div>
          </div>
        </form>
      </section>
    </aside>
  </article>
</section>