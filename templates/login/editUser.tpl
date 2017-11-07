
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        {if isset($error) }
            <div class="alert alert-danger" role="alert">{$error}</div>
        {/if}
        <form  class="formulario" action="guardarEditUser" method="POST">
            <div class="form-group">
                {foreach from=$user item=usuario}
                    <label for="id">"{$usuario['id']}"</label>
                    <input type="hidden" class="form-control" name="id"  value="{$usuario['id']}" >
                    <label for="usuario">Usuario</label>
                    <input type="text" class="form-control" name="usuario"  value="{$usuario['user']}" >
                    <label for="name">Nombre</label>
                    <input type="num" class="form-control"  name="name"  value="{$usuario['name']}" >
                    <label for="permisos">Permisos</label>
                    <select name="permisos">
                        <option value="1">Admin</option>
                        <option value="0">Usuario</option>
                    </select>
                {/foreach}
            </div>
            <button type="submit" class="btn btn-default">Actualizar Usuario</button>
        </form>
    </div>
</div>