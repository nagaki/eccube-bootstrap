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

<section class="page-body mypage-body" id="mypage-history-area">
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <nav id="mypage-nav">
    <!--{include file=$tpl_navi}-->
  </nav>
  <article id="mypage-history-contents">
    <header>
      <h1><!--{$tpl_subtitle|h}--></h1>
    </header>
    <section class="bloc-body">
      <div class="bloc-article">
        <dl class="dl-horizontal">
          <dt>購入日時</dt>
          <dd><!--{$tpl_arrOrderData.create_date|sfDispDBDate}--></dd>
          <dt>注文番号</dt>
          <dd><!--{$tpl_arrOrderData.order_id}--></dd>
          <dt>お支払い方法</dt>
          <dd><!--{$arrPayment[$tpl_arrOrderData.payment_id]|h}--></dd>
        </dl>
      </div>
    </section>
    <section class="bloc-body">
      <header>
        <h1>購入商品</h1>
      </header>
      <div class="bloc-article">
        <table class="table">
          <colgroup>
            <col width="15%">
            <col width="25%">
            <col width="20%">
            <col width="15%">
            <col width="10%">
            <col width="15%">
          </colgroup>
          <thead>
            <tr>
              <th>商品コード</th>
              <th>商品名</th>
              <th>商品種別</th>
              <th>単価</th>
              <th>数量</th>
              <th>小計</th>
            </tr>
          </thead>
          <tbody>
            <!--{foreach from=$tpl_arrOrderDetail item=orderDetail}-->
            <tr>
              <td><!--{$orderDetail.product_code|h}--></td>
              <td><a<!--{if $orderDetail.enable}--> href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$orderDetail.product_id|u}-->"<!--{/if}-->><!--{$orderDetail.product_name|h}--></a><br>
                <!--{if $orderDetail.classcategory_name1 != ""}-->
                <!--{$orderDetail.classcategory_name1|h}--><br>
                <!--{/if}-->
                <!--{if $orderDetail.classcategory_name2 != ""}-->
                <!--{$orderDetail.classcategory_name2|h}-->
                <!--{/if}-->
              </td>
              <td>
                <!--{if $orderDetail.product_type_id == $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
                <!--{if $orderDetail.is_downloadable}-->
                <a target="_self" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/download.php?order_id=<!--{$tpl_arrOrderData.order_id}-->&product_id=<!--{$orderDetail.product_id}-->&product_class_id=<!--{$orderDetail.product_class_id}-->">ダウンロード</a>
                <!--{else}-->
                <!--{if $orderDetail.payment_date == "" && $orderDetail.effective == "0"}-->
                <!--{$arrProductType[$orderDetail.product_type_id]}--><br>（入金確認中）
                <!--{else}-->
                <!--{$arrProductType[$orderDetail.product_type_id]}--><br>（期限切れ）
                <!--{/if}-->
                <!--{/if}-->
                <!--{else}-->
                <!--{$arrProductType[$orderDetail.product_type_id]}-->
                <!--{/if}-->
              </td>
              <!--{assign var=price value=`$orderDetail.price`}-->
              <!--{assign var=quantity value=`$orderDetail.quantity`}-->
              <td><!--{$price|sfCalcIncTax|number_format|h}-->円</td>
              <td><!--{$quantity|h}--></td>
              <td><!--{$price|sfCalcIncTax|sfMultiply:$quantity|number_format}-->円</td>
            </tr>
            <!--{/foreach}-->
            <tr>
              <th colspan="5">小計</th>
              <td><!--{$tpl_arrOrderData.subtotal|number_format}-->円</td>
            </tr>
            <!--{assign var=point_discount value="`$tpl_arrOrderData.use_point*$smarty.const.POINT_VALUE`"}-->
            <!--{if $point_discount > 0}-->
            <tr>
              <th colspan="5">ポイント値引き</th>
              <td>&minus;<!--{$point_discount|number_format}-->円</td>
            </tr>
            <!--{/if}-->
            <!--{assign var=key value="discount"}-->
            <!--{if $tpl_arrOrderData[$key] != "" && $tpl_arrOrderData[$key] > 0}-->
            <tr>
              <th colspan="5">値引き</th>
              <td>&minus;<!--{$tpl_arrOrderData[$key]|number_format}-->円</td>
            </tr>
            <!--{/if}-->
            <tr>
              <th colspan="5">送料</th>
              <td><!--{assign var=key value="deliv_fee"}--><!--{$tpl_arrOrderData[$key]|number_format|h}-->円</td>
            </tr>
            <tr>
              <th colspan="5">手数料</th>
              <!--{assign var=key value="charge"}-->
              <td><!--{$tpl_arrOrderData[$key]|number_format|h}-->円</td>
            </tr>
            <tr>
              <th colspan="5">合計</th>
              <td><span class="price"><!--{$tpl_arrOrderData.payment_total|number_format}-->円</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
    <!-- 使用ポイントここから -->
    <!--{if $smarty.const.USE_POINT !== false}-->
    <section class="bloc-body">
      <header>
        <h1>使用ポイント</h1>
      </header>
      <div class="bloc-article">
        <table class="table">
          <colgroup>
            <col width="30%">
            <col width="70%">
          </colgroup>
          <tbody>
            <tr>
              <th>ご使用ポイント</th>
              <td><!--{assign var=key value="use_point"}--><!--{$tpl_arrOrderData[$key]|number_format|default:0}--> pt</td>
            </tr>
            <tr>
              <th>今回加算されるポイント</th>
              <td><!--{$tpl_arrOrderData.add_point|number_format|default:0}--> pt</td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
    <!--{/if}-->
    <!-- 使用ポイントここまで -->
    <!--{foreach item=shippingItem name=shippingItem from=$arrShipping}-->
    <section class="bloc-body">
      <header>
        <h1>お届け先<!--{if $isMultiple}--><!--{$smarty.foreach.shippingItem.iteration}--><!--{/if}--></h1>
      </header>
      <div class="bloc-article">
      <!--{if $isMultiple}-->
        <table class="table">
          <colgroup>
            <col width="30%">
            <col width="40%">
            <col width="20%">
            <col width="10%">
          </colgroup>
          <thead>
            <tr>
              <th>商品コード</th>
              <th>商品名</th>
              <th>単価</th>
              <th>数量</th>
              <!--{* XXX 購入小計と誤差が出るためコメントアウト
              <th>小計</th>
              *}-->
            </tr>
          </thead>
          <tbody>
            <!--{foreach item=item from=$shippingItem.shipment_item}-->
            <tr>
              <td><!--{$item.productsClass.product_code|h}--></td>
              <td><!--{* 商品名 *}--><!--{$item.productsClass.name|h}--><br>
                <!--{if $item.productsClass.classcategory_name1 != ""}-->
                <!--{$item.productsClass.class_name1}-->：<!--{$item.productsClass.classcategory_name1}--><br>
                <!--{/if}-->
                <!--{if $item.productsClass.classcategory_name2 != ""}-->
                <!--{$item.productsClass.class_name2}-->：<!--{$item.productsClass.classcategory_name2}-->
                <!--{/if}-->
              </td>
              <td>
                <!--{$item.price|sfCalcIncTax|number_format}-->円
              </td>
              <td><!--{$item.quantity}--></td>
              <!--{* XXX 購入小計と誤差が出るためコメントアウト
              <td><!--{$item.total_inctax|number_format}-->円</td>
              *}-->
            </tr>
            <!--{/foreach}-->
          </tbody>
        </table>
        <!--{/if}-->
        <table class="table">
          <colgroup>
            <col width="30%">
            <col width="70%">
          </colgroup>
          <tbody>
            <tr>
              <th>お名前</th>
              <td><!--{$shippingItem.shipping_name01|h}-->&nbsp;<!--{$shippingItem.shipping_name02|h}--></td>
            </tr>
            <tr>
              <th>お名前(フリガナ)</th>
              <td><!--{$shippingItem.shipping_kana01|h}-->&nbsp;<!--{$shippingItem.shipping_kana02|h}--></td>
            </tr>
            <tr>
              <th>郵便番号</th>
              <td>〒<!--{$shippingItem.shipping_zip01}-->-<!--{$shippingItem.shipping_zip02}--></td>
            </tr>
            <tr>
              <th>住所</th>
              <td><!--{$arrPref[$shippingItem.shipping_pref]}--><!--{$shippingItem.shipping_addr01|h}--><!--{$shippingItem.shipping_addr02|h}--></td>
            </tr>
            <tr>
              <th>電話番号</th>
              <td><!--{$shippingItem.shipping_tel01}-->-<!--{$shippingItem.shipping_tel02}-->-<!--{$shippingItem.shipping_tel03}--></td>
            </tr>
            <tr>
              <th>FAX番号</th>
              <td>
                <!--{if $shippingItem.shipping_fax01 > 0}-->
                <!--{$shippingItem.shipping_fax01}-->-<!--{$shippingItem.shipping_fax02}-->-<!--{$shippingItem.shipping_fax03}-->
                <!--{/if}-->
              </td>
            </tr>
            <tr>
              <th>お届け日</th>
              <td><!--{$shippingItem.shipping_date|default:'指定なし'|h}--></td>
            </tr>
            <tr>
              <th>お届け時間</th>
              <td><!--{$shippingItem.shipping_time|default:'指定なし'|h}--></td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
    <!--{/foreach}-->
    <section class="bloc-body">
      <header>
        <h1>メール配信履歴一覧</h1>
      </header>
      <div class="bloc-article">
        <table class="table">
          <thead>
            <tr>
              <th>処理日</th>
              <th>通知メール</th>
              <th>件名</th>
            </tr>
          </thead>
          <tbody>
            <!--{section name=cnt loop=$tpl_arrMailHistory}-->
            <tr class="center">
              <td><!--{$tpl_arrMailHistory[cnt].send_date|sfDispDBDate|h}--></td>
              <!--{assign var=key value="`$tpl_arrMailHistory[cnt].template_id`"}-->
              <td><!--{$arrMAILTEMPLATE[$key]|h}--></td>
              <td><a href="#" onclick="win02('./mail_view.php?send_id=<!--{$tpl_arrMailHistory[cnt].send_id}-->','mail_view','650','800'); return false;"><!--{$tpl_arrMailHistory[cnt].subject|h}--></a></td>
            </tr>
            <!--{/section}-->
          </tbody>
        </table>
      </div>
    </section>
    <aside>
      <form class="form-horizontal" action="order.php" method="post">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
        <input type="hidden" name="order_id" value="<!--{$tpl_arrOrderData.order_id|h}-->">
        <div class="form-actions">
          <a class="btn" href="./<!--{$smarty.const.DIR_INDEX_PATH}-->" id="change">戻る</a>
          <button class="btn btn-info" type="submit" name="submit">この購入内容で再注文する</button>
        </div>
      </form>
    </aside>
  </article>
</section>
