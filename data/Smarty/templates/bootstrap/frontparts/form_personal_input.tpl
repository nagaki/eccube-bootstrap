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

<!--{if $arrErr}-->
<div class="alert alert-warning">
  <p>入力内容を修正してください</p>
</div>
<!--{/if}-->

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

<fieldset>
  <legend>ご住所</legend>
  <!--{assign var=key6 value="`$prefix`country_id"}-->
  <!--{if !$smarty.const.FORM_COUNTRY_ENABLE}-->
  <input type="hidden" name="<!--{$key6}-->" value="<!--{$smarty.const.DEFAULT_COUNTRY_ID}-->" />
  <!--{else}-->
  <div class="form-group eb-form-require<!--{if $arrErr[$key6]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">国</label>
    <div class="col-sm-">
      <select class="form-control" name="<!--{$key6}-->">
        <option value="" selected="selected">国を選択</option>
        <!--{html_options options=$arrCountry selected=$arrForm[$key6].value|h|default:$smarty.const.DEFAULT_COUNTRY_ID}-->
      </select>
    </div>
    <!--{if $arrErr[$key6]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key6]}--></span>
    </p>
    <!--{/if}-->
  </div>
  <!--{assign var=key7 value="`$prefix`zipcode"}-->
  <div class="form-group <!--{if $arrErr[$key7]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">ZIP CODE</label>
    <div class="col-sm-">
      <input type="text" name="<!--{$key7}-->" value="<!--{$arrForm[$key7].value|h}-->" maxlength="<!--{$arrForm[$key7].length}-->" />
    </div>
    <!--{if $arrErr[$key7]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key7]}--></span>
    </p>
    <!--{/if}-->
  </div>
  <!--{/if}-->
  <!--{assign var=key1 value="`$prefix`zip01"}-->
  <!--{assign var=key2 value="`$prefix`zip02"}-->
  <div class="form-group<!--{if !$smarty.const.FORM_COUNTRY_ENABLE}--> eb-form-require<!--{/if}--><!--{if $arrErr[$key1] || $arrErr[$key2]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3" for="">郵便番号</label>
    <div class="col-sm-2">
      <input class="form-control eb-form-float-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="123" />
    </div>
    <div class="col-sm-2">
      <input class="form-control eb-form-float-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="4567" />
    </div>
    <!--{if $arrErr[$key1] || $arrErr[$key2]}-->
    <p class="help-block col-sm-9 col-sm-offset-3">
      <span><!--{$arrErr[$key1]}--></span>
      <span><!--{$arrErr[$key2]}--></span>
    </p>
    <!--{/if}-->
  </div>
  <div class="row">
    <p class="col-sm-9 col-sm-offset-3">
      <a href="http://search.post.japanpost.jp/zipcode/" target="_blank">
        郵便番号検索
      </a>
    </p>
  </div>
  <div class="row">
    <p class="col-sm-9 col-sm-offset-3">
      <a class="btn btn-default" href="<!--{$smarty.const.ROOT_URLPATH}-->input_zip.php" onclick="eccube.getAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', '<!--{$key1}-->', '<!--{$key2}-->', '<!--{$key3}-->', '<!--{$key4}-->'); return false;" target="_blank">住所自動入力</a>
      <span>郵便番号を入力後、クリックしてください。</span>
    </p>
  </div>
  <!--{assign var=key3 value="`$prefix`pref"}-->
  <div class="form-group eb-form-require<!--{if $arrErr[$key3]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3">都道府県名</label>
    <div class="col-sm-3">
      <select class="form-control" name="<!--{$key3}-->">
        <option value="" selected="selected">都道府県を選択</option>
        <!--{html_options options=$arrPref selected=$arrForm[$key3].value|h}-->
      </select>
    </div>
    <!--{if $arrErr[$key3]}-->
    <p class="help-block"><!--{$arrErr[$key3]}--></p>
    <!--{/if}-->
  </div>
  <!--{assign var=key4 value="`$prefix`addr01"}-->
  <div class="form-group eb-form-require<!--{if $arrErr[$key4]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3">市区町村名</label>
    <div class="col-sm-5">
      <input class="form-control" type="text" name="<!--{$key4}-->" value="<!--{$arrForm[$key4].value|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->" />
    </div>
    <!--{if $arrErr[$key4]}-->
    <p class="help-block"><!--{$arrErr[$key4]}--></p>
    <!--{/if}-->
  </div>
  <!--{assign var=key5 value="`$prefix`addr02"}-->
  <div class="form-group eb-form-require<!--{if $arrErr[$key5]}--> has-error<!--{/if}-->">
    <label class="control-label col-sm-3">番地・マンション名</label>
    <div class="col-sm-5">
      <input class="form-control" type="text" name="<!--{$key5}-->" value="<!--{$arrForm[$key5].value|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->" />
    </div>
    <!--{if $arrErr[$key5]}-->
    <p class="help-block"><!--{$arrErr[$key5]}--></p>
    <!--{/if}-->
  </div>
