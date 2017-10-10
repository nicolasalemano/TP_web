


<form  action="..\updateJugador" method="GET">
  <div class="form-group">
    {foreach from=$jugador item=jug_detalle}

    <label for="id">ID del Jugador: "{$jug_detalle['id']}"</label><br>
    <input type="hidden" name="id" class="form-control" value="{$jug_detalle['id']}" >
    <label for="equipo">Equipo</label>
      <select name="id_equipo" class="form-control"value="{$jug_detalle['id_equipo']}">
        {foreach from=$equipos item=equipo}
          <option value="{$equipo['id']}">{$equipo['equipo']}</option>
        {/foreach}
      </select>
    <label for="numero">Numero</label>
    <input type="number" class="form-control"  name="numero" value = "{$jug_detalle['numero']}" >
    <label for="nombre">Nombre</label>
    <input type="text" class="form-control" name="nombre" value = "{$jug_detalle['nombre']}">
    <label for="apellido">Apellido</label>
    <input type="text" class="form-control"  name="apellido"  value = "{$jug_detalle['apellido']}">
    <label for="edad">Edad</label>
    <input type="number" class="form-control"  name="edad" value = "{$jug_detalle['edad']}">
    <label for="altura">Altura</label>
    <input type="number" class="form-control" name="altura" value = "{$jug_detalle['altura']}">
    <label for="peso">Peso</label>
    <input type="number" class="form-control" name="peso" value = "{$jug_detalle['peso']}">
    <label for="universidad">Universidad</label>
    <input type="text" class="form-control" name="universidad" value = "{$jug_detalle['universidad']}">
    <label for="salario">Salario</label>
    <input type="number" class="form-control" name="salario" value = "{$jug_detalle['salario']}">
    {/foreach}
    <label for="posicion">Posicion</label>
    <select name="posicion" class="form-control">
      <option value="Ala">Ala</option>
      <option value="Ala Pivot">Ala Pivot</option>
      <option value="Base">Bases</option>
      <option value="Escolta">Escolta</option>
      <option value="Pivot">Pivot</option>
    </select>
      <button type="submit" class="btn btn-default">Actualizar</button>
  </div>
</form>
