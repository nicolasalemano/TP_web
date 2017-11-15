"use strict"

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
        comentarioEquipo(this.href);
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
//****************PARTIAL ****************INICIO**************//
    //funcion PARTIAL RENDER
    $("body").on("click",'.partial',function (e) {
        e.preventDefault();
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
    })

    /*++++++++++++++++++++++++++++++++++++++++++ FUNCIONES ++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
    function cargarComentario(url) {

        if ($(".id-admin").length == 1) {

            $.ajax(url)
                .done(function (comentarios) {
                    console.log(comentarios);
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
                    console.log(comentarios);
                    let rendered = Mustache.render(templateComentario, {'comentarios': comentarios});
                    $('.js-carga').html(rendered);
                })
                .fail(function () {
                    $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
                });

        }
    }

    function comentarioEquipo(url){
    alert("equipo");
        cargarFormComentario(url);
        $.ajax(url)
            .done(function(comentarios) {
               // console.log(comentarios);
                let rendered = Mustache.render(templateComentario, {'comentarios':comentarios});
                $('.js-carga').html(rendered);


            })
            .fail(function() {
                $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
            });

    }

    function cargarFormComentario(url){
        alert("carga");
        let id=url.split('/');
        let ultimo=id[id.length-1];
        let input= '<input type="hidden" class="form-control" id="equipoID" name="equipo" value="'+ultimo+'">'
        $.ajax()
            .done(function(comentarios) {
                console.log(comentarios);
                let rendered = Mustache.render(templateComentarioEquipo, {'comentarios':comentarios});
                $('.js-comentario').html(rendered);

                $('#equipoID').html(input);

            })
            .fail(function() {
                $('.js-comentario').append('<li>Imposible cargar la lista de tareas</li>');
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
        }
        ActualizarEventos();
    })
}

function ActualizarEventos(){
    $(".filtro").change (function (e) {
        e.preventDefault();
        cambioSelectEquipo(this.value);
    });
}

function guardaSubmit(form,action) {

    let serializedData = form.serialize();
    $.post(action, serializedData,  function(response) {
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

function cargaApi()
{
    cargarComentario();

}
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
    alert(form_data);
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
            alert(data)

        })
        .fail(function() {

        });

    function refresh(){
        $(".refresh")
    }
}


