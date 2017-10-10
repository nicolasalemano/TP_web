{include file="header.tpl"}
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
          <h1>Lista de equipos</h1>
            {if $sesion!==false}
          <a href="agregarEquipo">Agregar equipo</a>
            {else}
            {/if}
          {include file="equipo/equipo.tpl"}
        </div>
      </div>
{include file="footer.tpl"}
