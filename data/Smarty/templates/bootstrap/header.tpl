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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.    See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA    02111-1307, USA.
 *}-->

<!--▼HEADER-->
<!--{strip}-->
        <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" id="header" role="banner">
          <div id="header" class="clearfix container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#header_utility">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<!--{$smarty.const.TOP_URL}-->"><!--{$arrSiteInfo.shop_name|h}--></a>
            </div>
            <div class="collapse navbar-collapse" id="header_utility" role="navigation">
              <ul class="nav navbar-nav">
                <li><a href="<!--{$smarty.const.CART_URL}-->">カゴの中を見る</a></li>
                <!--div id="headerInternalColumn"-->
                <!--{* ▼HeaderInternal COLUMN *}-->
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
                <!--{* ▲HeaderInternal COLUMN *}-->
                <!--/div-->
              </ul>
            </div>
        </div>
    </header>
<!--{/strip}-->
<!--▲HEADER-->
