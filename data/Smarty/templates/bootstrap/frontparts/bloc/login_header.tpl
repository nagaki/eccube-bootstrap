<!--{if !$tpl_login}-->
<section class="modal fade hide" id="userLogin">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h1 class="modal-title">ログインフォーム</h1>
  </div>
  <div class="modal-body">
    <div class="block_outer">
      <div>
        <div class="control-group">
          <label class="control-label" for="login_email">メールアドレス</label>
          <div class="controls">
            <input type="text" id="login_email" name="login_email" value="<!--{$tpl_login_email|h}-->" class="required" autofocus>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <label class="checkbox" for="header_login_memory">
              <input type="checkbox" name="login_memory" id="header_login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}-->>記憶する
            </label>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="login_pass">パスワード</label>
          <div class="controls">
            <input type="password" id="login_pass" name="login_pass" class="required">
          </div>
        </div>
        <div class="control-group forgot">
          <div class="controls">
            <a href="<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="win01('<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400'); return false;" target="_blank">パスワードを忘れた方</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button class="btn btn-large btn-primary" type="submit"><i class="icon-lock icon-white"></i>&nbsp;ログイン</button>
  </div>
</section>
<!--{/if}-->
