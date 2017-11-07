"use strict"

$(document).ready(function (){

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
/*
    function cargaApi()
    {
        var element = '<li id="tarea' + tarea.id_tarea + '"class="list-group-item">'
        if(tarea.completado == 1)
            element += '<s>' + tarea.titulo + ':' + tarea.descripcion + '</s>';
        else
            element += tarea.titulo + ':' + tarea.descripcion;
        element += '<a href="borrarTarea/' + tarea.id_tarea + '"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>';
        element += '<a href="finalizarTarea/' + tarea.id_tarea + '"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></a>'
        element += '</li>';
        return element;
    }*/
