<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="MYページ/メール履歴詳細"}-->
<div>
  <table class="table">
    <tr>
      <td><!--{$tpl_subject|h}--></td>
    </tr>
    <tr>
      <td><!--{$tpl_body|h|nl2br}--></td>
    </tr>
  </table>
</div>
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
