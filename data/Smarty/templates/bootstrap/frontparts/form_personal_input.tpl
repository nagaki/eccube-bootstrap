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
<div class="alert alert-info">
  <a class="close" data-dismiss="alert">&times;</a>
  <strong>必須項目</strong>&nbsp;太字の項目は必須項目です。
</div>
<fieldset>
  <legend>お名前</legend>
  <div class="control-group">
    <label class="control-label require-label" for="customer-surname">お名前</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`name01"}-->
      <!--{assign var=key2 value="`$prefix`name02"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></div>
      <!--{/if}-->
      <input type="text" id="customer-surname" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="姓" x-autocompletetype="surname" autofocus>
      <input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="名" x-autocompletetype="given-name">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label require-label" for="customer-surname-kana">お名前(フリガナ)</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`kana01"}-->
      <!--{assign var=key2 value="`$prefix`kana02"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></div>
      <!--{/if}-->
      <input type="text" id="customer-surname-kana" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="セイ">
      <input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="メイ">
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>ご住所</legend>
  <div class="control-group">
    <label class="control-label require-label" for="customer-postal-code">郵便番号</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`zip01"}-->
      <!--{assign var=key2 value="`$prefix`zip02"}-->
      <!--{assign var=key3 value="`$prefix`pref"}-->
      <!--{assign var=key4 value="`$prefix`addr01"}-->
      <!--{assign var=key5 value="`$prefix`addr02"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></div>
      <!--{/if}-->
      <input type="text" id="customer-postal-code" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" maxlength="<!--{$smarty.const.ZIP01_LEN}-->" class="input-mini required">&nbsp;-&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.ZIP02_LEN}-->" class="input-mini required">
      <a href="http://search.post.japanpost.jp/zipcode/" target="_blank" id="search-postal-code" rel="popover" data-content="日本郵便のサイトに移動します。住所から郵便番号を検索できます。" data-original-title="郵便番号検索−日本郵便"><span class="mini">郵便番号検索</span></a>
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <a class="btn btn-mini btn-info" href="<!--{$smarty.const.ROOT_URLPATH}-->input_zip.php" onclick="fnCallAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', '<!--{$key1}-->', '<!--{$key2}-->', '<!--{$key3}-->', '<!--{$key4}-->'); return false;">住所自動入力</a>
      <span class="mini">郵便番号を入力後、クリックしてください。</span>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label require-label" for="customer-address">住所</label>
    <div class="controls">
      <!--{if $arrErr[$key3] || $arrErr[$key4] || $arrErr[$key5]}-->
      <div class="attention"><!--{$arrErr[$key3]}--><!--{$arrErr[$key4]}--><!--{$arrErr[$key5]}--></div>
      <!--{/if}-->
      <select id="customer-address" name="<!--{$key3}-->" class="input-block required" x-autocompletetype="state">
        <option value="" selected="selected">都道府県を選択</option>
        <!--{html_options options=$arrPref selected=$arrForm[$key3]}-->
      </select>
      <label class="inline require-label"><input type="text" name="<!--{$key4}-->" value="<!--{$arrForm[$key4]|h}-->" class="required" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->"> 市町村名</label>
      <label class="inline"><input type="text" name="<!--{$key5}-->" value="<!--{$arrForm[$key5]|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->"> 番地・マンション名</label>
      <p class="help-block">住所は2つに分けてご記入ください。マンション名は必ず記入してください。</p>
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>ご連絡先（お電話・FAX）</legend>
  <div class="control-group">
    <label class="control-label require-label" for="customer-tel">電話番号</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`tel01"}-->
      <!--{assign var=key2 value="`$prefix`tel02"}-->
      <!--{assign var=key3 value="`$prefix`tel03"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--><!--{$arrErr[$key3]}--></div>
      <!--{/if}-->
      <input id="customer-tel" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini required">&nbsp;-&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini required">&nbsp;-&nbsp;<input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini required">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="customer-fax">FAX</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`fax01"}-->
      <!--{assign var=key2 value="`$prefix`fax02"}-->
      <!--{assign var=key3 value="`$prefix`fax03"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--><!--{$arrErr[$key3]}--></div>
      <!--{/if}-->
      <input id="customer-fax" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini">&nbsp;-&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini">&nbsp;-&nbsp;<input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3]|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="input-mini">
    </div>
  </div>
</fieldset>
<!--{if $flgFields > 1}-->
<fieldset>
  <legend>ご連絡先（メールアドレス）</legend>
  <div class="control-group">
    <label class="control-label require-label" for="customer-email">メールアドレス</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`email"}-->
      <!--{assign var=key2 value="`$prefix`email02"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></div>
      <!--{/if}-->
      <input id="customer-email" type="email" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" class="input-block required" x-autocompletetype="email">
      <input type="email" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" x-autocompletetype="email" class="required">
      <span class="help-inline">確認のため2度入力してください。</span>
    </div>
  </div>
  <!--{if $emailMobile}-->
  <div class="control-group">
    <label class="control-label" for="customer-phonemail">携帯メールアドレス</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`email_mobile"}-->
      <!--{assign var=key2 value="`$prefix`email_mobile02"}-->
      <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
      <div class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></div>
      <!--{/if}-->
      <input id="customer-phonemail" type="email" name="<!--{$key1}-->" value="<!--{$arrForm[$key1]|h}-->" style="display:block; margin-bottom:9px;" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" class="top">
      <input type="email" name="<!--{$key2}-->" value="<!--{$arrForm[$key2]|h}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->">
      <span class="help-inline">確認のため2度入力してください。</span>
    </div>
  </div>
  <!--{/if}-->
</fieldset>
<fieldset>
  <legend>その他のお客様情報</legend>
  <div class="control-group">
    <label class="control-label require-label">性別</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`sex"}-->
      <!--{if $arrErr[$key1]}-->
      <div class="attention"><!--{$arrErr[$key1]}--></div>
      <!--{/if}-->
      <label for="man" class="radio inline" for="man"><input type="radio" id="man" name="<!--{$key1}-->" value="1" class="required"<!--{if $arrForm[$key1] eq 1}--> checked="checked" <!--{/if}-->>男性</label>
      <label for="woman" class="radio inline"for="woman"><input type="radio" id="woman" name="<!--{$key1}-->" value="2" class="required"<!--{if $arrForm[$key1] eq 2}--> checked="checked" <!--{/if}-->>女性</label>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="customer-works">職業</label>
    <div class="controls">
      <!--{assign var=key1 value="`$prefix`job"}-->
      <!--{if $arrErr[$key1]}-->
      <div class="attention"><!--{$arrErr[$key1]}--></div>
      <!--{/if}-->
      <select id="customer-works" name="<!--{$key1}-->">
        <option value="" selected="selected">選択してください</option>
        <!--{html_options options=$arrJob selected=$arrForm[$key1]}-->
      </select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="customer-birth">生年月日</label>
    <div class="controls">
      <!--{assign var=errBirth value="`$arrErr.year``$arrErr.month``$arrErr.day`"}-->
      <!--{if $errBirth}-->
      <div class="attention"><!--{$errBirth}--></div>
      <!--{/if}-->
      <select id="customer-birth" class="input-small" name="year">
        <!--{html_options options=$arrYear selected=$arrForm.year|default:''}-->
      </select>&nbsp;年
      <select class="input-mini" name="month">
        <!--{html_options options=$arrMonth selected=$arrForm.month|default:''}-->
      </select>&nbsp;月
      <select class="input-mini" name="day">
        <!--{html_options options=$arrDay selected=$arrForm.day|default:''}-->
      </select>&nbsp;日
    </div>
  </div>
</fieldset>
<!--{if $flgFields > 2}-->
<fieldset>
  <legend>ログイン情報</legend>
  <div class="control-group">
    <label class="control-label require-label" for="customer-password">希望するパスワード</label>
    <div class="controls">
      <!--{if $arrErr.password || $arrErr.password02}-->
      <div class="attention"><!--{$arrErr.password}--><!--{$arrErr.password02}--></div>
      <!--{/if}-->
      <input id="customer-password" type="password" name="password" value="<!--{$arrForm.password|h}-->" maxlength="<!--{$smarty.const.PASSWORD_MAX_LEN}-->" style="margin-bottom:9px;" class="required">
      <span class="help-inline">半角英数字<!--{$smarty.const.PASSWORD_MIN_LEN}-->～<!--{$smarty.const.PASSWORD_MAX_LEN}-->文字でお願いします。（記号不可）</span>
      <input type="password" name="password02" value="<!--{$arrForm.password02|h}-->" maxlength="<!--{$smarty.const.PASSWORD_MAX_LEN}-->" class="required">
      <span class="help-inline">確認のために2度入力してください。</span>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label require-label">パスワードを忘れた時のヒント</label>
    <div class="controls">
      <!--{if $arrErr.reminder || $arrErr.reminder_answer}-->
      <div class="attention"><!--{$arrErr.reminder}--><!--{$arrErr.reminder_answer}--></div>
      <!--{/if}-->
      <label class="inline" for="customer-question">質問
        <select id="customer-question" name="reminder" class="required">
          <option value="" selected="selected">選択してください</option>
          <!--{html_options options=$arrReminder selected=$arrForm.reminder}-->
        </select>
      </label>
      <label class="inline" for="customer-answer">答え
        <input id="customer-answer" type="text" name="reminder_answer" value="<!--{$arrForm.reminder_answer|h}-->" class="required">
      </label>
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>メールマガジン</legend>
  <div class="control-group">
    <label class="control-label require-label">メールマガジン送付について</label>
    <div class="controls">
      <!--{if $arrErr.mailmaga_flg}-->
      <div class="attention"><!--{$arrErr.mailmaga_flg}--></div>
      <!--{/if}-->
      <label class="radio" for="html"><input type="radio" name="mailmaga_flg" value="1" id="html" <!--{if $arrForm.mailmaga_flg eq 1}--> checked="checked" <!--{/if}--> class="required">HTMLメール＋テキストメールを受け取る</label>
      <label class="radio" for="text"><input type="radio" name="mailmaga_flg" value="2" id="text" <!--{if $arrForm.mailmaga_flg eq 2}--> checked="checked" <!--{/if}--> class="required">テキストメールを受け取る</label>
      <label class="radio" for="no"><input type="radio" name="mailmaga_flg" value="3" id="no" <!--{if $arrForm.mailmaga_flg eq 3}--> checked="checked" <!--{/if}--> class="required">受け取らない</label>
    </div>
  </div>
</fieldset>
<!--{/if}-->
<!--{/if}-->
