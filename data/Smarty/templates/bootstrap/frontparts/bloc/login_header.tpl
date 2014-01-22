<!--{if !$tpl_login}-->
<script type="text/javascript">
    $(function(){
        var $login_email = $('#header_login_area input[name=login_email]');

        if (!$login_email.val()) {
            $login_email
                .val('メールアドレス')
                .css('color', '#AAA');
        }

        $login_email
            .focus(function() {
                if ($(this).val() == 'メールアドレス') {
                    $(this)
                        .val('')
                        .css('color', '#000');
                }
            })
            .blur(function() {
                if (!$(this).val()) {
                    $(this)
                        .val('メールアドレス')
                        .css('color', '#AAA');
                }
            });

        $('#header_login_form').submit(function() {
            if (!$login_email.val()
                || $login_email.val() == 'メールアドレス') {
                if ($('#header_login_area input[name=login_pass]').val()) {
                    alert('メールアドレス/パスワードを入力して下さい。');
                }
                return false;
            }
            return true;
        });
    });
</script>
<!--{/if}-->
<!--{strip}-->
<li class="block_outer dropdown" id="header_login_area">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
    <!--{if $tpl_login}-->
    ようこそ <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span>
    <!--{else}-->
    アカウント
    <!--{/if}-->
    <b class="caret"></b>
  </a>
  <ul class="dropdown-menu">
    <!--{if $tpl_login}-->
      <li class="mypage"><a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">MYページ</a></li>
      <!--{if $smarty.const.USE_POINT !== false}-->
      <li>所持ポイント: <span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span></li>
      <!--{/if}-->
    <!--{/if}-->
    <li>
      <form name="header_login_form" id="header_login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if !$tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('header_login_form')"<!--{/if}--> role="form">
        <input type="hidden" name="mode" value="login" />
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
        <!--{if $tpl_login}-->
          <!--{if !$tpl_disable_logout}-->
          <li>
            <input type="submit" class="btn" value="サインアウト" onclick="eccube.fnFormModeSubmit('header_login_form', 'logout', '', ''); return false;">
          </li>
          <!--{/if}-->
        <!--{else}-->
          <div class="form-group">
            <label for="">メールアドレス</label>
            <input type="email" class="form-control" name="login_email" value="<!--{$tpl_login_email|h}-->" placeholder="example@example.com">
          </div>
          <div class="form-group">
            <label for="">パスワード</label>
            <input type="password" class="form-control" name="login_pass">
          </div>
          <div class="checkbox">
            <label for="header_login_memory">
              <input type="checkbox" name="login_memory" id="header_login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> />
              サインインしたままにする
            </label>
          </div>
          <input class="btn" type="submit" value="サインイン">
        <!--{/if}-->
      </form>
    </li>
    <!--{if !$tpl_login}-->
      <li>
        <a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">パスワードを忘れた方</a>
      </li>
      <li>
        <li class="entry"><a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録</a></li>
      </li>
    <!--{/if}-->
  </ul>
</li>
<!--{/strip}-->
