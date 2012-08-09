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

<section class="bloc-body well" id="guide-area">
  <!--{assign var=privacy value=$smarty.const.ROOT_URLPATH|cat:'guide/privacy.php'}-->
  <!--{strip}-->
  <ul class="nav nav-list">
    <li class="nav-header">サイトナビゲーション</li>
    <li<!--{if $tpl_page_category == "abouts"}--> class="active"<!--{/if}-->><a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/<!--{$smarty.const.DIR_INDEX_PATH}-->"><i class="icon-flag"></i>&nbsp;当サイトについて</a></li>
    <li<!--{if $tpl_page_category == "contact"}--> class="active"<!--{/if}-->><a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->"><i class="icon-question-sign"></i>&nbsp;お問い合わせ</a></li>
    <li<!--{if $tpl_page_category == "order"}--> class="active"<!--{/if}-->><a href="<!--{$smarty.const.ROOT_URLPATH}-->order/<!--{$smarty.const.DIR_INDEX_PATH}-->"><i class="icon-pencil"></i>&nbsp;特定商取引に関する表記</a></li>
    <li<!--{if $smarty.server.PHP_SELF == $privacy}--> class="active"<!--{/if}-->><a href="<!--{$smarty.const.ROOT_URLPATH}-->guide/privacy.php"><i class="icon-ok"></i>&nbsp;プライバシーポリシー</a></li>
  </ul>
  <!--{/strip}-->
</section>