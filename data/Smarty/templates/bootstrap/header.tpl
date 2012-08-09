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
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.    See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA    02111-1307, USA.
*}-->
<!--▼HEADER-->
<header id="global-header">
  <form class="form-horizontal" name="header_login_form" id="header_login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return fnCheckLogin('header_login_form')">
    <input type="hidden" name="mode" value="login">
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
    <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->">
    <section class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <h1 id="global-title"><a class="brand" href="<!--{$smarty.const.TOP_URLPATH}-->"><!--{$arrSiteInfo.shop_name|h}--></a></h1>
          <nav class="nav-collapse" id="header-nav">
            <ul class="nav pull-right">
              <!--{if count($smarty.session.cart) > 0}-->
              <li><a href="<!--{$smarty.const.CART_URLPATH}-->">カゴの中を見る</a></li>
              <!--{/if}-->
              <!--{if $smarty.session.customer.password|count_characters > 0}-->
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">ようこそ、<!--{$smarty.session.customer.name01}-->&nbsp;<!--{$smarty.session.customer.name02}-->&nbsp;様&nbsp;<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li class="nav-header">アカウントメニュー</li>
                  <li><a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php"><i class="icon-user"></i>&nbsp;マイページ</a></li>
                  <li><a href="<!--{$smarty.const.HTTPS_URL}-->mypage/favorite.php"><i class="icon-star"></i>&nbsp;お気に入り商品</a></li>
                  <li class="divider"></li>
                  <li><a href="<!--{$smarty.const.HTTPS_URL}-->mypage/change.php"><i class="icon-cog"></i>&nbsp;登録内容変更</a></li>
                  <li class="divider"></li>
                  <li><a href="#" onclick="fnFormModeSubmit('header_login_form', 'logout', '', ''); return false;"><i class="icon-lock"></i>&nbsp;ログアウト</a></li>
                </ul>
              </li>
              <!--{else}-->
              <li><a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">新規会員登録</a></li>
              <!--{if $arrPageLayout.HeaderInternalNavi|@count > 0}-->
              <li><a data-toggle="modal" href="#userLogin">ログイン</a></li>
              <!--{/if}-->
              <!--{/if}-->
            </ul>
          </nav>
        </div>
      </div>
    </section>
    <section id="site_description">
      <p>Twitter Bootstrapを使ったEC CUBEのデモサイト</p>
    </section>
    <!--{* ▼HeaderInternal COLUMN*}-->
    <!--{if $arrPageLayout.HeaderInternalNavi|@count > 0}-->
    <!--{* ▼上ナビ *}-->
    <!--{foreach key=HeaderInternalNaviKey item=HeaderInternalNaviItem from=$arrPageLayout.HeaderInternalNavi}-->
    <!-- ▼<!--{$HeaderInternalNaviItem.bloc_name}--> -->
    <!--{if $HeaderInternalNaviItem.php_path != ""}-->
    <!--{include_php file=$HeaderInternalNaviItem.php_path items=$HeaderInternalNaviItem}-->
    <!--{else}-->
    <!--{include file=$HeaderInternalNaviItem.tpl_path items=$HeaderInternalNaviItem}-->
    <!--{/if}-->
    <!-- ▲<!--{$HeaderInternalNaviItem.bloc_name}--> -->
    <!--{/foreach}-->
    <!--{* ▲上ナビ *}-->
    <!--{/if}-->
    <!--{* ▲HeaderInternal COLUMN*}-->
  </form>
</header>
<!--▲HEADER-->
