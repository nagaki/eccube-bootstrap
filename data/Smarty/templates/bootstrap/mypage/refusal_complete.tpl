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

<section class="page-body mypage-body" id="mypage-refusal-complete-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <nav id="mypage-nav">
    <!--{include file=$tpl_navi}-->
  </nav>
  <article id="mypage-refusal-complete-contents">
    <section class="bloc-body">
      <header>
        <h1><!--{$tpl_subtitle|h}--></h1>
      </header>
      <div class="bloc-article">
        <div class="alert alert-success">
          退会手続きが完了いたしました。マイページをご利用いただき誠にありがとうございました。またのご利用を心よりお待ち申し上げます。
        </div>
      </div>
      <aside>
        <table class="table table-bordered">
          <thead>
            <tr>
              <th colspan="2" class="name"><!--{$arrSiteInfo.company_name|h}--></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>TEL</td>
              <td><!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}--></td>
            </tr>
            <!--{if $arrSiteInfo.business_hour != ""}-->
            <tr>
              <td>受付時間</td>
              <td><!--{$arrSiteInfo.business_hour}--></td>
            </tr>
            <!--{/if}-->
            <tr>
              <td>E-mail</td>
              <td><a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a></td>
            </tr>
          </tbody>
        </table>
      </aside>
    </section>
  </article>
</section>