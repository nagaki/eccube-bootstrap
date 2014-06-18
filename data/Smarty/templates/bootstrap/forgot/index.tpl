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

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(入力ページ)"}-->

<div id="window_area">
  <h2>パスワードの再発行</h2>
  <p>ご登録時のメールアドレスと、ご登録されたお名前を入力して「次へ」ボタンをクリックしてください。</p>
  <!--{if $errmsg}-->
  <div class="alert alert-warning">
    <!--{$errmsg}-->
  </div>
  <!--{/if}-->
  <form action="?" method="post" name="form1">
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
    <input type="hidden" name="mode" value="mail_check" />
    <div id="forgot">
      <div class="form-group<!--{if $arrErr.email}--> has-error<!--{/if}-->">
        <label class="">メールアドレス</label>
        <input class="form-control" type="text" name="email" value="<!--{$arrForm.email|default:$tpl_login_email|h}-->" placeholder="example@example.com" />
        <!--{if $arrErr.email}-->
        <p class="help-block">
          <span><!--{$arrErr.email}--></span>
        </p>
        <!--{/if}-->
      </div>
      <div class="form-group<!--{if $arrErr.name01 || $arrErr.name02}--> has-error<!--{/if}-->">
        <label class="">お名前</label>
        <div class="row">
          <div class="col-xs-6">
            <input class="form-control" type="text" name="name01" value="<!--{$arrForm.name01|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="姓" />
          </div>
          <div class="col-xs-6">
            <input class="form-control" type="text" name="name02" value="<!--{$arrForm.name02|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="名" />
          </div>
        </div>
        <!--{if $arrErr.name01 || $arrErr.name02}-->
        <p class="help-block">
          <span><!--{$arrErr.name01}--></span>
          <span><!--{$arrErr.name02}--></span>
        </p>
        <!--{/if}-->
      </div>
    </div>
    <div class="btn_area">
      <input class="btn btn-default" type="submit" value="次へ" name="next" id="next" />
    </div>
  </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
