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

<section class="page-body" id="shopping-deliv-area">
  <aside class="progress progress-striped active">
    <div id="shopping-flow-chart" class="bar" style="width: 25%;" rel="tooltip" title="お届け先の指定">STEP 1</div>
  </aside>
  <header>
    <h1><!--{$tpl_title|h}--></h1>
  </header>
  <p class="page-description">
    お届け先住所を選択してください。
    <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
    <br>ご希望の住所が無い場合は、新しいお届け先を追加してください。
    <!--{/if}-->
  </p>
  <article id="shopping-deliv-contents">
    <section class="accordion-group">
      <header class="accordion-heading">
        <h2><a class="accordion-toggle" data-toggle="collapse" data-parent="#shopping-deliv-contents" href="#deliv-collapse-one">登録済の住所に送る</a></h2>
      </header>
      <div class="accordion-body collapse in" id="deliv-collapse-one">
        <div class="accordion-inner">
          <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->">
            <input type="hidden" name="mode" value="customer_addr">
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
            <input type="hidden" name="other_deliv_id" value="">
            <!--{if $arrErr.deli != ""}-->
            <p class="attention"><!--{$arrErr.deli}--></p>
            <!--{/if}-->
            <table class="table table-bordered">
              <colgroup>
                <col width="10%">
                <col width="20%">
                <col width="50%">
                <col width="10%">
                <col width="10%">
              </colgroup>
              <thead>
                <tr>
                  <th>選択</th>
                  <th>住所種類</th>
                  <th>お届け先</th>
                  <th>変更</th>
                  <th>削除</th>
                </tr>
              </thead>
              <tbody>
                <!--{section name=cnt loop=$arrAddr}-->
                <tr>
                  <td>
                    <!--{if $smarty.section.cnt.first}-->
                    <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="-1" <!--{if $arrForm.deliv_check.value == "" || $arrForm.deliv_check.value == -1}--> checked="checked"<!--{/if}-->>
                    <!--{else}-->
                    <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="<!--{$arrAddr[cnt].other_deliv_id}-->"<!--{if $arrForm.deliv_check.value == $arrAddr[cnt].other_deliv_id}--> checked="checked"<!--{/if}-->>
                    <!--{/if}-->
                  </td>
                  <td>
                    <label for="chk_id_<!--{$smarty.section.cnt.iteration}-->">
                      <!--{if $smarty.section.cnt.first}-->
                      会員登録住所
                      <!--{else}-->
                      追加登録住所
                      <!--{/if}-->
                    </label>
                  </td>
                  <td>
                    <!--{assign var=key value=$arrAddr[cnt].pref}-->
                    <!--{$arrPref[$key]}--><!--{$arrAddr[cnt].addr01|h}--><!--{$arrAddr[cnt].addr02|h}--><br>
                    <!--{$arrAddr[cnt].name01|h}--> <!--{$arrAddr[cnt].name02|h}-->
                  </td>
                  <td>
                    <!--{if !$smarty.section.cnt.first}-->
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->&amp;other_deliv_id=<!--{$arrAddr[cnt].other_deliv_id}-->','new_deiv','600','640'); return false;">変更</a>
                    <!--{else}-->
                    -
                    <!--{/if}-->
                  </td>
                  <td>
                    <!--{if !$smarty.section.cnt.first}-->
                    <a href="?" onclick="fnModeSubmit('delete', 'other_deliv_id', '<!--{$arrAddr[cnt].other_deliv_id}-->'); return false">削除</a>
                    <!--{else}-->
                    -
                    <!--{/if}-->
                  </td>
                </tr>
                <!--{/section}-->
              </tbody>
            </table>
            <div class="form-actions">
              <a class="btn btn-large" href="<!--{$smarty.const.CART_URLPATH}-->" id="back03">戻る</a>
              <button class="btn btn-large btn-primary" type="submit" name="send_button" id="send_button">お届け先を確定する</button>
            </div>
          </form>
        </div>
      </div>
    </section>
    <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
    <section class="accordion-group">
      <header class="accordion-heading">
        <h2><a class="accordion-toggle" data-toggle="collapse" data-parent="#shopping-deliv-contents" href="#deliv-collapse-two">複数の住所に送る</a></h2>
      </header>
      <div class="accordion-body collapse" id="deliv-collapse-two">
        <div class="accordion-inner">
          <div class="well">
　　        <a class="btn btn-info" href="javascript:;" onclick="fnModeSubmit('multiple', '', ''); return false" id="several">お届け先の複数指定ページヘ</a>
          </div>
        </div>
      </div>
    </section>
    <!--{/if}-->
    <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
    <section class="accordion-group">
      <header class="accordion-heading">
        <h2><a class="accordion-toggle" data-toggle="collapse" data-parent="#shopping-deliv-contents" href="#deliv-collapse-three">新しい住所を登録して送る</a></h2>
      </header>
      <div class="accordion-body collapse" id="deliv-collapse-three">
        <div class="accordion-inner">
          <div class="well">
            <a class="btn btn-success" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->','new_deiv','600','640'); return false;" id="addition">新しいお届け先を追加する</a>
          </div>
          <div class="alert alert-info">
            <span>住所は最大<strong><!--{$smarty.const.DELIV_ADDR_MAX|h}-->件</strong>まで登録できます。</span>
          </div>
        </div>
      </div>
    </section>
    <!--{/if}-->
  </article>
</section>