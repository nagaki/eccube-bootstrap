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

<section class="page-body mypage-body" id="mypage-change-confirm-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <nav id="mypage-nav">
    <!--{include file=$tpl_navi}-->
  </nav>
  <article id="mypage-change-confirm-contents">
    <form name="form1" id="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="complete">
      <input type="hidden" name="customer_id" value="<!--{$arrForm.customer_id|h}-->">
      <!--{foreach from=$arrForm key=key item=item}-->
      <!--{if $key ne "mode" && $key ne "subm"}-->
      <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item|h}-->">
      <!--{/if}-->
      <!--{/foreach}-->
      <section class="bloc-body">
        <header>
          <h1><!--{$tpl_subtitle|h}--></h1>
        </header>
        <div class="bloc-article">
          <div class="alert alert-info">
            下記の内容で送信してもよろしいでしょうか？
          </div>
          <table class="table">
            <colgroup>
              <col width="30%">
              <col width="70%">
            </colgroup>
            <tbody>
              <tr>
                <th>お名前</th>
                <td><!--{$arrForm.name01|h}-->　<!--{$arrForm.name02|h}--></td>
              </tr>
              <tr>
                <th>お名前(フリガナ)</th>
                <td><!--{$arrForm.kana01|h}-->　<!--{$arrForm.kana02|h}--></td>
              </tr>
              <tr>
                <th>郵便番号</th>
                <td><!--{$arrForm.zip01}-->-<!--{$arrForm.zip02}--></td>
              </tr>
              <tr>
                <th>住所</th>
                <td><!--{$arrPref[$arrForm.pref]}--><!--{$arrForm.addr01|h}--><!--{$arrForm.addr02|h}--></td>
              </tr>
              <tr>
                <th>電話番号</th>
                <td><!--{$arrForm.tel01|h}-->-<!--{$arrForm.tel02}-->-<!--{$arrForm.tel03}--></td>
              </tr>
              <tr>
                <th>FAX</th>
                <td><!--{if strlen($arrForm.fax01) > 0}--><!--{$arrForm.fax01}-->-<!--{$arrForm.fax02}-->-<!--{$arrForm.fax03}--><!--{else}-->未登録<!--{/if}--></td>
              </tr>
              <tr>
                <th>メールアドレス</th>
                <td><a href="<!--{$arrForm.email|escape:'hex'}-->"><!--{$arrForm.email|escape:'hexentity'}--></a></td>
              </tr>
              <tr>
                <th>携帯メールアドレス</th>
                <td>
                  <!--{if strlen($arrForm.email_mobile) > 0}-->
                  <a href="<!--{$arrForm.email_mobile|escape:'hex'}-->"><!--{$arrForm.email_mobile|escape:'hexentity'}--></a>
                  <!--{else}-->
                  未登録
                  <!--{/if}-->
                </td>
              </tr>
              <tr>
                <th>性別</th>
                <td><!--{$arrSex[$arrForm.sex]}--></td>
              </tr>
              <tr>
                <th>職業</th>
                <td><!--{$arrJob[$arrForm.job]|default:"未登録"|h}--></td>
              </tr>
              <tr>
                <th>生年月日</th>
                <td><!--{if strlen($arrForm.year) > 0 && strlen($arrForm.month) > 0 && strlen($arrForm.day) > 0}--><!--{$arrForm.year|h}-->年<!--{$arrForm.month|h}-->月<!--{$arrForm.day|h}-->日<!--{else}-->未登録<!--{/if}--></td>
              </tr>
              <tr>
                <th>希望するパスワード<br>
                </th>
                <td><!--{$passlen}--></td>
              </tr>
              <tr>
                <th>パスワードを忘れた時のヒント</th>
                <td>質問：&nbsp;<!--{$arrReminder[$arrForm.reminder]|h}--><br>
                  答え：&nbsp;<!--{$arrForm.reminder_answer|h}--></td>
              </tr>
              <tr>
                <th>メールマガジン送付について</th>
                <td><!--{$arrMAILMAGATYPE[$arrForm.mailmaga_flg]}--></td>
              </tr>
            </tbody>
          </table>
        </div>
        <footer class="form-actions">
          <a class="btn" href="?" onclick="fnModeSubmit('return', '', ''); return false;" id="back">戻る</a>
          <button class="btn btn-primary" type="submit" name="complete" id="complete">送信する</button>
        </footer>
      </section>
    </form>
  </article>
</section>