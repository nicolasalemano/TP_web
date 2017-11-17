"use strict"
let URL_COMENTARIO="";
let INTERVAL;
$(document).ready(function (e){

    let templateComentario;
    $.ajax({ url: 'js/templates/comentario.mst'}).done( template =>templateComentario = template);
    let templateComentarioAdmin;
    $.ajax({ url: 'js/templates/comentarioAdmin.mst'}).done( template =>templateComentarioAdmin = template);
    let templateComentarioEquipo;
    $.ajax({ url: 'js/templates/comentarioEquipo.mst'}).done( template =>templateComentarioEquipo = template);


    //****************IMAGENES****************INICIO**************//

    //Function para borrar una imagen
    $("body").on("click", "a.imagen",function (ev) {
        ev.preventDefault();

        borrarImagen(this.id);
    });

//fucntion para guardar una imagen
    $(".formGuardar").on("submit", function(ev){
        ev.preventDefault();

        guardarImagen();
    });
//****************IMAGENES****************FIN**************//

// ****************COMENTARIO****************INICIO**************//

    $("body").on("click",".comentarioEquipo", function(e){
        e.preventDefault()
        cargarFormComentario(this.href);
    });

    //funcion MUESTRA LOS COMENTARIOS
    $("body").on("click",'.api',function (e) {
        e.preventDefault();
        cargarComentario(this.href);
    });

    //funcion BORRAR COMENTARIO API
    $('body').on('click', 'a.js-borrar', function() {
        event.preventDefault();
        let idComentario = $(this).data('idcomentario');
        if($(".id-admin").length == 1){
            borrarComentario(idComentario);
        }
    });
    //crear comentario api
    $("body").on("submit", '.guardarComentario',function (e) {
        e.preventDefault();
        crearComentario($(this),this.action);
    });
//****************PARTIAL ****************INICIO**************//
    //funcion PARTIAL RENDER
    $("body").on("click",'.partial',function (e) {
        e.preventDefault();
        clearInterval(INTERVAL);
        partial(this.href);
    });

//****************PARTIAL****************FIN**************//
//funcion GUARDAR SUBMIT GENEREAL
    $("body").on("submit", '.formJS',function (e) {
        e.preventDefault();
        guardaSubmit($(this),this.action);
    });


    $('#refresh').click(function(event){
        event.preventDefault();
        //  cargaApi();
    });

    /*++++++++++++++++++++++++++++++++++++++++++ FUNCIONES ++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/


    function cargarComentario(url) {
        clearInterval(INTERVAL);
        function refresh() {

            if ($(".id-admin").length == 1) {

                $.ajax(url)
                    .done(function (comentarios) {

                        let rendered = Mustache.render(templateComentarioAdmin, {'comentarios': comentarios});
                        $('.js-carga').html(rendered);
                    })
                    .fail(function () {
                        $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
                    });
            }
            else {
                $.ajax(url)
                    .done(function (comentarios) {

                        let rendered = Mustache.render(templateComentario, {'comentarios': comentarios});
                        $('.js-carga').html(rendered);
                    })
                    .fail(function () {
                        $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
                    });

            }
        }
        refresh();
        INTERVAL = setInterval(refresh, 2000);
    }


    function comentarioEquipo(URL_COMENTARIO){

        clearInterval(INTERVAL);
        function refresh() {
            $.ajax({
                url: URL_COMENTARIO

            })
                .done(function (comentarios) {

                    let rendered = Mustache.render(templateComentario, {'comentarios': comentarios});
                    $('.js-carga').html(rendered);
                })
                .fail(function () {
                    $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
                });
        }
        refresh();
        INTERVAL = setInterval(refresh, 2000);

    }
    function AddZero(num) {
        return (num >= 0 && num < 10) ? "0" + num : num + "";
    }
    function getDataTime(){
        let now = new Date();
        let strDateTime = [[AddZero(now.getFullYear()),
                            AddZero(now.getMonth() + 1),
                            now.getDate()].join("-"),
                        [AddZero(now.getHours()),
                        AddZero(now.getMinutes()),
                        AddZero(now.getSeconds())].join(":"),
                 ].join(" ");
        return strDateTime;
    }
//2017-11-10 07:07:35
// 2017-11-15 23:01 23
    function cargarFormComentario(url){
        let id=url.split('/');
        let ultimo=id[id.length-1];

        URL_COMENTARIO=url;
        comentarioEquipo(url);

        let hora=getDataTime();
        $.ajax()
            .done(function(comentarios) {
                let rendered = Mustache.render(templateComentarioEquipo, {'comentarios':comentarios});
                $('.js-comentario').html(rendered);

                $('#equipoID').val(ultimo);
                $('#fecha').val(hora);
                ActualizarEventos();
            })

            .fail(function() {
                $('.js-comentario').append('<li>Imposible cargar la lista de tareas</li>');
            });
    }



    function crearComentario() {

        let captcha = grecaptcha.getResponse();

        let comentario = {
            "captcha": captcha,
            "id_equipo": $('#equipoID').val(),
            "fecha": $('#fecha').val(),
            "comentario": $('#comentario').val(),
            "puntuacion":  $('#puntuacion').val()
        };

        $.ajax({
            method: "POST",
            url: "api/comentario",
            data: JSON.stringify(comentario)
        })
            .done(function(response) {

                console.log(response);

            })
            .fail(function(data) {
                console.log(data);
                alert(data+'  Imposible mandar el comentario');
            });
    }

});



function partial(url)
{
    $.post(url, "", function (data)
    {

        $('.js-carga').html(data);
        if((url.indexOf("logout") > 0)) {
            actualizaNav();
           // clearInterval(INTERVAL);
        }
        ActualizarEventos();
    })


}

function ActualizarEventos(){
    $(".filtro").change (function (e) {
        e.preventDefault();
        cambioSelectEquipo(this.value);

    });
    $.getScript("https://www.google.com/recaptcha/api.js");

}

function guardaSubmit(form,action) {

    let serializedData = form.serialize();

    console.log(serializedData);
    $.post(action, serializedData,  function(response) {
        alert ("cuardado")
        if ((action.indexOf("verificarUsuario") > 0)) {
            actualizaNav();
        }
        $('.js-carga').html(response);
    });
}

function cambioSelectEquipo(valor)
{
    let url=valor;
    partial(valor);
}

function actualizaNav()
{        location.reload();    }


function borrarComentario(id) {

    $.ajax({
        method: "DELETE",
        url: "api/comentario/" + id

    })
        .done(function() {
            $('#comentario'+id).remove();
            setTimeout(update, 10000);
        })
        .fail(function() {
            alert('Imposible borrar la tarea');
        });
}





function guardarImagen(){
    let form_data = new FormData(this);

    $.ajax({
        url: "guardarEquipo",
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function(data)
        {
            $('.js-carga').html(data);
        }
    });
    return false;
}

function borrarImagen(id){

    let url="borrarImagen/"+id;

    $.ajax({
        url: url,
    })
        .done(function(data) {
            $('#borrarImagen'+id).remove();

        })
        .fail(function() {
        });
    function refresh(){
        $(".refresh")
    }
}