</fieldset>
<fieldset>
  <legend>ご連絡先</legend>
    <!--{assign var=key1 value="`$prefix`tel01"}-->
    <!--{assign var=key2 value="`$prefix`tel02"}-->
    <!--{assign var=key3 value="`$prefix`tel03"}-->
    <div class="form-group <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->has-error<!--{/if}-->">
      <label class="control-label col-sm-3" for="">電話番号</label>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="01" />
      </div>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="2345" />
      </div>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" placeholder="6789" />
      </div>
      <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
      <p class="help-block col-sm-9 col-sm-offset-3">
        <span><!--{$arrErr[$key1]}--></span>
        <span><!--{$arrErr[$key2]}--></span>
        <span><!--{$arrErr[$key3]}--></span>
      </p>
      <!--{/if}-->
    </div>
    <!--{assign var=key1 value="`$prefix`fax01"}-->
    <!--{assign var=key2 value="`$prefix`fax02"}-->
    <!--{assign var=key3 value="`$prefix`fax03"}-->
    <div class="form-group <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->has-error<!--{/if}-->">
      <label class="control-label col-sm-3" for="">FAX番号</label>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="01" />
      </div>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="2345" />
      </div>
      <div class="col-sm-2">
        <input class="form-control eb-form-float-control" type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" placeholder="6789" />
      </div>
      <!--{if $arrErr[$key1] || $arrErr[$key2] || $arrErr[$key3]}-->
      <p class="help-block col-sm-9 col-sm-offset-3">
        <span><!--{$arrErr[$key1]}--></span>
        <span><!--{$arrErr[$key2]}--></span>
        <span><!--{$arrErr[$key3]}--></span>
      </p>
      <!--{/if}-->
    </div>
    <!--{if $flgFields > 1}-->
      <!--{assign var=key1 value="`$prefix`email"}-->
      <!--{assign var=key2 value="`$prefix`email02"}-->
      <div class="form-group eb-form-require <!--{if $arrErr[$key1]}-->has-error<!--{/if}-->">
        <label class="control-label col-sm-3" for="">メールアドレス</label>
        <div class="col-sm-4">
          <input class="form-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" placeholder="example@example.com" />
        </div>
        <!--{if $arrErr[$key1]}-->
        <p class="help-block"><!--{$arrErr[$key1]}--></p>
        <!--{/if}-->
      </div>
      <div class="row">
        <p class="col-sm-9 col-sm-offset-3">
          メールアドレスは確認のため2度入力してください。
        </p>
      </div>
      <div class="form-group eb-form-require <!--{if $arrErr[$key2]}-->has-error<!--{/if}-->">
        <div class="col-sm-4 col-sm-offset-3">
          <input class="form-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" placeholder="example@example.com" />
        </div>
        <!--{if $arrErr[$key2]}-->
        <p class="help-block"><!--{$arrErr[$key2]}--></p>
        <!--{/if}-->
      </div>
      <!--{if $emailMobile}-->
        <!--{assign var=key1 value="`$prefix`email_mobile"}-->
        <!--{assign var=key2 value="`$prefix`email_mobile02"}-->
        <div class="form-group eb-form-require <!--{if $arrErr[$key1]}-->has-error<!--{/if}-->">
          <label class="control-label col-sm-3" for="">携帯メールアドレス</label>
          <div class="col-sm-4">
            <input class="form-control" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" />
          </div>
          <!--{if $arrErr[$key1]}-->
          <p class="help-block"><!--{$arrErr[$key1]}--></p>
          <!--{/if}-->
        </div>
        <div class="row">
          <p class="col-sm-9 col-sm-offset-3">
            メールアドレスは確認のため2度入力してください。
          </p>
        </div>
        <div class="form-group eb-form-require <!--{if $arrErr[$key2]}-->has-error<!--{/if}-->">
          <div class="col-sm-4 col-sm-offset-3">
            <input class="form-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" />
          </div>
          <!--{if $arrErr[$key2]}-->
          <p class="help-block"><!--{$arrErr[$key2]}--></p>
          <!--{/if}-->
        </div>
      <!--{/if}-->
    <!--{/if}-->
  </fieldset>

  <!--{if $flgFields > 1}-->
  <fieldset>
    <legend>プロフィール</legend>
    <!--{assign var=key1 value="`$prefix`sex"}-->
    <div class="form-group eb-form-require<!--{if $arrErr[$key1]}--> has-error<!--{/if}-->">
      <label class="control-label col-sm-3" for="">性別</label>
      <div class="col-sm-9 eb-form-radios">
        <!--{html_radios name=$key1 options=$arrSex selected=$arrForm[$key1].value separator=''}-->
      </div>
      <!--{if $arrErr[$key1]}-->
      <p class="help-block col-sm-9 col-sm-offset-3">
        <span><!--{$arrErr[$key1]}--></span>
      </p>
      <!--{/if}-->
    </div>
    <!--{assign var=key1 value="`$prefix`job"}-->
    <div class="form-group <!--{if $arrErr[$key1]}--> has-error<!--{/if}-->">
      <label class="control-label col-sm-3" for="">ご職業</label>
      <div class="col-sm-5">
        <select class="form-control" name="<!--{$key1}-->">
          <option value="" selected="selected">選択してください</option>
          <!--{html_options options=$arrJob selected=$arrForm[$key1].value}-->
        </select>
      </div>
      <!--{if $arrErr[$key1]}-->
      <p class="help-block col-sm-9 col-sm-offset-3">
        <span><!--{$arrErr[$key1]}--></span>
      </p>
      <!--{/if}-->
    </div>
    <!--{assign var=key1 value="`$prefix`year"}-->
    <!--{assign var=key2 value="`$prefix`month"}-->
    <!--{assign var=key3 value="`$prefix`day"}-->
    <!--{assign var=errBirth value="`$arrErr.$key1``$arrErr.$key2``$arrErr.$key3`"}-->
    <div class="form-group <!--{if $errBirth}-->has-error<!--{/if}-->">
      <label class="control-label col-sm-3" for="">生年月日</label>
      <div class="col-sm-2">
        <select class="form-control eb-form-float-control" name="<!--{$key1}-->">
          <!--{html_options options=$arrYear selected=$arrForm[$key1].value|default:''}-->
        </select>
      </div>
      <div class="col-sm-2">
        <select class="form-control eb-form-float-control" name="<!--{$key2}-->">
          <!--{html_options options=$arrMonth selected=$arrForm[$key2].value|default:''}-->
        </select>
      </div>
      <div class="col-sm-2">
        <select class="form-control eb-form-float-control" name="<!--{$key3}-->">
          <!--{html_options options=$arrDay selected=$arrForm[$key3].value|default:''}-->
        </select>
      </div>
      <!--{if $errBirth}-->
      <p class="help-block col-sm-9 col-sm-offset-3">
        <span><!--{$errBirth}--></span>
      </p>
      <!--{/if}-->
    </div>
  </fieldset>
  <!--{/if}-->

  <!--{if $flgFields > 2}-->

    <fieldset>
      <legend>セキュリティ</legend>
      <!--{assign var=key1 value="`$prefix`password"}-->
      <!--{assign var=key2 value="`$prefix`password02"}-->
      <div class="row">
        <p class="col-sm-9 col-sm-offset-3">
          半角英数字<!--{$smarty.const.PASSWORD_MIN_LEN}-->～<!--{$smarty.const.PASSWORD_MAX_LEN}-->文字でお願いします。（記号可）
        </p>
      </div>
      <div class="form-group eb-form-require <!--{if $arrErr[$key1]}-->has-error<!--{/if}-->">
        <label class="control-label col-sm-3" for="">ご希望のパスワード</label>
        <div class="col-sm-4">
          <input class="form-control" type="password" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" />
        </div>
        <!--{if $arrErr[$key1]}-->
        <p class="help-block"><!--{$arrErr[$key1]}--></p>
        <!--{/if}-->
      </div>
      <div class="row">
        <p class="col-sm-9 col-sm-offset-3">
          パスワードは確認のため2度入力してください。
        </p>
      </div>
      <div class="form-group eb-form-require <!--{if $arrErr[$key2]}-->has-error<!--{/if}-->">
        <div class="col-sm-4 col-sm-offset-3">
          <input class="form-control" type="password" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" />
        </div>
        <!--{if $arrErr[$key2]}-->
        <p class="help-block"><!--{$arrErr[$key2]}--></p>
        <!--{/if}-->
      </div>
      <div class="row">
        <p class="col-sm-9 col-sm-offset-3">
          パスワードのヒント
        </p>
      </div>
      <!--{assign var=key1 value="`$prefix`reminder"}-->
      <div class="form-group eb-form-require <!--{if $arrErr[$key1]}-->has-error<!--{/if}-->">
        <label class="control-label col-sm-3" for="">質問</label>
        <div class="col-sm-4">
          <select class="form-control" name="<!--{$key1}-->">
            <option value="" selected="selected">選択してください</option>
            <!--{html_options options=$arrReminder selected=$arrForm[$key1].value}-->
          </select>
        </div>
        <!--{if $arrErr[$key1]}-->
        <p class="help-block"><!--{$arrErr[$key1]}--></p>
        <!--{/if}-->
      </div>
      <!--{assign var=key2 value="`$prefix`reminder_answer"}-->
      <div class="form-group eb-form-require <!--{if $arrErr[$key2]}-->has-error<!--{/if}-->">
        <label class="control-label col-sm-3" for="">答え</label>
        <div class="col-sm-4">
          <input class="form-control" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" />
        </div>
        <!--{if $arrErr[$key2]}-->
        <p class="help-block"><!--{$arrErr[$key2]}--></p>
        <!--{/if}-->
      </div>
    </fieldset>

    <fieldset>
      <legend>その他</legend>
      <!--{assign var=key1 value="`$prefix`mailmaga_flg"}-->
      <div class="form-group eb-form-require<!--{if $arrErr[$key1]}--> has-error<!--{/if}-->">
        <label class="control-label col-sm-3" for="">メルマガ送付</label>
        <div class="col-sm-9 eb-form-radios">
          <!--{html_radios name=$key1 options=$arrMAILMAGATYPE selected=$arrForm[$key1].value separator=''}-->
        </div>
        <!--{if $arrErr[$key1]}-->
        <p class="help-block col-sm-9 col-sm-offset-3">
          <span><!--{$arrErr[$key1]}--></span>
        </p>
        <!--{/if}-->
      </div>
    </fieldset>

  <!--{/if}-->

<!--{/strip}-->
