<!--{*
/*
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
 */
*}-->

<!--{strip}-->

<div class="form-group eb-form-require<!--{if $arrErr}--> has-error<!--{/if}-->">
  <label class="control-label col-sm-3" for=""></label>
  <div class="col-sm-">
  </div>
  <!--{if $arrErr}-->
  <p class="help-block col-sm-9 col-sm-offset-3">
    <span><!--{$arrErr}--></span>
  </p>
  <!--{/if}-->
</div>

<fieldset>
  <legend>お名前</legend>
  <!--{assign var=key1 value="`$prefix`name01"}-->
  <!--{assign var=key2 value="`$prefix`name02"}-->
  <div class="form-group eb-form-require<!--{if $arrErr[$key1] || $arrErr[$key2]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">お名前</label>
    <div class="col-sm-3">
      <input class="form-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="姓" />
    </div>
    <div class="col-sm-3">
      <input class="form-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="名" />
    </div>
    <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key1]}--></span>
      <span><!--{$arrErr[$key2]}--></span>
    </p>
    <!--{/if}-->
  </div>
  <!--{assign var=key1 value="`$prefix`kana01"}-->
  <!--{assign var=key2 value="`$prefix`kana02"}-->
  <div class="form-group<!--{if !$smarty.const.FORM_COUNTRY_ENABLE}--> eb-form-require<!--{/if}--><!--{if $arrErr[$key1] || $arrErr[$key2]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">お名前(フリガナ)</label>
    <div class="col-sm-3">
      <input class="form-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="セイ" />
    </div>
    <div class="col-sm-3">
      <input class="form-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="メイ" />
    </div>
    <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key1]}--></span>
      <span><!--{$arrErr[$key2]}--></span>
    </p>
    <!--{/if}-->
  </div>
  <!--{assign var=key1 value="`$prefix`company_name"}-->
  <div class="form-group<!--{if $arrErr[$key1]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">会社名</label>
    <div class="col-sm-5">
      <input class="form-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" />
    </div>
    <!--{if $arrErr[$key1]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key1]}--></span>
    </p>
    <!--{/if}-->
  </div>
</fieldset>







<!--{assign var=key1 value="`$prefix`zip01"}-->
<!--{assign var=key2 value="`$prefix`zip02"}-->
<!--{assign var=key3 value="`$prefix`pref"}-->
<!--{assign var=key4 value="`$prefix`addr01"}-->
<!--{assign var=key5 value="`$prefix`addr02"}-->
<!--{assign var=key6 value="`$prefix`country_id"}-->
<!--{assign var=key7 value="`$prefix`zipcode"}-->
<!--{if !$smarty.const.FORM_COUNTRY_ENABLE}-->
<input type="hidden" name="<!--{$key6}-->" value="<!--{$smarty.const.DEFAULT_COUNTRY_ID}-->" />
<!--{else}-->
国※
<!--{if $arrErr[$key6]}-->
<!--{$arrErr[$key6]}-->
<!--{/if}-->
<select name="<!--{$key6}-->" style="<!--{$arrErr[$key6]|sfGetErrorColor}-->">
  <option value="" selected="selected">国を選択</option>
  <!--{html_options options=$arrCountry selected=$arrForm[$key6].value|h|default:$smarty.const.DEFAULT_COUNTRY_ID}-->
</select>
ZIP CODE
<!--{if $arrErr[$key7]}-->
<!--{$arrErr[$key7]}-->
<!--{/if}-->
<input type="text" name="<!--{$key7}-->" value="<!--{$arrForm[$key7].value|h}-->" maxlength="<!--{$arrForm[$key7].length}-->" class="box120" style="<!--{$arrErr[$key7]|sfGetErrorColor}-->; ime-mode: disabled;" />
<!--{/if}-->
郵便番号<!--{if !$smarty.const.FORM_COUNTRY_ENABLE}-->※<!--{/if}-->
<!--{if $arrErr[$key1] || $arrErr[$key2]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}-->
<!--{/if}-->
〒<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />-<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />
<a href="http://search.post.japanpost.jp/zipcode/" target="_blank">郵便番号検索</a>


<a href="<!--{$smarty.const.ROOT_URLPATH}-->input_zip.php" onclick="eccube.getAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', '<!--{$key1}-->', '<!--{$key2}-->', '<!--{$key3}-->', '<!--{$key4}-->'); return false;" target="_blank">住所自動入力</a>
郵便番号を入力後、クリックしてください。

住所※
<!--{if $arrErr[$key3] || $arrErr[$key4] || $arrErr[$key5]}-->
<!--{$arrErr[$key3]}--><!--{$arrErr[$key4]}--><!--{$arrErr[$key5]}-->
<!--{/if}-->
<select name="<!--{$key3}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->">
  <option value="" selected="selected">都道府県を選択</option>
  <!--{html_options options=$arrPref selected=$arrForm[$key3].value|h}-->
