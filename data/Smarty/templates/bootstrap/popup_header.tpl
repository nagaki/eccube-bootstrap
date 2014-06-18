<!DOCTYPE html>
<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2013 LOCKON CO.,LTD. All Rights Reserved.
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

<html lang="ja">
  <head>
    <meta charset="<!--{$smarty.const.CHAR_CODE}-->">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.colorbox/colorbox.css" />
    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/styles.css" media="all" />
    <title><!--{$arrSiteInfo.shop_name}-->/<!--{$subtitle|h}--></title>
    <script type="text/javascript">
      <!--{$tpl_javascript}-->
      $(function(){
        <!--{$tpl_onload}-->
      });
    </script>
  </head>
  <body class="eb-body-popup">

    <noscript>
      <p>JavaScriptを有効にしてご利用下さい</p>
    </noscript>
    <div class="col-md-12">
      <!--{if !$disable_wincol}--><div id="windowcolumn"><!--{/if}-->
