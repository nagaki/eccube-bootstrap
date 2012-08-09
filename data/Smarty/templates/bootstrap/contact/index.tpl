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

<section class="page-body" id="contact-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="contact-contents">
    <p>内容によっては回答をさしあげるのにお時間をいただくこともございます。<br>また、休業日は翌営業日以降の対応となりますのでご了承ください。</p>
    <div class="alert alert-info">
      <a class="close" data-dismiss="alert">&times;</a>
      <strong>必須項目</strong>&nbsp;太字の項目は必須項目です。
    </div>
    <form class="form-horizontal" name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="confirm">
      <fieldset>
        <legend>お名前</legend>
        <div class="control-group">
          <label class="control-label require-label" for="user-surname">お名前</label>
          <div class="controls">
            <input id="user-surname" type="text" name="name01" value="<!--{$arrForm.name01.value|h|default:$arrData.name01|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="姓" x-autocompletetype="surname">
            <input type="text" name="name02" value="<!--{$arrForm.name02.value|h|default:$arrData.name02|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="名" x-autocompletetype="given-name">
            <span class="help-inline attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label" for="user-surname-kana">お名前(フリガナ)</label>
          <div class="controls">
            <input id="user-surname-kana" type="text" name="kana01" value="<!--{$arrForm.kana01.value|h|default:$arrData.kana01|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="input-small required" placeholder="セイ">
            <input type="text" name="kana02" value="<!--{$arrForm.kana02.value|h|default:$arrData.kana02|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->"  class="input-small required" placeholder="メイ">
            <span class="help-inline attention"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend>ご住所</legend>
        <div class="control-group">
          <label class="control-label" for="user-postal-code">郵便番号</label>
          <div class="controls">
            <span class="attention"><!--{$arrErr.zip01}--><!--{$arrErr.zip02}--></span>
            <input id="user-postal-code" type="text" name="zip01" class="input-mini" value="<!--{$arrForm.zip01.value|h|default:$arrData.zip01|h}-->" maxlength="<!--{$smarty.const.ZIP01_LEN}-->">&nbsp;-&nbsp;<input type="text" name="zip02" class="input-mini" value="<!--{$arrForm.zip02.value|h|default:$arrData.zip02|h}-->" maxlength="<!--{$smarty.const.ZIP02_LEN}-->">
            <a href="http://search.post.japanpost.jp/zipcode/" target="_blank" id="search-postal-code" rel="popover" data-content="日本郵便のサイトに移動します。住所から郵便番号を検索できます。" data-original-title="郵便番号検索−日本郵便"><span class="mini">郵便番号検索</span></a>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <a class="btn btn-mini btn-info" href="javascript:fnCallAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', 'zip01', 'zip02', 'pref', 'addr01');">住所自動入力</a>
            <span class="help-inline">郵便番号を入力後、クリックしてください。</span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="user-address">住所</label>
          <div class="controls">
            <span class="attention"><!--{$arrErr.pref}--><!--{$arrErr.addr01}--><!--{$arrErr.addr02}--></span>
            <select id="user-address" name="pref" class="input-medium" style="display:block; margin-bottom:9px;">
              <option value="">都道府県を選択</option><!--{html_options options=$arrPref selected=$arrForm.pref.value|h|default:$arrData.pref|h}-->
            </select>
            <label class="inline"><input type="text" class="box380" name="addr01" value="<!--{$arrForm.addr01.value|h|default:$arrData.addr01|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->"> 市町村名</label>
            <label class="inline"><input type="text" class="box380" name="addr02" value="<!--{$arrForm.addr02.value|h|default:$arrData.addr02|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->"> 番地・マンション名</label>
            <span class="help-block">住所は2つに分けてご記入ください。マンション名は必ず記入してください。</span>
          </div>
        </div>   
      </fieldset>
      <fieldset>
        <legend>ご連絡先</legend>
        <div class="control-group">
          <label class="control-label" for="user-tel">電話番号</label>
          <div class="controls">
            <span class="attention"><!--{$arrErr.tel01}--><!--{$arrErr.tel02}--><!--{$arrErr.tel03}--></span>
            <input id="user-tel" type="text" class="input-mini" name="tel01" value="<!--{$arrForm.tel01.value|h|default:$arrData.tel01|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->">&nbsp;-&nbsp;
            <input type="text" class="input-mini" name="tel02" value="<!--{$arrForm.tel02.value|h|default:$arrData.tel02|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->">&nbsp;-&nbsp;
            <input type="text" class="input-mini" name="tel03" value="<!--{$arrForm.tel03.value|h|default:$arrData.tel03|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label require-label" for="user-email">メールアドレス</label>
          <div class="controls">
            <span class="attention"><!--{$arrErr.email}--><!--{$arrErr.email02}--></span>
            <input id="user-email" type="email" name="email" value="<!--{$arrForm.email.value|h|default:$arrData.email|h}-->" class="input-block required" x-autocompletetype="email">
            <!--{* ログインしていれば入力済みにする *}-->
            <!--{if $smarty.server.REQUEST_METHOD != 'POST' && $smarty.session.customer}-->
            <!--{assign var=email02 value=$arrData.email}-->
            <!--{/if}-->
            <input type="email" name="email02" value="<!--{$arrForm.email02.value|default:$email02|h}-->" class="required" x-autocompletetype="email">
            <span class="help-inline">確認のため2度入力してください。</span>
          </div>
        </div>   
      </fieldset>
      <fieldset>
        <legend>お問い合わせ内容</legend>
        <div class="control-group">
          <label class="control-label require-label" for="user-contact">お問い合わせ内容</label>
          <div class="controls">
            <span class="attention"><!--{$arrErr.contents}--></span>
            <textarea id="user-contact" name="contents" class="input-xxlarge required" placeholder="全角<!--{$smarty.const.MLTEXT_LEN}-->字以下で入力して下さい。"><!--{$arrForm.contents.value|h}--></textarea>
            <p class="help-block">ご注文に関するお問い合わせには、必ず「ご注文番号」をご記入くださいますようお願いいたします。</p>
          </div>
        </div>
      </fieldset>
      <div class="form-actions">
        <button class="btn btn-primary" type="submit" name="confirm">お問い合せ内容を確認する</button>
      </div>
    </form>
  </article>
</section>
