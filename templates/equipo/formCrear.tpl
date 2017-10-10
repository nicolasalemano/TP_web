{include file="header.tpl"}
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    {if isset($error) }
      <div class="alert alert-danger" role="alert">{$error}</div>
    {/if}
    <form action="guardarEquipo" method="post">
      <div class="form-group">
        <label for="equipo">Equipo</label>
        <input type="text" class="form-control" name="equipo"  value="{$equipo}" placeholder="Nombre del equipo">
        <label for="nom_corto">Nombre Corto</label>
        <input type="num" class="form-control"  name="nom_corto"  value="{$nom_corto}" placeholder="Nombre del equipo corto">
        <label for="ganados">Partidos Ganados</label>
        <input type="number" class="form-control"  name="ganados"  value="{$ganados}" placeholder="Cantidad de partidos ganados">
        <label for="equipo">Partidos Perdidos</label>
        <input type="number" class="form-control"  name="perdidos"  value="{$perdidos}" placeholder="Cantidad de partidos perdidos">
        <label for="equipo">Porcentaje</label>
        <input type="text" class="form-control"  name="porcentaje"  value="{$porcentaje}" placeholder="Porcentaje .654">
        <label for="equipo">Diferencia de partidos</label>
        <input type="text" class="form-control" name="dif_partido"  value="{$dif_partido}" placeholder="Diferencia de partidos">
        <label for="equipo">Conferencia</label>
        <select name="conferencia">
          <option value="Oeste">Oeste</option>
          <option value="Este">Este</option>
        </select>
      </div>
      <button type="submit" class="btn btn-default">Guardad</button>
    </form>
  </div>
</div>
{include file="footer.tpl"}
