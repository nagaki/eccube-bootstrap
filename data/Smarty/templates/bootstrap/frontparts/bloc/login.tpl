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

<section class="bloc-body well" id="login-area">
  <form name="login_form" id="login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return fnCheckLogin('login_form')">
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
    <input type="hidden" name="mode" value="login">
    <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->">
    <!--{if $tpl_login}-->
    <header>
      <h1>ようこそ</h1>
    </header>
    <div id="login-contents" class="bloc-article">
      <p><span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span><br>
        <!--{if $smarty.const.USE_POINT !== false}-->
        所持ポイント：<span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span>
        <!--{/if}-->
      </p>
    </div>
    <!--{if !$tpl_disable_logout}-->
    <footer>
      <div class="form-actions">
        <button class="btn" type="" onclick="fnFormModeSubmit('login_form', 'logout', '', ''); return false;"><i class="icon-lock"></i>&nbsp;ログアウト</button>
      </div>
    </footer>
    <!--{/if}-->
    <!--{else}-->
    <header>
      <h1>ログイン</h1>
    </header>
    <div id="login-contents" class="bloc-article">
      <div class="control-group formlist">
        <label class="control-label" for="bloc-login-email">メールアドレス</label>
        <div class="controls">
          <input id="bloc-login-email" type="text" name="login_email" class="input-medium required" value="<!--{$tpl_login_email|h}-->">
        </div>
      </div>
      <div class="control-group mini">
        <div class="controls">
          <label class="checkbox" for="login_memory">
            <input type="checkbox" name="login_memory" id="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}-->>コンピューターに記憶する
          </label>
        </div>
      </div>
      <div class="control-group formlist">
        <label class="control-label password" for="bloc-login-password">パスワード</label>
        <div class="controls">
          <input id="bloc-login-password" type="password" name="login_pass" class="input-medium required">
        </div>
      </div>
      <div class="control-group mini">
        <div class="controls">
          <a href="<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="win01('<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400'); return false;" target="_blank">パスワードを忘れた方はこちら</a>
        </div>
      </div>
    </div>
    <footer>
      <div class="form-actions">
        <button class="btn btn-primary" type="submit"><i class="icon-lock icon-white"></i>&nbsp;ログイン</button>
      </div>
    </footer>
    <!--{/if}-->
  </form>
</section>

