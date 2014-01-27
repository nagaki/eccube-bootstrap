jQuery(document).ready(function($) {

  $('.eb-product-list-cartin').click(function() {
    var form = $(this).parents('form:first');
    fnInCart(form);
    return false;
  });

  function fnInCart(productForm) {

    var searchForm = $("#form1");

    // 検索条件を引き継ぐ
    var hiddenValues = ['mode','category_id','maker_id','name','orderby','disp_number','pageno','rnd'];

    $.each(hiddenValues, function() {
      // 商品別のフォームに検索条件の値があれば上書き
      if (productForm.has('input[name='+this+']').length != 0) {
        productForm.find('input[name='+this+']').val(searchForm.find('input[name='+this+']').val());
      }
      // なければ追加
      else {
        productForm.append($('<input type="hidden" />').attr("name", this).val(searchForm.find('input[name='+this+']').val()));
      }
    });
    // 商品別のフォームを送信
    productForm.submit();

  }

});
