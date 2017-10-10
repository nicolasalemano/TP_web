/*
"use strict"


$(document).ready(function (){
    let url="HOME";
    $.ajax({
        url:url,
        success:function (data) {
            $('#cargaDiv').html(data);
            partial();
        },
        error:function(){
            $('#cargaDiv').html('<h1>Error inesperado</h1>');
        }
    });
});

function partial(){
    $('.partial').on('click',function(evento){
        evento.preventDefault();


        let url = "/"
        url += $(this).attr("href");


        $.ajax({
            url:url,
            success:function(data){
                $('#cargaDiv').html(data);
                partial();

            },
            error:function(){
                $('#cargaDiv').html('<h1>Error inesperado</h1>');
            }
        });
        $('#cargaDiv').html('Cargando.......');
    });

}
*/