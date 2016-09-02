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

<script>
  var send = true;

  function fnCheckSubmit() {
    if(send) {
      send = false;
      return true;
    } else {
      alert("只今、処理中です。しばらくお待ち下さい。");
      return false;
    }
  }
</script>

<!--CONTENTS-->
<section class="page-body" id="shopping-confirm-area">
  <aside class="progress progress-striped active">
    <div id="shopping-flow-chart" class="bar" style="width: 75%;" rel="tooltip" title="入力内容ご確認">STEP 3</div>
  </aside>
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <p class="page-description">
    下記ご注文内容で送信してもよろしいでしょうか？<br>
    よろしければ、「<!--{if $use_module}-->次へ<!--{else}-->ご注文完了ページへ<!--{/if}-->」ボタンをクリックしてください。
  </p>
  <article id="shopping-confirm-contents">
    <form name="form1" id="form1" method="post" action="?">
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
      <input type="hidden" name="mode" value="confirm">
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
      <div class="form-actions">
        <a class="btn btn-large" href="./payment.php" id="back04-top">戻る</a>
        <!--{if $use_module}-->
        <button class="btn btn-large btn-primary" type="submit" onclick="return fnCheckSubmit();" id="next-top">次へ</button>
        <!--{else}-->
        <button class="btn btn-large btn-primary" type="submit" onclick="return fnCheckSubmit();" id="next-top">ご注文完了ページヘ</button>
        <!--{/if}-->
      </div>
      <section class="bloc-body">
        <header>
          <h1>ご注文内容</h1>
        </header>
        <table class="table">
          <colgroup>
            <col width="10%">
            <col width="40%">
            <col width="20%">
            <col width="10%">
            <col width="20%">
          </colgroup>
          <thead>
            <tr>
              <th scope="col">商品写真</th>
              <th scope="col">商品名</th>
              <th scope="col">単価</th>
              <th scope="col">数量</th>
              <th scope="col">小計</th>
            </tr>
          </thead>
          <tbody>
            <!--{foreach from=$arrCartItems item=item}-->
            <tr>
              <td>
                <a
                  <!--{if $item.productsClass.main_image|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->" class="expansion product-thumbnail" target="_blank"
                  <!--{/if}-->
                  >
                  <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->&amp;width=65&amp;height=65" alt="<!--{$item.productsClass.name|h}-->"></a>
              </td>
              <td>
                <ul class="unstyled">
                  <li><strong><!--{$item.productsClass.name|h}--></strong></li>
                  <!--{if $item.productsClass.classcategory_name1 != ""}-->
                  <li><!--{$item.productsClass.class_name1}-->：<!--{$item.productsClass.classcategory_name1}--></li>
                  <!--{/if}-->
                  <!--{if $item.productsClass.classcategory_name2 != ""}-->
                  <li><!--{$item.productsClass.class_name2}-->：<!--{$item.productsClass.classcategory_name2}--></li>
                  <!--{/if}-->
                </ul>
              </td>
              <td>
                <!--{$item.price|sfCalcIncTax|number_format}-->円
              </td>
              <td><!--{$item.quantity|number_format}--></td>
              <td><!--{$item.total_inctax|number_format}-->円</td>
            </tr>
            <!--{/foreach}-->
            <tr>
              <th colspan="4" scope="row">小計</th>
              <td><!--{$tpl_total_inctax[$cartKey]|number_format}-->円</td>
            </tr>
            <!--{if $smarty.const.USE_POINT !== false}-->
            <tr>
              <th colspan="4" scope="row">値引き（ポイントご使用時）</th>
              <td>
                <!--{assign var=discount value=`$arrForm.use_point*$smarty.const.POINT_VALUE`}-->
                -<!--{$discount|number_format|default:0}-->円</td>
            </tr>
            <!--{/if}-->
            <tr>
              <th colspan="4" scope="row">送料</th>
              <td><!--{$arrForm.deliv_fee|number_format}-->円</td>
            </tr>
            <tr>
              <th colspan="4" scope="row">手数料</th>
              <td><!--{$arrForm.charge|number_format}-->円</td>
            </tr>
            <tr>
              <th colspan="4" scope="row">合計</th>
              <td><span class="total-price"><!--{$arrForm.payment_total|number_format}-->円</span></td>
            </tr>
          </tbody>
        </table>
      </section>
      <!--{* ログイン済みの会員のみ *}-->
      <!--{if $tpl_login == 1 && $smarty.const.USE_POINT !== false}-->
      <section class="bloc-body">
        <header>
          <h1>ポイント</h1>
        </header>
        <table class="table">
          <colgroup>
            <col width="30%">
            <col width="70%">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">ご注文前のポイント</th>
              <td><!--{$tpl_user_point|number_format|default:0}-->Pt</td>
            </tr>
            <tr>
              <th scope="row">ご使用ポイント</th>
              <td>-<!--{$arrForm.use_point|number_format|default:0}-->Pt</td>
            </tr>
            <!--{if $arrForm.birth_point > 0}-->
            <tr>
              <th scope="row">お誕生月ポイント</th>
              <td>+<!--{$arrForm.birth_point|number_format|default:0}-->Pt</td>
            </tr>
            <!--{/if}-->
            <tr>
              <th scope="row">今回加算予定のポイント</th>
              <td>+<!--{$arrForm.add_point|number_format|default:0}-->Pt</td>
            </tr>
            <tr>
              <!--{assign var=total_point value=`$tpl_user_point-$arrForm.use_point+$arrForm.add_point`}-->
              <th scope="row">加算後のポイント</th>
              <td><!--{$total_point|number_format}-->Pt</td>
            </tr>
          </tbody>
        </table>
      </section>
      <!--{/if}-->
      <!--{* ログイン済みの会員のみ *}-->
      <!--お届け先ここから-->
      <!--{* 販売方法判定（ダウンロード販売のみの場合はお届け先を表示しない） *}-->
      <!--{if $cartKey != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
      <section class="bloc-body">
      <!--{foreach item=shippingItem from=$arrShipping name=shippingItem}-->
        <header>
          <h1>お届け先<!--{if $is_multiple}--><!--{$smarty.foreach.shippingItem.iteration}--><!--{/if}--></h1>
        </header>
        <!--{if $is_multiple}-->
        <table class="table">
          <colgroup>
            <col width="10%">
            <col width="60%">
            <col width="20%">
            <col width="10%">
          </colgroup>
          <thead>
            <tr>
              <th scope="col">商品写真</th>
              <th scope="col">商品名</th>
              <th scope="col">単価</th>
              <th scope="col">数量</th>
              <!--{* XXX 購入小計と誤差が出るためコメントアウト
              <th scope="col">小計</th>
              *}-->
            </tr>
          </thead>
          <tbody>
            <!--{foreach item=item from=$shippingItem.shipment_item}-->
            <tr>
              <td>
                <a
                  <!--{if $item.productsClass.main_image|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->" class="expansion" target="_blank"
                  <!--{/if}-->
                  >
                  <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->&amp;width=65&amp;height=65" alt="<!--{$item.productsClass.name|h}-->"></a>
              </td>
              <td><!--{* 商品名 *}--><strong><!--{$item.productsClass.name|h}--></strong><br>
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
              <th scope="row">お名前</th>
              <td><!--{$shippingItem.shipping_name01|h}--> <!--{$shippingItem.shipping_name02|h}--></td>
            </tr>
            <tr>
              <th scope="row">お名前(フリガナ)</th>
              <td><!--{$shippingItem.shipping_kana01|h}--> <!--{$shippingItem.shipping_kana02|h}--></td>
            </tr>
            <tr>
              <th scope="row">郵便番号</th>
              <td>〒<!--{$shippingItem.shipping_zip01|h}-->-<!--{$shippingItem.shipping_zip02|h}--></td>
            </tr>
            <tr>
              <th scope="row">住所</th>
              <td><!--{$arrPref[$shippingItem.shipping_pref]}--><!--{$shippingItem.shipping_addr01|h}--><!--{$shippingItem.shipping_addr02|h}--></td>
            </tr>
            <tr>
              <th scope="row">電話番号</th>
              <td><!--{$shippingItem.shipping_tel01}-->-<!--{$shippingItem.shipping_tel02}-->-<!--{$shippingItem.shipping_tel03}--></td>
            </tr>
            <tr>
              <th scope="row">FAX番号</th>
              <td>
                <!--{if $shippingItem.shipping_fax01 > 0}-->
                <!--{$shippingItem.shipping_fax01}-->-<!--{$shippingItem.shipping_fax02}-->-<!--{$shippingItem.shipping_fax03}-->
                <!--{/if}-->
              </td>
            </tr>
            <!--{if $cartKey != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
            <tr>
              <th scope="row">お届け日</th>
              <td><!--{$shippingItem.shipping_date|default:"指定なし"|h}--></td>
            </tr>
            <tr>
              <th scope="row">お届け時間</th>
              <td><!--{$shippingItem.shipping_time|default:"指定なし"|h}--></td>
            </tr>
            <!--{/if}-->
          </tbody>
        </table>
      <!--{/foreach}-->
      </section>
      <!--{/if}-->
      <!--お届け先ここまで-->
      <section class="bloc-body">
        <header>
          <h1>配送方法・お支払方法・その他お問い合わせ</h1>
        </header>
        <table class="table">
          <colgroup>
            <col width="30%">
            <col width="70%">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">配送方法</th>
              <td><!--{$arrDeliv[$arrForm.deliv_id]|h}--></td>
            </tr>
            <tr>
              <th scope="row">お支払方法</th>
              <td><!--{$arrForm.payment_method|h}--></td>
            </tr>
            <tr>
              <th scope="row">その他お問い合わせ</th>
              <td><!--{$arrForm.message|h|nl2br}--></td>
            </tr>
          </tbody>
        </table>
      </section>
      <div class="form-actions">
        <a class="btn btn-large" href="./payment.php">戻る</a>
        <!--{if $use_module}-->
        <button class="btn btn-large btn-primary" type="submit" onclick="return fnCheckSubmit();" name="next" id="next">次へ</button>
        <!--{else}-->
        <button class="btn btn-large btn-primary" type="submit" onclick="return fnCheckSubmit();" name="next" id="next">ご注文完了ページへ</button>
        <!--{/if}-->
      </div>
    </form>
  </article>
</section>
