<!--{*
/*
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
 */
*}-->

<div id="mynavi_area">
  <!--{strip}-->
  <ul class="nav nav-tabs eb-mypage-nav">

    <!--{* 会員状態 *}-->
    <!--{if $tpl_login}-->
    <li class="<!--{if $tpl_mypageno == 'index'}--> active<!--{/if}-->">
      <a href="./<!--{$smarty.const.DIR_INDEX_PATH}-->">購入履歴一覧</a>
    </li>
    <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
    <li class="<!--{if $tpl_mypageno == 'favorite'}--> active<!--{/if}-->">
      <a href="favorite.php">お気に入り一覧</a>
    </li>
    <!--{/if}-->
    <li class="<!--{if $tpl_mypageno == 'change'}--> active<!--{/if}-->">
      <a href="change.php">会員登録内容変更</a>
    </li>
    <li class="<!--{if $tpl_mypageno == 'delivery'}--> active<!--{/if}-->">
      <a href="delivery.php">お届け先追加・変更</a>
    </li>
    <li class="<!--{if $tpl_mypageno == 'refusal'}--> active<!--{/if}-->">
      <a href="refusal.php">退会手続き</a>
    </li>

    <!--{* 退会状態 *}-->
    <!--{else}-->
    <li class="<!--{if $tpl_mypageno == 'index'}--> active<!--{/if}-->">
      <a href="<!--{$smarty.const.TOP_URL}-->">購入履歴一覧</a>
    </li>
    <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
    <li class="<!--{if $tpl_mypageno == 'favorite'}--> active<!--{/if}-->">
      <a href="<!--{$smarty.const.TOP_URL}-->">お気に入り一覧</a>
    </li>
    <!--{/if}-->
    <li class="<!--{if $tpl_mypageno == 'change'}--> active<!--{/if}-->">
      <a href="<!--{$smarty.const.TOP_URL}-->">会員登録内容変更</a>
    </li>
    <li class="<!--{if $tpl_mypageno == 'delivery'}--> active<!--{/if}-->">
      <a href="<!--{$smarty.const.TOP_URL}-->">お届け先追加・変更</a>
    </li>
    <li class="<!--{if $tpl_mypageno == 'refusal'}--> active<!--{/if}-->">
      <a href="<!--{$smarty.const.TOP_URL}-->">退会手続き</a>
    </li>
    <!--{/if}-->
  </ul>

  <!--▼現在のポイント-->
  <!--{if $point_disp !== false}-->
  <div class="alert alert-info">
    <p>ようこそ<span><!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様</span></p>
    <!--{if $smarty.const.USE_POINT !== false}-->
    <p>現在の所持ポイントは<b><!--{$CustomerPoint|number_format|default:"0"|h}-->pt</b>です</p>
    <!--{/if}-->
  </div>
  <!--{/if}-->
  <!--▲現在のポイント-->
  <!--{/strip}-->

</div>
<!--▲NAVI-->
