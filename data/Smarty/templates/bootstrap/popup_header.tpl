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
<!DOCTYPE html>
<html lang="ja">
  <head>

    <meta charset="<!--{$smarty.const.CHAR_CODE}-->">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">

    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/bootstrap.min.css" media="all">
    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/style.css" media="all">
    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/bootstrap-responsive.min.css" media="all">
    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/style-responsive.css" media="all">

    <title><!--{$subtitle|h}--> | <!--{$arrSiteInfo.shop_name}--></title>

    <link rel="shortcut icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico">

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.11.1.min.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-2.1.1.min.js"></script>
    <!--<![endif]-->
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.js"></script>
    <!-- #2342 次期メジャーバージョン(2.14)にてeccube.legacy.jsは削除予定.モジュール、プラグインの互換性を考慮して2.13では残します. -->
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.colorbox/jquery.colorbox-min.js"></script>

    <script src="<!--{$TPL_URLPATH}-->js/bootstrap.min.js"></script>
    <script src="<!--{$TPL_URLPATH}-->js/jquery.common.js"></script>

    <script>
    <!--{$tpl_javascript}-->
    jQuery(function($){
      <!--{$tpl_onload}-->
    });
    </script>

  </head>

  <body class="popup-window">

    <noscript>
    <p><em>JavaScriptを有効にしてご利用下さい.</em></p>
    </noscript>

    <header>
      <section class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
          <div class="container">
            <h1 id="global-title">
              <span class="brand"><!--{$arrSiteInfo.shop_name|h}--></span>
            </h1>
          </div>
        </div>
      </section>
    </header>

    <!--{if !$disable_wincol}-->
    <div class="container popup-wrapper">
    <!--{/if}-->

