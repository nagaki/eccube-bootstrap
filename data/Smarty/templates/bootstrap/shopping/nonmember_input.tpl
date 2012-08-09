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

<section class="page-body" id="shopping-nomember-area">
  <aside class="progress progress-striped active">
    <div id="shopping-flow-chart" class="bar" style="width: 25%;" rel="tooltip" title="お届け先の指定">STEP 1</div>
  </aside>
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="shopping-nomember-contents">
    <div class="alert alert-info">
      <a class="close" data-dismiss="alert">&times;</a>
      <strong>必須項目</strong>&nbsp;太字の項目は必須項目です。
    </div>
    <div class="information">
      <p>
        <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
        入力後、一番下の「上記のお届け先のみに送る」<br>
        または「複数のお届け先に送る」ボタンをクリックしてください。
        <!--{else}-->
        入力後、一番下の「次へ」ボタンをクリックしてください。
        <!--{/if}-->
      </p>
    </div>
    <form class="form-horizontal" name="form1" id="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="nonmember_confirm">
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
      <fieldset>
        <legend>お名前</legend>
        <div class="control-group">
          <label class="control-label require-label" for="guest-surname">お名前</label>
          <div class="controls">
            <!--{assign var=key1 value="order_name01"}-->
            <!--{assign var=key2 value="order_name02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-surname" class="input-medium required" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="姓" x-autocompletetype="surname" autofocus>
            <input class="input-medium required" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="名" x-autocompletetype="given-name">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label" for="guest-surname-kana">お名前(フリガナ)</label>
          <div class="controls">
            <!--{assign var=key1 value="order_kana01"}-->
            <!--{assign var=key2 value="order_kana02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-surname-kana" class="input-medium required" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="セイ">
            <input class="input-medium required" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="メイ">
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>ご住所</legend>
        <div class="control-group">
          <label class="control-label require-label" for="guest-postal-code">郵便番号</label>
          <div class="controls">
            <!--{assign var=key1 value="order_zip01"}-->
            <!--{assign var=key2 value="order_zip02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-postal-code" class="input-mini" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->">&nbsp;-&nbsp;<input class="input-mini" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->">　
            <a href="http://search.post.japanpost.jp/zipcode/" target="_blank"><span class="mini">郵便番号検索</span></a>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <a class="btn btn-mini btn-info" href="<!--{$smarty.const.ROOT_URLPATH}-->address/<!--{$smarty.const.DIR_INDEX_PATH}-->">住所自動入力</a>
            <span class="help-inline">郵便番号を入力後、クリックしてください。</span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label" for="guest-address">住所</label>
          <div class="controls">
            <!--{assign var=key value="order_pref"}-->
            <span class="attention"><!--{$arrErr.order_pref}--><!--{$arrErr.order_addr01}--><!--{$arrErr.order_addr02}--></span>
            <select id="guest-address" class="input-medium input-block required" name="<!--{$key}-->">
              <option value="">都道府県を選択</option>
              <!--{html_options options=$arrPref selected=$arrForm[$key].value}-->
            </select>
            <label class="inline"><!--{assign var=key value="order_addr01"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" class="required" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->"> 市町村名
            </label>
            <label class="inline"><!--{assign var=key value="order_addr02"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->"> 番地・マンション名
            </label>
            <span class="help-block">住所は2つに分けてご記入ください。マンション名は必ず記入してください。</span>
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>ご連絡先</legend>
        <div class="control-group">
          <label class="control-label require-label" for="guest-tel">電話番号</label>
          <div class="controls">
            <!--{assign var=key1 value="order_tel01"}-->
            <!--{assign var=key2 value="order_tel02"}-->
            <!--{assign var=key3 value="order_tel03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input id="guest-tel" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" class="input-mini required"> -
            <input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" class="input-mini required"> -
            <input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" class="input-mini required">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="guest-fax">FAX</label>
          <div class="controls">
            <!--{assign var=key1 value="order_fax01"}-->
            <!--{assign var=key2 value="order_fax02"}-->
            <!--{assign var=key3 value="order_fax03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input id="guest-fax" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" class="input-mini"> -
            <input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" class="input-mini"> -
            <input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" class="input-mini">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label" for="guest-email">メールアドレス</label>
          <div class="controls">
            <!--{assign var=key value="order_email"}-->
            <span class="attention"><!--{$arrErr[$key]}--></span>
            <input id="guest-email" type="email" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" class="input-block required" x-autocompletetype="email">
            <!--{assign var=key value="order_email02"}-->
            <span class="attention"><!--{$arrErr[$key]}--></span>
            <input type="email" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" class="required" x-autocompletetype="email">
            <span class="help-inline">確認のため2度入力してください。</span>
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>その他のお客様情報</legend>
        <div class="control-group">
          <label class="control-label require-label">性別</label>
          <div class="controls">
            <!--{assign var=key value="order_sex"}-->
            <!--{if $arrErr[$key]}-->
            <div class="attention"><!--{$arrErr[$key]}--></div>
            <!--{/if}-->
            <!--{html_radios name="$key" options=$arrSex selected=$arrForm[$key].value style="$err" label_ids=true}-->
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="guest-works">職業</label>
          <div class="controls">
            <!--{assign var=key value="order_job"}-->
            <!--{if $arrErr[$key]}-->
            <!--{assign var=err value="background-color: `$smarty.const.ERR_COLOR`"}-->
            <!--{/if}-->
            <select id="guest-works" name="<!--{$key}-->">
              <option value="">選択して下さい</option>
              <!--{html_options options=$arrJob selected=$arrForm[$key].value}-->
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="guest-birth">生年月日</label>
          <div class="controls">
            <!--{assign var=errBirth value="`$arrErr.year``$arrErr.month``$arrErr.day`"}-->
            <span class="attention"><!--{$errBirth}--></span>
            <select id="guest-birth" class="input-mini" name="year">
              <!--{html_options options=$arrYear selected=$arrForm.year.value|default:''}-->
            </select>年
            <select class="input-mini" name="month">
              <!--{html_options options=$arrMonth selected=$arrForm.month.value|default:''}-->
            </select>月
            <select class="input-mini" name="day">
              <!--{html_options options=$arrDay selected=$arrForm.day.value|default:''}-->
            </select>日
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>お届け先</legend>
        <div class="control-group">
          <div class="controls">
            <!--{assign var=key value="deliv_check"}-->
            <label class="checkbox" for="deliv_label">
              <input type="checkbox" name="<!--{$key}-->" value="1" onclick="fnCheckInputDeliv();" <!--{$arrForm[$key].value|sfGetChecked:1}--> id="deliv_label"><span>お届け先を指定</span>
            </label>
            <span class="help-block">上記に入力された住所と同一の場合は省略可能です。</span>
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>お名前</legend>
        <div class="control-group">
          <label class="control-label require-label-option" for="guest-surname">お名前</label>
          <div class="controls">
            <!--{assign var=key1 value="shipping_name01"}-->
            <!--{assign var=key2 value="shipping_name02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-surname" class="input-medium" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="姓">
            <input class="input-medium" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="名">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label-option" for="guest-surname-kana">お名前(フリガナ)</label>
          <div class="controls">
            <!--{assign var=key1 value="shipping_kana01"}-->
            <!--{assign var=key2 value="shipping_kana02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-surname-kana" class="input-medium" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" placeholder="セイ">
            <input class="input-medium" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" placeholder="メイ">
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>ご住所</legend>
        <div class="control-group">
          <label class="control-label require-label-option" for="guest-postalcode">郵便番号</label>
          <div class="controls">
            <!--{assign var=key1 value="shipping_zip01"}-->
            <!--{assign var=key2 value="shipping_zip02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <input id="guest-postalcode" class="input-mini" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->">&nbsp;-&nbsp;<input class="input-mini" type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->">　
            <a href="http://search.post.japanpost.jp/zipcode/" target="_blank" id="search-postal-code" rel="popover" data-content="日本郵便のサイトに移動します。住所から郵便番号を検索できます。" data-original-title="郵便番号検索−日本郵便"><span class="mini">郵便番号検索</span></a>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <a class="btn btn-mini btn-info" href="<!--{$smarty.const.ROOT_URLPATH}-->address/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="fnCallAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', 'shipping_zip01', 'shipping_zip02', 'shipping_pref', 'shipping_addr01'); return false;" target="_blank">住所自動入力</a>
            <span class="help-inline mini">郵便番号を入力後、クリックしてください。</span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label-option" for="guest-address">住所</label>
          <div class="controls">
            <!--{assign var=key value="shipping_pref"}-->
            <span class="attention"><!--{$arrErr.shipping_pref}--><!--{$arrErr.shipping_addr01}--><!--{$arrErr.shipping_addr02}--></span>
            <select id="guest-address" class="input-medium" name="<!--{$key}-->" style="display:block; margin-bottom:9px;">
              <option value="">都道府県を選択</option>
              <!--{html_options options=$arrPref selected=$arrForm[$key].value}-->
            </select>
            <label class="inline"><!--{assign var=key value="shipping_addr01"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->"> 市町村名
            </label>
            <label class="inline"><!--{assign var=key value="shipping_addr02"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|h}-->" maxlength="<!--{$arrForm[$key].length}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->"> 番地・マンション名
            </label>
            <span class="help-block">住所は2つに分けてご記入ください。マンション名は必ず記入してください。</span>
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>ご連絡先</legend>
        <div class="control-group">
          <label class="control-label require-label-option" for="guest-tel">電話番号</label>
          <div class="controls">
            <!--{assign var=key1 value="shipping_tel01"}-->
            <!--{assign var=key2 value="shipping_tel02"}-->
            <!--{assign var=key3 value="shipping_tel03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input id="guest-tel" type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|h}-->" maxlength="<!--{$arrForm[$key1].length}-->" class="input-mini"> -
            <input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|h}-->" maxlength="<!--{$arrForm[$key2].length}-->" class="input-mini"> -
            <input type="text" name="<!--{$key3}-->" value="<!--{$arrForm[$key3].value|h}-->" maxlength="<!--{$arrForm[$key3].length}-->" class="input-mini">
          </div>
        </div>
      </fieldset>
      <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
      <p>この商品を複数のお届け先に送りますか？</p>
      <!--{/if}-->
      <div class="form-actions">
        <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
        <a class="btn" href="javascript:;" onclick="fnModeSubmit('multiple', '', ''); return false" id="several">複数のお届け先に届ける</a>
        <button class="btn btn-primary" type="submit" name="singular" id="singular">上記のお届け先に届ける</button>
        <!--{else}-->
        <button class="btn" type="submit" name="singular" id="singular">次へ</button>
        <!--{/if}-->
      </div>
    </form>
  </article>
</section>