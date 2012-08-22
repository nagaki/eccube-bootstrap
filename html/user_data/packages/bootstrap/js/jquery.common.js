jQuery(function ($) {

  // bootstrap->modal
  $(this).modal({
    show: false
  });

  // normal->scroll top
  $('#pagetop a').click( function () {
    $('body, html').animate({
      scrollTop: 0
    }, 500);
    return false;
  });

  // bootstrap->carousel
  $('#myCarousel').carousel();

  // bootstrap->popover
  $('#add-favorite-product, #review-button, #search-postal-code').popover({
    placement: 'top',
    trigger: 'hover'
  });

  // bootstrap->tooltip (support HTML5 browser only)
  if ($.support.optSelected == true) {
    var a = $('input.required, select.required, textarea.required');
    a.tooltip({
      placement: 'top',
      title: '\u5fc5\u9808\u9805\u76ee\u3067\u3059', // escape "必須項目です"
      trigger: 'focus'
    }).attr('required');
  }

  $('#shopping-flow-chart').tooltip();

  // bootstrap->list pager custom
  $('#product-list-contents .product-list-pager a, #bought-pager a, #favorite-pager a').wrap('<li></li>');
  $('#product-list-contents .product-list-pager strong, #bought-pager strong, #favorite-pager strong').wrap('<li class="active"><a class="disable"></a></li>').css('font-weight', 'normal');

  // core->window load
  $(window).load(function () {
    var a = $(window).width();
    changeIconColor(a);
    changeMyNavStyle(a);
    changeCollapseIn(a);
    changePlistClear(a);
  });

  // core->window resize
  $(window).resize(function () {
    var a = $(window).width();
    changeIconColor(a);
    changeMyNavStyle(a);
    changeCollapseIn(a);
    changePlistClear(a);
  });

  // bootstrap->change header-icon color
  function changeIconColor (a) {
    if (a < 980) {
      $('#header-nav i').addClass('icon-white');
    } else if (a >= 980) {
      $('#header-nav i').removeClass('icon-white');
    }
    return false;
  }

  // bootstrap->change mypage navi style
  function changeMyNavStyle (a) {
    if (a < 980) {
      $('#mypage-nav ul').addClass('nav-stacked');
    } else if (a >= 980) {
      $('#mypage-nav ul').removeClass('nav-stacked');
    }
    return false;
  }
  
  function changeCollapseIn (a) {
    if (a < 640) {
      $('#collapseOne, #collapseTwo, #collapseThree').addClass('collapse');
    } else {
      $('#collapseOne, #collapseTwo, #collapseThree').removeClass('collapse');
    }
    return false;
  }

  // normal->change product list style (clear: both)
  function changePlistClear (a) {
    var b = $('.thumbnails li');
    b.css('clear', 'none');
    var c;
    if (a < 640) {
      return false;
    } else if (a >= 640 &&  a < 768) {
      c = 2;
    } else {
      c = 3;
    }
    b.each(function (i) {
      if (i > 0) {
        if (i % c == 0) {
          $(this).css('clear', 'both');
        }
      }
    });
    return false;
  }

  // normal->style form button align center
  $('.form-actions:not(.form-horizontal .form-actions)').css('text-align', 'center');
  
  $('#shopping-deliv-tabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });
  
  $('#userLogin .modal-body').append('<div class="alert alert-info" style="margin-bottom: 0;"><button class="close" data-dismiss="alert">&times;</button><dl class="dl-horizontal" style="margin-bottom: 0;"><dt>仮メールアドレス</dt><dd>demo@aiwell.jp</dd><dt>仮パスワード</dt><dd>password</dd></dl></div>');

});