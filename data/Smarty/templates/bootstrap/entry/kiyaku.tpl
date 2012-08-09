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

<section class="page-body" id="agreement-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="agreement-contents">
    <div class="alert">
      <strong>【重要】 </strong>会員登録をされる前に、下記ご利用規約をよくお読みください。
    </div>
    <p>規約には、本サービスを使用するに当たってのあなたの権利と義務が規定されております。<br>「同意して会員登録へ」ボタンをクリックすると、あなたが本規約の全ての条件に同意したことになります。</p>
    <form id="kiyaku-form" name="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <textarea name="textfield" readonly="readonly"><!--{$tpl_kiyaku_text|h}--></textarea>
      <div class="form-actions">
        <a class="btn" href="<!--{$smarty.const.TOP_URLPATH}-->">同意しない</a>
        <a class="btn btn-primary" href="<!--{$smarty.const.ENTRY_URL}-->">同意して登録する</a>
      </div>
    </form>
  </article>
</section>
