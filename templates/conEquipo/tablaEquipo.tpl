<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <h1>Lista de equipos</h1>
        {if $sesion!==false}
            <a class="partial" href="agregarEquipo" name="agregarEquipo">Agregar equipo</a>
        {else}
        {/if}
        <table class="table table-striped">
            <thead>
              <tr class="success">
                <td><b>Logo<b></td>
                <td><b>Equipo<b></td>
                  {if $sesion!==false}
                <td><b>Ganados<b></td>
                <td><b>Perdidos<b></td>
                <td><b>Porcentaje<b></td>
                <td><b>Diferencia de partidos<b></td>
                <td><b>Conferencia<b></td>
                <td><b>Nombre Corto<b></td>
                <td><b>Borrar/Editar<b></td>
                  {else}
              </tr>
              {/if}
            </thead>
            <tbody>
              {foreach from=$equipo item=equipos}
                <tr>
                  <td><a class="partial" href="detalleequipo/{$equipos['id']}"><img src="images/chica/{$equipos['nom_corto']}.png" alt="{$equipos['nom_corto']}"></a></td>
                  <td><a class="partial" href="detalleequipo/{$equipos['id']}">{$equipos['equipo']}</a></td>
                    {if $sesion!==false}
                  <td>{$equipos['ganados']}</td>
                  <td>{$equipos['perdidos']}</td>
                  <td>{$equipos['porcentaje']}</td>
                  <td>{$equipos['dif_partido']}</td>
                  <td>{$equipos['conferencia']}</td>
                  <td>{$equipos['nom_corto']}</td>
                  <td>
                          <a class ="partial" href="borrarEquipo/{$equipos['id']}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                          <a class ="partial" href="editarEquipo/{$equipos['id']}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                      {else}
                  </td>
                    {/if}
                </tr>
              {/foreach}
            </tbody>
        </table>
    </div>
</div>