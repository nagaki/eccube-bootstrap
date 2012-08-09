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

<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.js"></script>
<link rel="stylesheet" href="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.css" media="screen">
<script>
  jQuery(function ($) {
    $("a.expansion").facebox({
      loadingImage : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/loading.jpg',
      closeImage   : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/closelabel.png'
    });
  });
</script>
<section class="page-body" id="shopping-multiple-area">
  <aside class="progress progress-striped active">
    <div id="shopping-flow-chart" class="bar" style="width: 25%;" rel="tooltip" title="お届け先の指定">STEP 1</div>
  </aside>
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <p class="page-description">
    各商品のお届け先を選択してください。
    <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
    <br>ご希望の住所が無い場合は、新しいお届け先を追加してください。
    <!--{/if}-->
  </p>
  <article id="shopping-multiple-contents">
    <section class="accordion-group">
      <header class="accordion-heading">
        <h2><a class="accordion-toggle" data-toggle="collapse" data-parent="#shopping-multiple-contents" href="#multiple-collapse-one">登録済の住所に送る</a></h2>
      </header>
      <div class="accordion-body collapse in" id="multiple-collapse-one">
        <div class="accordion-inner">
          <form class="form-horizontal" name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
            <input type="hidden" name="line_of_num" value="<!--{$arrForm.line_of_num.value}-->">
            <input type="hidden" name="mode" value="confirm">
            <table class="table table-bordered">
              <colgroup>
                <col width="15%">
                <col width="35%">
                <col width="10%">
                <col width="40%">
              </colgroup>
              <thead>
                <tr>
                  <th>商品写真</th>
                  <th>商品名</th>
                  <th>数量</th>
                  <th>お届け先</th>
                </tr>
              </thead>
              <tbody>
                <!--{section name=line loop=$arrForm.line_of_num.value}-->
                <!--{assign var=index value=$smarty.section.line.index}-->
                <tr>
                  <td>
                    <a
                      <!--{if $arrForm.main_image[$index]|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrForm.main_image.value[$index]|sfNoImageMainList|h}-->" class="expansion" target="_blank"
                      <!--{/if}-->
                      >
                      <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrForm.main_list_image.value[$index]|sfNoImageMainList|h}-->&amp;width=65&amp;height=65" alt="<!--{$arrForm.name.value[$index]|h}-->"></a>
                  </td>
                  <td><!--{* 商品名 *}--><strong><!--{$arrForm.name.value[$index]|h}--></strong><br>
                    <!--{if $arrForm.classcategory_name1.value[$index] != ""}-->
                    <!--{$arrForm.class_name1.value[$index]|h}-->：<!--{$arrForm.classcategory_name1.value[$index]|h}--><br>
                    <!--{/if}-->
                    <!--{if $arrForm.classcategory_name2.value[$index] != ""}-->
                    <!--{$arrForm.class_name2.value[$index]|h}-->：<!--{$arrForm.classcategory_name2.value[$index]|h}--><br>
                    <!--{/if}-->
                    <!--{$arrForm.price.value[$index]|sfCalcIncTax|number_format}-->円
                  </td>
                  <td>
                    <!--{assign var=key value="quantity"}-->
                    <!--{if $arrErr[$key][$index] != ''}-->
                    <span class="attention"><!--{$arrErr[$key][$index]}--></span>
                    <!--{/if}-->
                    <input class="input-mini" type="number" min="0" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                  </td>
                  <td>
                    <input type="hidden" name="cart_no[<!--{$index}-->]" value="<!--{$index}-->">
                    <!--{assign var=key value="product_class_id"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="name"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="class_name1"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="class_name2"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="classcategory_name1"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="classcategory_name2"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="main_image"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="main_list_image"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="price"}-->
                    <input type="hidden" name="<!--{$key}-->[<!--{$index}-->]" value="<!--{$arrForm[$key].value[$index]}-->">
                    <!--{assign var=key value="shipping"}-->
                    <!--{if strlen($arrErr[$key][$index]) >= 1}-->
                    <div class="attention"><!--{$arrErr[$key][$index]}--></div>
                    <!--{/if}-->
                    <select class="input-medium" name="<!--{$key}-->[<!--{$index}-->]">
                      <!--{html_options options=$addrs selected=$arrForm[$key].value[$index]}-->
                    </select>
                  </td>
                </tr>
                <!--{/section}-->
              </tbody>
            </table>
            <div class="form-actions">
              <a class="btn btn-large" href="<!--{$smarty.const.CART_URLPATH}-->" id="back03">戻る</a>
              <button class="btn btn-large btn-primary" type="submit" name="send_button" id="send_button">選択したお届け先に送る</button>
            </div>
          </form>
        </div>
      </div>
    </section>
    <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
    <section class="accordion-group">
      <header class="accordion-heading">
        <h2><a class="accordion-toggle" data-toggle="collapse" data-parent="#shopping-multiple-contents" href="#multiple-collapse-two">新しいお届け先を追加する</a></h2>
      </header>
      <div class="accordion-body collapse" id="multiple-collapse-two">
        <div class="accordion-inner">
          <div class="well">
            <a class="btn btn-success" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->','new_deiv','600','640'); return false;" id="addition">新しいお届け先を追加する</a>
          </div>
          <div class="alert alert-info">最大<strong><!--{$smarty.const.DELIV_ADDR_MAX|h}-->件</strong>まで登録できます。</div>
        </div>
      </div>
    </section>
    <!--{/if}-->
  </article>
</section>