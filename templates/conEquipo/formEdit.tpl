
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    {if isset($error) }
      <div class="alert alert-danger" role="alert">{$error}</div>
    {/if}
    <form  class="formulario" action="guardarEquipoEdit" method="POST">
      <div class="form-group">
  {foreach from=$equipo item=equipos}
        <label for="id">"{$equipos['id']}"</label>
        <input type="hidden" class="form-control" name="id"  value="{$equipos['id']}" >
        <label for="equipo">Equipo</label>
        <input type="text" class="form-control" name="equipo"  value="{$equipos['equipo']}" >
        <label for="nom_corto">Nombre Corto</label>
        <input type="num" class="form-control"  name="nom_corto"  value="{$equipos['nom_corto']}" >
        <label for="ganados">Partidos Ganados</label>
        <input type="number" class="form-control"  name="ganados"  value="{$equipos['ganados']}" >
        <label for="equipo">Partidos Perdidos</label>
        <input type="number" class="form-control"  name="perdidos"  value="{$equipos['perdidos']}" >
        <label for="equipo">Porcentaje</label>
        <input type="text" class="form-control"  name="porcentaje"  value="{$equipos['porcentaje']}" >
        <label for="equipo">Diferencia de partidos</label>
        <input type="text" class="form-control" name="dif_partido"  value="{$equipos['dif_partido']}" >
  {/foreach}
        <label for="equipo">Conferencia</label>
        <select name="conferencia">
          <option value="Oeste">Oeste</option>
          <option value="Este">Este</option>
        </select>
      </div>
      <button type="submit" class="btn btn-default">Actualizar</button>
    </form>
  </div>
</div>

