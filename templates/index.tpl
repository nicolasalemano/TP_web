<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>{{$titulo}}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">

</head>
<body>
<div class = "row">
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
                <a class="navbar-brand" href="HOME">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="partial"  href="equipo">Equipos <span class="sr-only">(current)</span></a></li>
                    <li><a class="partial"  href="jugadores">jugadores</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    {if $sesion}
                        <li>Usuario logueado: <b>{$sesion}</b></li>
                        <li><a class="partial" href="logout">Logout</a></li>
                    {else}
                        <li>Usuario logueado: <b>Invitado</b></li>
                        <li><a class="partial" href="login">Iniciar Sesión</a></li>
                    {/if}
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="cargaDiv">

        <!-- CONTENIDO-->

    </div><!-- /.cargaDiv -->
    </div><!-- /.container -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/nba_js.js" charset="utf-8"></script>
</body>
</html>
