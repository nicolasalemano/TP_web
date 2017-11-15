
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <h3>Iniciar sesión</h3>
          <form action="verificarUsuario" class="formJS" method="post">
            <div class="form-group">
              <label for="usuario">Usuario</label>
              <input type="text" class="form-control" id="usuario" name="usuario" placeholder="admin" required>
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name ="password" placeholder="Password" required>
            </div>
            {if !empty($error) }
              <div class="alert alert-danger" role="alert">{$error}</div>
            {/if}
            <button type="submit" class="btn btn-default">Login</button>
          </form>

        </div>
      </div>



