
<div class="row">
    <div class="col-md-12">
        {include file="conEquipo/detalleEquipo.tpl"}
        <h1>JUGADORES</h1>
        {include file="conEquipo/jugadoresEquipo.tpl"}
    </div>
</div>

<!-- INICIO - MUESTRA DE FOTOS-->


<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="d-block img-fluid" src="..." alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="..." alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="..." alt="Third slide">
        </div>
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

<div class = "row">
    <div class ="col-md-6 col-md-offset-3">
        <h2>Agregar un comentario</h2>
        <form action="comentario" class="formJS" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {foreach $infoEquipo as $equipo}
                    <label for="equipoComentario">Equipo: {$equipo["equipo"]}</label>
                    <input type="hidden" class="form-control" id="equipoComentario" name="equipoComentario"  value={$equipo["equipo"]}>
                    <input type="hidden" class="form-control" id="equipoComentarioId" name="equipoComentarioId"  value={$equipo["id"]}>
                {/foreach}
            </div>
            <div class="form-group">
                <label for="comentario">Comentario</label>
                <textarea name="comentarioEquipo" id="comentario"rows="8" cols="50" placeholder="comentario sobre el equipo"></textarea>
            </div>
            <div class="form-group">
                <label for="imagen">Imagen</label>
                <input type="file" id="imagenes" name="imagenes[]" multiple>
            </div>
            <div class="form-group">
                <label for="usuario">{$sesion}</label>
                <input type="checkbox" id="completada" name="completada" value="1">
            </div>
            <button type="submit" class="btn btn-default">Crear</button>
        </form>

    </div>
</div>