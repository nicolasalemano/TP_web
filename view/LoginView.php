<?php
class LoginView extends View
{

  function mostrarLogin( $error = ''){
   /* $pas=  password_hash("nico", PASSWORD_DEFAULT);
      echo $pas;
    die();*/
   $this->smarty->assign('error', $error);
  //  $this->smarty->assign('sesion', $sesion);
    $this->smarty->display('templates/login/index.tpl');
  }
    function verRegistro( $error = ''){
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/login/registrarse.tpl');
    }
        function verUsuarios($infoUser)
        {
            $this->smarty->assign("infouser",$infoUser);
            $this->smarty->display("login/listaUsuarios.tpl");

        }
        function mostrarEditUser($usuario)
        {
            $this->smarty->assign('user', $usuario);
            $this->smarty->display('login/editUser.tpl');

        }
}

 ?>
