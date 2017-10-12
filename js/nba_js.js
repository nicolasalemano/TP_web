
"use strict"

$(document).ready(function (){


    $("body").on("click",'.partial',function (e) {
        e.preventDefault();
        partial(this.href);
    });


    $("body").on("submit", 'form', function (e) {
        e.preventDefault();
        guardaSubmit($(this),this.action);

    });

});


function partial(url) {

    $.post(url, "", function (data) {
        $('.js-carga').html("CARGANDO........................");

        $('.js-carga').html(data);
    })
}
function guardaSubmit(form,action) {

        let serializedData = form.serialize();
        $.post(action, serializedData,  function(response) {
            $('.js-carga').html(response);
        });

}















/*



 $("document").ready(function(){
 renderSection("index");
 });

 $(".partial").on("click",function (e) {
 e.preventDefault();
 renderSection(this.name);
 });

 function renderSection(name){
 $.post(name,"", function (response) {
 $("#js-carga").html(response);

 })
 }




*/