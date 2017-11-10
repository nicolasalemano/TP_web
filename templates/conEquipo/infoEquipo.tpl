
<div class="row">
    <div class="col-md-12">
        {include file="conEquipo/detalleEquipo.tpl"}
        <h1>JUGADORES</h1>
        {include file="conEquipo/jugadoresEquipo.tpl"}
    </div>
</div>



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