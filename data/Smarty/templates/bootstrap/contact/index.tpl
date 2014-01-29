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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

 <div id="undercolumn">
   <h2 class="title"><!--{$tpl_title|h}--></h2>

   <div id="undercolumn_contact">

     <p>内容によっては回答をさしあげるのにお時間をいただくこともございます。<br />
       また、休業日は翌営業日以降の対応となりますのでご了承ください。</p>

     <form name="form1" id="form1" method="post" action="?" class="form-horizontal">
       <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
       <input type="hidden" name="mode" value="confirm" />

       <fieldset>
         <legend>お名前</legend>
         <div class="form-group eb-form-require <!--{if $arrErr.name01|count_characters > 0 || $arrErr.name02|count_characters > 0}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3 eb-form-require" for="">お名前</label>
           <div class="col-sm-3">
             <input class="form-control eb-form-float-control" type="text" name="name01" value="<!--{$arrForm.name01.value|default:$arrData.name01|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="姓" />
           </div>
           <div class="col-sm-3">
             <input class="form-control eb-form-float-control" type="text" name="name02" value="<!--{$arrForm.name02.value|default:$arrData.name02|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="名" />
           </div>
           <!--{if $arrErr.name01|count_characters > 0 || $arrErr.name02|count_characters > 0}-->
           <p class="help-block col-sm-9 col-sm-offset-3">
             <span><!--{$arrErr.name01}--></span>
             <span><!--{$arrErr.name02}--></span>
           </p>
           <!--{/if}-->
         </div>
         <div class="form-group eb-form-require <!--{if $arrErr.kana01|count_characters > 0 || $arrErr.kana02|count_characters > 0}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3" for="">お名前(フリガナ)</label>
           <div class="col-sm-3">
             <input class="form-control eb-form-float-control" type="text" name="kana01" value="<!--{$arrForm.kana01.value|default:$arrData.kana01|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="セイ" />
           </div>
           <div class="col-sm-3">
             <input class="form-control eb-form-float-control" type="text" name="kana02" value="<!--{$arrForm.kana02.value|default:$arrData.kana02|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" placeholder="メイ" />
           </div>
           <!--{if $arrErr.kana01|count_characters > 0 || $arrErr.kana02|count_characters > 0}-->
           <p class="help-block col-sm-9 col-sm-offset-3">
             <span><!--{$arrErr.kana01}--></span>
             <span><!--{$arrErr.kana02}--></span>
           </p>
           <!--{/if}-->
         </div>
       </fieldset>

       <fieldset>
         <legend>ご住所</legend>
         <div class="form-group <!--{if $arrErr.zip01|count_characters > 0 || $arrErr.zip02|count_characters > 0}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3" for="">郵便番号</label>
           <div class="col-sm-2">
             <input class="form-control eb-form-float-control" type="text" name="zip01" value="<!--{$arrForm.zip01.value|default:$arrData.zip01|h}-->" maxlength="<!--{$smarty.const.ZIP01_LEN}-->" placeholder="123" />
           </div>
           <div class="col-sm-2">
             <input class="form-control eb-form-float-control" type="text" name="zip02" value="<!--{$arrForm.zip02.value|default:$arrData.zip02|h}-->" maxlength="<!--{$smarty.const.ZIP02_LEN}-->" placeholder="4567" />
           </div>
           <!--{if $arrErr.zip01|count_characters > 0 || $arrErr.zip02|count_characters > 0}-->
           <p class="help-block col-sm-9 col-sm-offset-3">
             <span><!--{$arrErr.zip01}--></span>
             <span><!--{$arrErr.zip02}--></span>
           </p>
           <!--{/if}-->
         </div>
         <div class="row">
           <p class="col-sm-9 col-sm-offset-3">
             <a href="http://search.post.japanpost.jp/zipcode/" target="_blank">
               郵便番号検索
             </a>
           </p>
         </div>
         <div class="row">
           <p class="col-sm-9 col-sm-offset-3">
             <a class="btn btn-default" href="javascript:eccube.getAddress('<!--{$smarty.const.INPUT_ZIP_URLPATH}-->', 'zip01', 'zip02', 'pref', 'addr01');">住所自動入力</a>
             <span>郵便番号を入力後、クリックしてください。</span>
           </p>
         </div>
         <div class="form-group <!--{if $arrErr.pref != ''}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3">都道府県名</label>
           <div class="col-sm-3">
             <select class="form-control" name="pref">
               <option value="">都道府県を選択</option><!--{html_options options=$arrPref selected=$arrForm.pref.value|default:$arrData.pref|h}-->
             </select>
           </div>
           <!--{if $arrErr.pref != ''}-->
           <p class="help-block"><!--{$arrErr.pref}--></p>
           <!--{/if}-->
         </div>
         <div class="form-group <!--{if $arrErr.addr01 != ''}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3">市区町村名</label>
           <div class="col-sm-5">
             <input class="form-control" type="text" name="addr01" value="<!--{$arrForm.addr01.value|default:$arrData.addr01|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS1}-->" />
           </div>
           <!--{if $arrErr.addr01 != ''}-->
           <p class="help-block"><!--{$arrErr.addr01}--></p>
           <!--{/if}-->
         </div>
         <div class="form-group <!--{if $arrErr.addr02 != ''}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3">番地・マンション名</label>
           <div class="col-sm-5">
             <input class="form-control" type="text" name="addr02" value="<!--{$arrForm.addr02.value|default:$arrData.addr02|h}-->" placeholder="<!--{$smarty.const.SAMPLE_ADDRESS2}-->" />
           </div>
           <!--{if $arrErr.addr02 != ''}-->
           <p class="help-block"><!--{$arrErr.addr02}--></p>
           <!--{/if}-->
         </div>
       </fieldset>

       <fieldset>
         <legend>ご連絡先</legend>
         <div class="form-group <!--{if $arrErr.tel01|count_characters > 0 || $arrErr.tel02|count_characters > 0 || $arrErr.tel03|count_characters > 0}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3" for="">電話番号</label>
           <div class="col-sm-2">
             <input class="form-control eb-form-float-control" type="text" name="tel01" value="<!--{$arrForm.tel01.value|default:$arrData.tel01|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" placeholder="01" />
           </div>
           <div class="col-sm-2">
             <input class="form-control eb-form-float-control" type="text" name="tel02" value="<!--{$arrForm.tel02.value|default:$arrData.tel02|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" placeholder="2345" />
           </div>
           <div class="col-sm-2">
             <input class="form-control eb-form-float-control" type="text" name="tel03" value="<!--{$arrForm.tel03.value|default:$arrData.tel03|h}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" placeholder="6789" />
           </div>
           <!--{if $arrErr.tel01|count_characters > 0 || $arrErr.tel02|count_characters > 0 || $arrErr.tel03|count_characters > 0}-->
           <p class="help-block col-sm-9 col-sm-offset-3">
             <span><!--{$arrErr.tel01}--></span>
             <span><!--{$arrErr.tel02}--></span>
             <span><!--{$arrErr.tel03}--></span>
           </p>
           <!--{/if}-->
         </div>
         <div class="form-group eb-form-require <!--{if $arrErr.email != ''}-->has-error<!--{/if}-->">
           <label class="control-label col-sm-3" for="">メールアドレス</label>
           <div class="col-sm-4">
             <input class="form-control" type="text" name="email" value="<!--{$arrForm.email.value|default:$arrData.email|h}-->" />
           </div>
           <!--{if $arrErr.email != ''}-->
           <p class="help-block"><!--{$arrErr.email}--></p>
           <!--{/if}-->
         </div>
         <div class="row">
           <p class="col-sm-9 col-sm-offset-3">
             メールアドレスは確認のため2度入力してください。
           </p>
         </div>
         <div class="form-group eb-form-require <!--{if $arrErr.email02 != ''}-->has-error<!--{/if}-->">
           <div class="col-sm-4 col-sm-offset-3">
             <!--{* ログインしていれば入力済みにする *}-->
             <!--{if $smarty.server.REQUEST_METHOD != 'POST' && $smarty.session.customer}-->
             <!--{assign var=email02 value=$arrData.email}-->
             <!--{/if}-->
             <input class="form-control" type="text" name="email02" value="<!--{$arrForm.email02.value|default:$email02|h}-->" />
           </div>
           <!--{if $arrErr.email02 != ''}-->
           <p class="help-block"><!--{$arrErr.email02}--></p>
           <!--{/if}-->
         </div>
       </fieldset>

       <fieldset>
         <legend>お問い合わせ内容</legend>
         <div class="form-group eb-form-require <!--{if $arrErr.contents != ''}-->has-error<!--{/if}-->">
           <div class="col-sm-12">
             <textarea class="form-control" name="contents" rows="10" placeholder="全角<!--{$smarty.const.MLTEXT_LEN}-->字以下でご入力ください。※ご注文に関するお問い合わせには、必ず「ご注文番号」をご記入くださいますようお願いいたします。"><!--{"\n"}--><!--{$arrForm.contents.value|h}--></textarea>
           </div>
           <!--{if $arrErr.contents != ''}-->
           <p class="col-sm-12 help-block"><!--{$arrErr.contents}--></p>
           <!--{/if}-->
         </div>
       </fieldset>


       <div class="btn_area">
         <input class="btn btn-default" type="submit" value="確認ページへ" name="confirm" />
       </div>

     </form>
   </div>
 </div>
