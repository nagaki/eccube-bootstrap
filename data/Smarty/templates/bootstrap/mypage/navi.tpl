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

<!--{strip}-->
<ul class="nav nav-tabs">
  <!--{* 会員状態 *}-->
  <!--{if $tpl_login}-->
  <li class="<!--{if $tpl_mypageno == 'index'}-->active<!--{/if}-->"><a href="./<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">購入履歴一覧</a></li>
  <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
  <li class="<!--{if $tpl_mypageno == 'favorite'}-->active<!--{/if}-->"><a href="favorite.php" class="<!--{if $tpl_mypageno == 'favorite'}--> selected<!--{/if}-->">お気に入り一覧</a></li>
  <!--{/if}-->
  <li class="<!--{if $tpl_mypageno == 'change'}-->active<!--{/if}-->"><a href="change.php" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">会員登録内容変更</a></li>
  <li class="<!--{if $tpl_mypageno == 'delivery'}-->active<!--{/if}-->"><a href="delivery.php" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">お届け先追加・変更</a></li>
  <li class="<!--{if $tpl_mypageno == 'refusal'}-->active<!--{/if}-->"><a href="refusal.php" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">退会手続き</a></li>
  <!--{* 退会状態 *}-->
  <!--{else}-->
  <li class="<!--{if $tpl_mypageno == 'index'}-->active<!--{/if}-->"><a href="<!--{$smarty.const.TOP_URLPATH}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">購入履歴一覧</a></li>
  <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
  <li class="<!--{if $tpl_mypageno == 'favorite'}-->active<!--{/if}-->"><a href="<!--{$smarty.const.TOP_URLPATH}-->" class="<!--{if $tpl_mypageno == 'favorite'}--> selected<!--{/if}-->">お気に入り一覧</a></li>
  <!--{/if}-->
  <li class="<!--{if $tpl_mypageno == 'change'}-->active<!--{/if}-->"><a href="<!--{$smarty.const.TOP_URLPATH}-->" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">会員登録内容変更</a></li>
  <li class="<!--{if $tpl_mypageno == 'delivery'}-->active<!--{/if}-->"><a href="<!--{$smarty.const.TOP_URLPATH}-->" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">お届け先追加・変更</a></li>
  <li class="<!--{if $tpl_mypageno == 'refusal'}-->active<!--{/if}-->"><a href="<!--{$smarty.const.TOP_URLPATH}-->" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">退会手続き</a></li>
  <!--{/if}-->
</ul>
<!--{if false}-->
<!--{* if $point_disp !== false *}-->
<!--▼現在のポイント-->
<div class="alert alert-info">
  <strong><!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様</strong>
  <!--{if $smarty.const.USE_POINT !== false}-->&nbsp;
  の現在の所持ポイントは&nbsp;<span class="point st"><!--{$CustomerPoint|number_format|default:"0"|h}-->pt</span>&nbsp;です。
  <!--{/if}-->
</div>
<!--▲現在のポイント-->
<!--{/if}-->
<!--{/strip}-->