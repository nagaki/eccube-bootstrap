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
    *
    * data/class/pages/guide/LC_Page_Guide_Privacy.php
    * include function action()
    * $masterData = new SC_DB_MasterData_Ex();
    * $this->arrPref = $masterData->getMasterData('mtb_pref');
    *
    */
*}-->

<section class="page-body" id="agreement-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <p><!--{if $arrSiteInfo.company_name != ''}--><!--{$arrSiteInfo.company_name|h}--><!--{/if}-->（以下「弊社」といいます。）は、<br> 個人情報の取り扱いについて規定を定め、適切な保護に努めてまいります。</p>
  <article id="agreement-contents">
    <section class="bloc-body">
      <header>
        <h1>個人情報保護方針</h1>
      </header>
      <div class="bloc-article">
        <ol type="1">
          <li>弊社は、個人情報保護法及び通信の秘密に係る電気通信事業法の規定その他の関係法令を遵守します。</li>
          <li>弊社では取り扱うすべての個人情報に対し、適切な管理を行います。</li>
          <li>弊社で業務に従事するすべての者は、各種個人情報を守り、その信頼に応えます。</li>
          <li>弊社は、不正アクセス、情報の紛失、破壊、改ざん及び漏えいなどを防ぐため、<br>必要かつ適切な安全管理措置を講じるとともにその改善に努めます。</li>
        </ol>
      </div>
    </section>
    <section class="bloc-body">
      <header>
        <h1>個人情報の取扱について</h1>
      </header>
      <div class="bloc-article">
        <dl>
          <dt>1.利用目的の特定</dt>
          <dd>弊社では、取得した個人情報を、サービスの提供・お問合せ対応に利用いたします。</dd>
          <dt>2.個人情報の開示</dt>
          <dd>弊社は、お客様から自己に関する個人情報の開示の請求があった場合は、本人確認を行ったうえで、これに応じます。<br>また、個人情報の内容の訂正等の申出があった場合も、速やかに対応いたします。</dd>
          <dt>3.個人情報の利用・提供</dt>
          <dd>サービスを提供するために必要な範囲でお客さまの個人情報を取得し、取得目的の範囲内で利用・提供を行います。</dd>
          <dt>4.第三者提供</dt>
          <dd>弊社は、個人情報を取得目的の範囲内で利用するとともに、適切な方法で管理し、個人情報の提供先とその利用目的を通知し承諾を得ることを行わない限り、第三者に個人情報を開示、提供しないものとします。 ただし、法令により開示を求められた場合、または、裁判所、警察等の公的機関から開示を求められた場合は、お客様の同意なく個人情報を開示することがあります。</dd>
        </dl>
      </div>
    </section>
    <section class="bloc-body">
      <header>
        <h1>個人情報に関するお問い合わせ</h1>
      </header>
      <div class="bloc-article">
        <p>弊社保有の個人情報の取り扱いに関するお問い合わせは、以下までお願いします。</p>
        <dl class="dl-horizontal">
        <!--{if $arrSiteInfo.company_name != ''}-->
          <dt>会社名</dt>
          <dd><!--{$arrSiteInfo.company_name|h}--></dd>
        <!--{/if}-->
        <!--{if $arrSiteInfo.law_manager != ''}-->
          <dt>担当</dt>
          <dd><!--{$arrSiteInfo.law_manager|h}--></dd>
        <!--{/if}-->
        <!--{if $arrSiteInfo.law_zip01 != ''}-->
          <dt>住所</dt>
          <dd>〒<!--{$arrSiteInfo.law_zip01|h}-->-<!--{$arrSiteInfo.law_zip02|h}--> <!--{$arrPref[$arrSiteInfo.law_pref]|h}--><!--{$arrSiteInfo.law_addr01|h}--><!--{$arrSiteInfo.law_addr02|h}--></dd>
        <!--{/if}-->
        <!--{if $arrSiteInfo.law_tel01 != ''}-->
          <dt>電話番号</dt>
          <dd><!--{$arrSiteInfo.law_tel01|h}-->-<!--{$arrSiteInfo.law_tel02|h}-->-<!--{$arrSiteInfo.law_tel03|h}--></dd>
        <!--{/if}-->
        <!--{if $arrSiteInfo.law_email != ''}-->
          <dt>メールアドレス</dt>
          <dd><!--{$arrSiteInfo.law_email|h}--></dd>
        <!--{/if}-->
        </dl>
      </div>
    </section>
  </article>
</section>
