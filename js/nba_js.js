"use strict"

$(document).ready(function (){
   // event.preventDefault();

    $("body").on("click",'.api',function (e) {
        e.preventDefault();
        alert(this.href);
        //partial(this.href);
    });

    $("body").on("click",'.partial',function (e) {
        e.preventDefault();
        partial(this.href);
    });

    $("body").on("submit", 'form', function (e) {
        e.preventDefault();
        //alert(this.action);
        guardaSubmit($(this),this.action);
    });
    $('#refresh').click(function(event){
        event.preventDefault();
      //  cargaApi();
    })

  /*  let templateComentario;
    $.ajax({ url: 'js/templates/comentario.mst'}).done( template => templateComentario = template);
    function cargarComentario() {

        $.ajax("api/comentario")
            .done(function(comentario) {
                alert ("aca");
                $('li').remove();
                let rendered = Mustache.render(templateComentario , comentarios);
                $('.js-carga').append(rendered);
            })
            .fail(function() {
                alert ("error");
                $('.js-carga').append('<li>Imposible cargar la lista de tareas</li>');
            });
    }*/
});
    function partial(url)
    {
       $.post(url, "", function (data)
       {
           $('.js-carga').html("CARGANDO........................");
           $('.js-carga').html(data);
           ActualizarEventos();
       })
    }
    function ActualizarEventos(){
        $("select").change (function (e) {
            e.preventDefault();
            cambioSelectEquipo(this.value);
        });
    }

    function guardaSubmit(form,action)
    {
            let serializedData = form.serialize();
            $.post(action, serializedData,  function(response) {
                if ((action.indexOf("verificarUsuario")>0))
                {
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
    {
        location.reload();
        /*$.post('cargaNav', "", function (data){
            $('.js-nav').html(data);
            ActualizarEventos();
        })*/
    }

    function cargaApi()
    {


        cargarComentario();

    }
