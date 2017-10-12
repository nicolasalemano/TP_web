
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    {if isset($error) }
      <div class="alert alert-danger" role="alert">{$error}</div>
    {/if}
    <form class="formulario" id="guardarjugador" action="guardarJugador" method="post">
      <div class="form-group">
        <label for="equipo">Equipo</label>
        <select name="id_equipo" class="form-control">
          {foreach from=$equipos item=equipo}
            <option value="{$equipo['id']}">{$equipo['equipo']}</option>
          {/foreach}
        </select>
        <label for="numero">Numero</label>
        <input type="number" class="form-control"  name="numero" placeholder="Número de la camiseta">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" name="nombre" placeholder="Nombre del Jugador">
        <label for="apellido">Apellido</label>
        <input type="num" class="form-control"  name="apellido"  placeholder="Apellido del Jugaor">
        <label for="posicion">Posicion</label>
          <select name="posicion" class="form-control">
            <option value="Ala">Ala</option>
            <option value="Ala Pivot">Ala Pivot</option>
            <option value="Base">Bases</option>
            <option value="Escolta">Escolta</option>
            <option value="Pivot">Pivot</option>
          </select>
        <label for="edad">Edad</label>
        <input type="number" class="form-control"  name="edad" placeholder="Edad del Jugador">
        <label for="altura">Altura</label>
        <input type="number" class="form-control" name="altura" placeholder="Altura">
        <label for="peso">Peso</label>
        <input type="number" class="form-control" name="peso" placeholder="Peso">
        <label for="universidad">Universidad</label>
        <input type="text" class="form-control" name="universidad" placeholder="Universidad">
        <label for="salario">Salario</label>
        <input type="number" class="form-control" name="salario" placeholder="Salario">
      </div>
      <button type="submit" class="btn btn-default ">Guardad</button>
    </form>
  </div>
</div>

