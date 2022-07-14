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
      // console.log(data);

    });
  });
});








// function search(){
  
  // const submit = document.getElementById("submit");
  // const searchRender = document.getElementById("search-render")
  //   submit.addEventListener("click", (e) => {
  //     e.preventDefault();
  //     const form = document.getElementById("detailed-search-form");
  //     const formData = new FormData(form);
  //     const XHR = new XMLHttpRequest();
  //     XHR.open("POST", "/plans", true);
  //     XHR.responseType = "json";
  //     XHR.send(formData);
  //     XHR.onload = () => {
  //       searchRender.setAttribute("style", "display: block;")
     
  //       console.log(XHR.response);

        
  //     }
      
  //   });
//   }
// window.addEventListener("load", search);