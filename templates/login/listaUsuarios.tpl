

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h4>PERMISOS</h4>
        <table class ="table table-bordered">
            <thead>
            <tr >
            <td><b>TIPO</b></td>
            <td><b>PERMISOS</b></td>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>0</td>
                    <td>usuario comun sin permisos</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Usuario administrador</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<h2>LISTADO DE USUARIOS</h2>
<table class="table table-striped">
    <thead>
    <tr class="success">
        <td><b>ID<b></td>
        <td><b>USUARIO<b></td>
        <td><b>NOMBRE<b></td>
        <td><b>PERMISOS<b></td>
        <td><b>Borrar/Editar<b></td>
    </tr>
    </thead>
    <tbody>
    {foreach $infouser as $usuario}
        <tr>
                <td>{$usuario['id']}</td>
                <td>{$usuario['user']}</td>
                <td>{$usuario['name']}</td>
                <td>{$usuario['permisos']}</td>
                <td>
                    <a class ="partial" href="borrarUsuario/{$usuario['id']}"><span class="glyphicon glyphicon-trash" aria-hidden="true" alt title="Borrar Equipo"></span></a>
                    <a class ="partial" href="editarUsuario/{$usuario['id']}"><span class="glyphicon glyphicon-pencil" aria-hidden="true" alt title="Editar Equipo"></span></a>
                </td>
        </tr>
    {/foreach}
    </tbody>
</table>
</div>
