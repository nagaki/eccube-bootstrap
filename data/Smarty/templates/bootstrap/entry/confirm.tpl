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

<section class="page-body" id="entry-confirm-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="entry-confirm-contents">
    <p>下記の内容で送信してもよろしいでしょうか？<br>
      よろしければ、一番下の「会員登録をする」ボタンをクリックしてください。</p>
    <form name="form1" id="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="complete">
      <!--{foreach from=$arrForm key=key item=item}-->
      <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item.value|h}-->">
      <!--{/foreach}-->
      <table class="table table-striped">
        <col width="30%">
        <col width="70%">
        <tr>
          <th>お名前</th>
          <td>
            <!--{$arrForm.name01.value|h}-->&nbsp;
            <!--{$arrForm.name02.value|h}-->
          </td>
        </tr>
        <tr>
          <th>お名前(フリガナ)</th>
          <td>
            <!--{$arrForm.kana01.value|h}-->&nbsp;
            <!--{$arrForm.kana02.value|h}-->
          </td>
        </tr>
        <tr>
          <th>郵便番号</th>
          <td>
            〒<!--{$arrForm.zip01.value|h}--> - <!--{$arrForm.zip02.value|h}-->
          </td>
        </tr>
        <tr>
          <th>住所</th>
          <td>
            <!--{$arrPref[$arrForm.pref.value]|h}--><!--{$arrForm.addr01.value|h}--><!--{$arrForm.addr02.value|h}-->
          </td>
        </tr>
        <tr>
          <th>電話番号</th>
          <td>
            <!--{$arrForm.tel01.value|h}--> - <!--{$arrForm.tel02.value|h}--> - <!--{$arrForm.tel03.value|h}-->
          </td>
        </tr>
        <tr>
          <th>FAX</th>
          <td>
            <!--{if strlen($arrForm.fax01.value) > 0 && strlen($arrForm.fax02.value) > 0 && strlen($arrForm.fax03.value) > 0}-->
            <!--{$arrForm.fax01.value|h}--> - <!--{$arrForm.fax02.value|h}--> - <!--{$arrForm.fax03.value|h}-->
            <!--{else}-->
            未登録
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>メールアドレス</th>
          <td>
            <a href="mailto:<!--{$arrForm.email|escape:'hex'}-->"><!--{$arrForm.email.value|escape:'hexentity'}--></a>
          </td>
        </tr>
        <tr>
          <th>性別</th>
          <td>
            <!--{if $arrForm.sex.value eq 1}-->
            男性
            <!--{else}-->
            女性
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>職業</th>
          <td><!--{$arrJob[$arrForm.job.value]|default:"未登録"|h}--></td>
        </tr>
        <tr>
          <th>生年月日</th>
          <td>
            <!--{if strlen($arrForm.year.value) > 0 && strlen($arrForm.month.value) > 0 && strlen($arrForm.day.value) > 0}-->
            <!--{$arrForm.year.value|h}-->年<!--{$arrForm.month.value|h}-->月<!--{$arrForm.day.value|h}-->日
            <!--{else}-->
            未登録
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>希望するパスワード<br>
          </th>
          <td><!--{$passlen}--></td>
        </tr>
        <tr>
          <th>パスワードを忘れた時のヒント</th>
          <td>
            質問：<!--{$arrReminder[$arrForm.reminder.value]|h}--><br>
            答え：<!--{$arrForm.reminder_answer.value|h}-->
          </td>
        </tr>
        <tr>
          <th>メールマガジン送付について</th>
          <td>
            <!--{if $arrForm.mailmaga_flg.value eq 1}-->
            HTMLメール＋テキストメールを受け取る
            <!--{elseif $arrForm.mailmaga_flg.value eq 2}-->
            テキストメールを受け取る
            <!--{else}-->
            受け取らない
            <!--{/if}-->
          </td>
        </tr>
      </table>
      <div class="form-actions">
        <a class="btn" href="?"name="back" id="back">戻る</a>
        <button class="btn btn-primary" type="submit" name="send" id="send">会員登録をする</button>
      </div>
    </form>
  </article>
</section>
