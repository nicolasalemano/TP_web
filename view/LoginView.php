<?php
class LoginView extends View
{

  function mostrarLogin($sesion, $error = ''){
    //$pas=  password_hash("admin", PASSWORD_DEFAULT);    para consultar contraseña
    $this->smarty->assign('error', $error);
    $this->smarty->assign('sesion', $sesion);
    $this->smarty->display('templates/Login/index.tpl');
  }

}

 ?>
