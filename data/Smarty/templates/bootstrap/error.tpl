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

<section class="page-body span12" id="error-page-area">
  <article id="error-page-contents">
    <div class="alert alert-error">
      <!--★エラーメッセージ-->
      <a class="close" data-dismiss="alert">×</a>
      <strong><!--{$tpl_error}--></strong>
    </div>
    <div class="form-actions">
      <!--{if $return_top}-->
      <a class="btn" href="<!--{$smarty.const.TOP_URLPATH}-->"><i class="icon-home"></i>&nbsp;ホームへ</a>
      <!--{else}-->
      <a class="btn" href="javascript:history.back()" id="b_back">戻る</a>
      <!--{/if}-->
    </div>
  </article>
</section>
