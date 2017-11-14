
<div class="row">
    <div class="col-md-12">
        {include file="conEquipo/detalleEquipo.tpl"}
        <h1>JUGADORES</h1>
        {include file="conEquipo/jugadoresEquipo.tpl"}
    </div>
</div>

<!-- INICIO - MUESTRA DE FOTOS-->


{assign var=val value=0}


<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->

        <ol class="carousel-indicators">
            {foreach $imagen as $imag}
                {if $val==0}
                    <li data-target="#myCarousel" data-slide-to="{$val}" class=""active></li>
                {else}
                    <li data-target="#myCarousel" data-slide-to="{$val}"></li>
                {/if}
                {assign var=val value=$val+1}
            {/foreach}
        </ol>
        <!-- Wrapper for carousel items -->
        {assign var=primero value=0}
        <div class="carousel-inner">
            {foreach $imagen as $imag}
                {if $primero==0}
                    <div class="item active">
                        <img  src="{$imag["ruta"]}" alt="imagen {$primero}">
                    </div>
                {else}
                    <div class="item">
                        <img  src="{$imag["ruta"]}" alt="imagen {$primero}">
                    </div>
                {/if}
                {assign var=primero value=$val+1}
            {/foreach}
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>

</div>




<!-- FIN - MUESTRA DE FOTOS-->

<div class="row">
    <div class="col-md-10 col-md-offset-2">
        <div class="js-equipoComentario">
            <!--donde va a ir los comentarios -->
        </div>
    </div>
</div>


{if $permisos}
    <div class = "row">
        <div class ="col-md-6 col-md-offset-3">
            <h2>Agregar iimagen</h2>
            <form action="guardarImagen" id="formGuardar" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    {foreach $infoEquipo as $equipo}
                        <label for="equipoComentario">Equipo: {$equipo["equipo"]}</label>
                        <input type="hidden" class="form-control" id="equipoComentarioId" name="equipoID"  value={$equipo["id"]}>
                    {/foreach}
                </div>

                <div class="form-group">
                    <label for="imagen">Imagen</label>
                    <input type="file" id="ima" name="ima[]" multiple>
                </div>
                <div class="form-group">
                    <label for="usuario">{$sesion}</label>

                </div>
                <button type="submit" class="btn btn-default">Crear</button>
            </form>
        </div>

<br><br>
    <div class="row">
        <div class ="col-md-6 col-md-offset-3">
            <h2>SELECCIONE IMAGEN PARA BORRAR</h2>
            <form action="borrarImagen" id="borrarImagenForm" method="POST" >
                <ol>
                    {foreach $imagen as $imag}
                        <li><input type="checkbox" class="checkbox" name="check_list[]" value="{$imag['id']}"> <img class= "imagenChica"src="{$imag['ruta']}"></li>
                    {/foreach}
                </ol>
                <button type="submit" class="btn btn-default">Borrar</button>
            </form>
        </div>
    </div>


{else}
    <h1>Sin permisos para subir o eliminar imagen</h1>
{/if}