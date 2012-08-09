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
<!--{if count($smarty.session.cart) > 0}-->
<section class="bloc-body well" id="cart-area">
  <header>
    <h1>現在のカゴの中</h1>
  </header>
  <div id="cartin-contents" class="bloc-article">
    <p class="item">商品点数は <span class="badge badge-info"><!--{$arrCartList.0.TotalQuantity|number_format|default:0}--></span> 点です。</p>
    <p class="total">商品金額は <span class="badge badge-success"><!--{$arrCartList.0.ProductsTotal|number_format|default:0}--></span> 円です。</p>
    <p class="postage">
      <!--{if $arrCartList.0.deliv_free > 0}-->
      <span class="badge badge-important">+ <!--{$arrCartList.0.deliv_free|number_format|default:0}--></span> 円で送料無料
      <!--{else}-->
      送料<span class="price">無料</span>です。
      <!--{/if}-->
    </p>
  </div>
  <footer>
    <div class="form-actions">
      <a class="btn" href="<!--{$smarty.const.CART_URLPATH}-->">かごの中を見る</a>
    </div>  
  </footer>
</section>
<!--{/if}-->