<div class="row">
    <button id="refresh" type="button" class="btn btn-default btn-xs pull-right" aria-label="Refresh">
        <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> </button>
    <div class="col-md-10 col-md-offset-1">

        <h1>COMENTARIOS</h1>
        {if $sesion!==false}
            <a class="partial" href="agregarComentario" name="agregarComentario">Agregar Comentario</a>
        {else}
        {/if}
        <table class="table table-striped">
            <thead>
                <tr>
                    <td>Equipo</td>
                    <td>Comentario</td>
                    <td>Fecha</td>
                    <td>Usuario</td>
                </tr>
            </thead>
            <tbody>
            {foreach from=$comentarios item=comentario}
                <tr>
                    <td>{$comentario['equipo']}</td>
                    <td>{$comentario['comentario']}</td>
                    <td>{$comentario['fecha']}</td>
                    <td>{$comentario['usuario']}</td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
</div>