{foreach from=$infoEquipo item=equipo}
    <h1>Informacion del equipo: <b>{$equipo['equipo']}</b></h1>
{/foreach}
<ul id="detalleEquipo" class="list-inline">
    {foreach from=$infoEquipo item=equipo}
        <li><b>Equipo:</b> {$equipo['equipo']}</li>
        <li><b>Ganados:</b> {$equipo['ganados']}</li>
        <li><b>Perdidos:</b> {$equipo['perdidos']}</li>
        <li><b>Porcentaje:</b> {$equipo['porcentaje']}</li>
        <li><b>Diferencia de partidos:</b> {$equipo['dif_partido']}</li>
        <li><b>Conferencia:</b> {$equipo['conferencia']}</li>
        <li><b>Nombre corto:</b> {$equipo['nom_corto']}</li>

    {/foreach}
</ul>