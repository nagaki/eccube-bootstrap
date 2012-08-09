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

<section class="page-body" id="entry-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <article id="entry-contents">
    <!--{if $smarty.const.CUSTOMER_CONFIRM_MAIL}-->
    <p>ご登録されますと、まずは仮会員となります。<br>入力されたメールアドレスに、ご連絡が届きますので、本会員になった上でお買い物をお楽しみください。</p>
    <!--{/if}-->
    <form class="form-horizontal" name="form1" id="form1" method="post" action="?">
      <fieldset>
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
        <input type="hidden" name="mode" value="confirm">
        <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=3 emailMobile=false prefix=""}-->
        <div class="form-actions">
          <button class="btn btn-primary" type="submit" name="confirm" id="confirm">確認ページヘ</button>
        </div>
      </fieldset>
    </form>
  </article>
</section>