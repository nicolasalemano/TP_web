"use strict"

$(document).ready(function (e){


    $("#formGuardar").on("submit", function(ev){
            ev.preventDefault();

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

    });

    let templateComentario;
    $.ajax({ url: 'js/templates/comentario.mst'}).done( template =>templateComentario = template);


    $("body").on("click",'.api',function (e) {
        e.preventDefault();

        cargarComentario(this.href);

    });
    function cargarComentario(url) {


        $.ajax(url)
            .done(function(comentarios) {
                console.log(comentarios);

                let rendered = Mustache.render(templateComentario, {'comentarios':comentarios});

                $('.js-carga').html(rendered);
            })
            .fail(function() {
                $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
            });
    }

    $('body').on('click', 'a.js-borrar', function() {
        event.preventDefault();
        let idComentario = $(this).data('idcomentario');
        alert("id: "+ idComentario);
        borrarComentario(idComentario);
    });

    $("body").on("click",'.partial',function (e) {
        e.preventDefault();
        partial(this.href);
    });

    $("body").on("submit", '.formJS',function (e) {
        e.preventDefault();
        guardaSubmit($(this),this.action);
    });

    $('#refresh').click(function(event){
        event.preventDefault();
      //  cargaApi();
    })


});

function cargarComentario(url) {


    $.ajax(url)
        .done(function(comentario) {

            $('li').remove();
            let rendered = Mustache.render(templateComentario, comentario);

            $('.js-carga').append(rendered);
        })
        .fail(function() {
            $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
        });
}

    function partial(url)
    {
       $.post(url, "", function (data)
       {
           $('.js-carga').html("CARGANDO........................");
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
        alert(id);
    $.ajax({
        method: "DELETE",
        url: "api/comentario/" + id
    })
        .done(function() {
            $('#comentario'+id).remove();
        })
        .fail(function() {
            alert('Imposible borrar la tarea');
        });
}
