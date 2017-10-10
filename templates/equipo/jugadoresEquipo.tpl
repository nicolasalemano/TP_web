
    {foreach from=$jugadores item=jugador}
        <DIV class="col-md-10 col-md-offset-1">
    <ul  class="list-inline">
        <li><u><i>Jugador:</i></u> {$jugador['numero']}: <big><b>{$jugador['nombre']}, {$jugador['apellido']}</big></b>, {$jugador['posicion']} </li>


    </ul>
        </DIV>
    {/foreach}
