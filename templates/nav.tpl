<div class = "row js-nav">
<div id="main_" class="logo">
    <img class="pequena" src="images/logo_nba.png" alt="logo">
</div>
</div>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand partial" href="HOME" name="HOME">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="partial"  href="equipo" name="equipo">Equipos <span class="sr-only">(current)</span></a></li>
                    <li><a class="partial"  href="jugadores" name="jugadores">jugadores</a></li>
                    <li><a class="partial"  href="api/comentario" name="api/comentario">Comentarios</a></li>
                    {if $permisos=1}
                    <li><a class="partial"  href="adminUser" name="adminUser">ADMIN</a></li>
                    {/if}
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    {if $sesion}
                        <li>Usuario logueado: <b>{$sesion}</b></li>
                        <li><a class="partial" href="logout"name="logout">Logout</a></li>
                    {else}
                        <li>Usuario logueado: <b>Invitado</b></li>
                        <li><a class="partial" href="login" name="login">Iniciar Sesión</a></li>
                        <li><a class="partial" href="registrarse" name="registrarse">Registrarse</a></li>
                    {/if}
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>