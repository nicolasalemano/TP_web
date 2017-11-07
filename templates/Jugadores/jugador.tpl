<table class="table table-responsive" id="tablaJugadores">
  <thead>
    <tr class="success">
      <td><b>INDEX</b></td>
      <td><b>EQUIPO</b></td>
      <td><b>NUMERO</b></td>
      <td><b>NOMBRE</b></td>
      <td><b>POSICION</b></td>
      <td><b>EDAD</b></td>
      <td><b>ALTURA</b></td>
      <td><b>PESO</b></td>
      <td><b>UNIVERSIDAD</b></td>
      <td><b>SALARIO</b></td>
      <td>
          {if $sesion!==false}
            <b>BORRAR/EDITAR</b>
          {else}
          {/if}
      </td>
    </tr>
  </thead>
  <tbody>
    {foreach from=$jugador item=jugadores}
    <tr>
      <td class="camiseta">{$jugadores['id']}</td>
      <td>{$jugadores['equipo']}</td>
      <td>{$jugadores['numero']}</td>
      <td><a class="partial" href="api/comentario/{$jugadores['id']}"</a> {$jugadores['nombre']}, {$jugadores['apellido']} <span class="glyphicon glyphicon-comment" aria-hidden="true"></span></td>
      <td>{$jugadores['posicion']}</td>
      <td>{$jugadores['edad']}</td>
      <td>{$jugadores['altura']}</td>
      <td>{$jugadores['peso']}</td>
      <td>{$jugadores['universidad']}</td>
      <td>{$jugadores['salario']} U$D</td>
      <td>
          {if $sesion!==false}
            <a class="partial" href="borrarJugador/{$jugadores['id']}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
            <a class="partial" href="editarJugador/{$jugadores['id']}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>

          {else}

          {/if}
      </td>
    </tr>
    {/foreach}
  </tbody>
</table>
