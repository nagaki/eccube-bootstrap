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
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><!--{$arrSiteInfo.shop_name|h}--><!--{if $tpl_subtitle|strlen >= 1}--> / <!--{$tpl_subtitle|h}--><!--{elseif $tpl_title|strlen >= 1}--> / <!--{$tpl_title|h}--><!--{/if}--></title>
    <!--{if $arrPageLayout.author|strlen >= 1}-->
    <meta name="author" content="<!--{$arrPageLayout.author|h}-->" />
    <!--{/if}-->
    <!--{if $arrPageLayout.description|strlen >= 1}-->
    <meta name="description" content="<!--{$arrPageLayout.description|h}-->" />
    <!--{/if}-->
    <!--{if $arrPageLayout.keyword|strlen >= 1}-->
    <meta name="keywords" content="<!--{$arrPageLayout.keyword|h}-->" />
    <!--{/if}-->
    <!--{if $arrPageLayout.meta_robots|strlen >= 1}-->
    <meta name="robots" content="<!--{$arrPageLayout.meta_robots|h}-->" />
    <!--{/if}-->
    <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/styles.css" media="all" />
    <link rel="alternate" type="application/rss+xml" title="RSS" href="<!--{$smarty.const.HTTP_URL}-->rss/<!--{$smarty.const.DIR_INDEX_PATH}-->" />

    <!--{strip}-->
    <!--{* ▼Head COLUMN*}-->
    <!--{if $arrPageLayout.HeadNavi|@count > 0}-->
    <!--{* ▼上ナビ *}-->
    <!--{foreach key=HeadNaviKey item=HeadNaviItem from=$arrPageLayout.HeadNavi}-->
    <!--{* ▼<!--{$HeadNaviItem.bloc_name}--> *}-->
    <!--{if $HeadNaviItem.php_path != ""}-->
    <!--{include_php file=$HeadNaviItem.php_path}-->
    <!--{else}-->
    <!--{include file=$HeadNaviItem.tpl_path}-->
    <!--{/if}-->
    <!--{* ▲<!--{$HeadNaviItem.bloc_name}--> *}-->
    <!--{/foreach}-->
    <!--{* ▲上ナビ *}-->
    <!--{/if}-->
    <!--{* ▲Head COLUMN*}-->
    <!--{/strip}-->
    <!--script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.4.2.min.js"></script-->

  </head>

  <body class="<!--{$tpl_page_class_name|h}-->">

    <!--{include file='./site_main.tpl'}-->

    <script src="<!--{$TPL_URLPATH}-->js/jquery.js"></script>
    <script src="<!--{$TPL_URLPATH}-->js/bootstrap/bootstrap.min.js"></script>
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.js"></script>
    <script src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>
    <!--{if $tpl_page_class_name === "LC_Page_Abouts"}-->
    <!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
    <script src="https://maps-api-ssl.google.com/maps/api/js?sensor=false"></script>
    <!--{else}-->
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <!--{/if}-->
    <!--{/if}-->
    <script src="<!--{$TPL_URLPATH}-->js/jquery.common.js"></script>
    <script>
      <!--{$tpl_javascript}-->
      $(function(){
        <!--{$tpl_onload}-->
      });
    </script>
  </body>

</html>