</select>
<input type="text" name="<!--{$key4}-->" value="<!--{$arrForm[$key4].value|h}-->" class="box300" style="<!--{$arrErr[$key4]|sfGetErrorColor}-->; ime-mode: active;" />
<!--{$smarty.const.SAMPLE_ADDRESS1}-->
<input type="text" name="<!--{$key5}-->" value="<!--{$arrForm[$key5].value|h}-->" class="box300" style="<!--{$arrErr[$key5]|sfGetErrorColor}-->; ime-mode: active;" />
<!--{$smarty.const.SAMPLE_ADDRESS2}-->
住所は2つに分けてご記入ください。マンション名は必ず記入してください。
電話番号※

<!--{assign var=key1 value="`$prefix`tel01"}-->
<!--{assign var=key2 value="`$prefix`tel02"}-->
<!--{assign var=key3 value="`$prefix`tel03"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--><!--{$arrErr[$key3]}-->
<!--{/if}-->
<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />-<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />-<input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />
FAX
<!--{assign var=key1 value="`$prefix`fax01"}-->
<!--{assign var=key2 value="`$prefix`fax02"}-->
<!--{assign var=key3 value="`$prefix`fax03"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--><!--{$arrErr[$key3]}-->
<!--{/if}-->
<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />-<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />-<input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" />
<!--{if $flgFields > 1}-->
メールアドレス※
<!--{assign var=key1 value="`$prefix`email"}-->
<!--{assign var=key2 value="`$prefix`email02"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}-->
<!--{/if}-->
<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->; ime-mode: disabled;" class="box300 top" />
<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" style="<!--{$arrErr[$key1]|cat:$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: disabled;" class="box300" />
確認のため2度入力してください。
<!--{if $emailMobile}-->
携帯メールアドレス
<!--{assign var=key1 value="`$prefix`email_mobile"}-->
<!--{assign var=key2 value="`$prefix`email_mobile02"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}-->
<!--{/if}-->
<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->; ime-mode: disabled;" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" class="box300 top" />
<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" style="<!--{$arrErr[$key1]|cat:$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: disabled;" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" class="box300" />
確認のため2度入力してください。
<!--{/if}-->
性別※
<!--{assign var=key1 value="`$prefix`sex"}-->
<!--{if $arrErr[$key1]}-->
<!--{$arrErr[$key1]}-->
<!--{/if}-->
<!--{html_radios name=$key1 options=$arrSex selected=$arrForm[$key1].value separator=''}-->

職業
<!--{assign var=key1 value="`$prefix`job"}-->
<!--{if $arrErr[$key1]}-->
<!--{$arrErr[$key1]}-->
<!--{/if}-->
<select name="<!--{$key1}-->">
  <option value="" selected="selected">選択してください</option>
  <!--{html_options options=$arrJob selected=$arrForm[$key1].value}-->
</select>
生年月日
<!--{assign var=key1 value="`$prefix`year"}-->
<!--{assign var=key2 value="`$prefix`month"}-->
<!--{assign var=key3 value="`$prefix`day"}-->
<!--{assign var=errBirth value="`$arrErr.$key1``$arrErr.$key2``$arrErr.$key3`"}-->
<!--{if $errBirth}-->
<!--{$errBirth}-->
<!--{/if}-->
<select name="<!--{$key1}-->" style="<!--{$errBirth|sfGetErrorColor}-->">
  <!--{html_options options=$arrYear selected=$arrForm[$key1].value|default:''}-->
</select>年
<select name="<!--{$key2}-->" style="<!--{$errBirth|sfGetErrorColor}-->">
  <!--{html_options options=$arrMonth selected=$arrForm[$key2].value|default:''}-->
</select>月
<select name="<!--{$key3}-->" style="<!--{$errBirth|sfGetErrorColor}-->">
  <!--{html_options options=$arrDay selected=$arrForm[$key3].value|default:''}-->
</select>日
<!--{if $flgFields > 2}-->

希望するパスワード※
<!--{assign var=key1 value="`$prefix`password"}-->
<!--{assign var=key2 value="`$prefix`password02"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}-->
<!--{/if}-->
<input type="password" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" class="box120" />
半角英数字<!--{$smarty.const.PASSWORD_MIN_LEN}-->～<!--{$smarty.const.PASSWORD_MAX_LEN}-->文字でお願いします。（記号可）
<input type="password" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key1]|cat:$arrErr[$key2]|sfGetErrorColor}-->" class="box120" />
確認のために2度入力してください。
パスワードを忘れた時のヒント※
<!--{assign var=key1 value="`$prefix`reminder"}-->
<!--{assign var=key2 value="`$prefix`reminder_answer"}-->
<!--{if $arrErr[$key1] || $arrErr[$key2]}-->
<!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}-->
<!--{/if}-->
質問：
<select name="<!--{$key1}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->">
  <option value="" selected="selected">選択してください</option>
  <!--{html_options options=$arrReminder selected=$arrForm[$key1].value}-->
</select>

答え：<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->; ime-mode: active;" class="box260" />
メールマガジン送付について※
<!--{assign var=key1 value="`$prefix`mailmaga_flg"}-->
<!--{if $arrErr[$key1]}-->
<!--{$arrErr[$key1]}-->
<!--{/if}-->
<!--{html_radios name=$key1 options=$arrMAILMAGATYPE selected=$arrForm[$key1].value separator=''}-->

<!--{/if}-->
<!--{/if}-->
<!--{/strip}-->
