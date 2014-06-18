<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2013 LOCKON CO.,LTD. All Rights Reserved.
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

<!--{strip}-->
<div class="block_outer">
  <div id="login_area">
    <h2>ログイン</h2>
    <form name="login_form" id="login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if $tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('login_form')"<!--{/if}-->>
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
      <input type="hidden" name="mode" value="login" />
      <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
      <div class="block_body">
        <!--{if $tpl_login}-->
          <p>ようこそ<br />
            <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span><br />
            <!--{if $smarty.const.USE_POINT !== false}-->
            所持ポイント：<span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span>
            <!--{/if}-->
          </p>
          <!--{if !$tpl_disable_logout}-->
          <input type="submit" class="btn btn-default" value="ログアウト" onclick="eccube.fnFormModeSubmit('login_form', 'logout', '', ''); return false;" />
          <!--{/if}-->
        <!--{else}-->
          <div class="form-group">
            <label>メールアドレス</label>
            <input type="email" name="login_email" class="form-control" value="<!--{$tpl_login_email|h}-->" style="ime-mode: disabled;" />
          </div>
          <div class="checkbox">
            <label for="login_memory">
              <input type="checkbox" name="login_memory" id="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> />
              コンピューターに記憶する
            </label>
          </div>
          <div class="form-group">
            <label class="">パスワード</label>
            <input type="password" name="login_pass" class="form-control" />
            <p class="help-block">
              <a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">パスワードを忘れた方はこちら</a>
            </p>
          </div>
          <input type="submit" class="btn btn-default" value="ログイン" />
        <!--{/if}-->
      </div>
    </form>
  </div>
</div>
<!--{/strip}-->
