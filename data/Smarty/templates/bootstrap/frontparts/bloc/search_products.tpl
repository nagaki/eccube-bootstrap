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
<section class="bloc-body well" id="search-area">
  <!--検索フォーム-->
  <form name="search_form" id="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
    <input type="hidden" name="mode" value="search">
    <header>
      <h1>商品検索</h1>
    </header>
    <div id="search-contents" class="bloc-article">
      <div class="control-group">
        <label class="control-label" for="search-category">商品カテゴリから選ぶ</label>
        <div class="controls">
          <select id="search-category" name="category_id" class="input-medium">
            <option label="すべての商品" value="">全ての商品</option>
            <!--{html_options options=$arrCatList selected=$category_id}-->
          </select>
        </div>
      </div>
      <!--{if $arrMakerList}-->
      <div class="control-group">
        <label class="control-label" for="search-maker">メーカーから選ぶ</label>
        <div class="controls">
          <select id="maker_id" name="search-maker" class="input-medium">
            <option label="すべてのメーカー" value="">すべてのメーカー</option>
            <!--{html_options options=$arrMakerList selected=$maker_id}-->
          </select>
        </div>
      </div>
      <!--{/if}-->
      <div class="control-group">
        <label class="control-label" for="search-product-name">商品名を入力</label>
        <div class="controls">
          <input id="search-product-name" type="text" name="name" class="input-medium" maxlength="50" value="<!--{$smarty.get.name|h}-->">
        </div>
      </div>
    </div>
    <footer>
      <div class="form-actions">
        <button class="btn btn-primary" type="submit"><i class="icon-search icon-white"></i>&nbsp;検索する</button>
      </div>
    </footer>
  </form>
 </section>
