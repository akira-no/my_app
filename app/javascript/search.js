window.addEventListener("load", function() {
  $(function() {
    $('.js-text_field').on('keyup', function() {

      var item = $.trim($(this).val());

      $.ajax({
        type: 'GET',
        url: '/plans/searches',
        data: { item: item },
        dataType: 'json'
      })

      .done(function (data) {
        $('.search-field-ul li').remove();

        $(data).each(function(i,plan) {
          $('.search-field-ul').append(
            `<li class = "search">${plan.item}</li>`
          )
        });
      })
    });
  });
});