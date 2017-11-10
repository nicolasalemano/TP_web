<?php
include_once('model/LoginModel.php');
include_once('view/LoginView.php');
require_once ('SecuredController.php');

class LoginController extends SecuredController
{

      function __construct()
      {
          parent::__construct();
        $this->view = new LoginView();
        $this->model = new LoginModel();
      }

      public function index()
      {
          $this->view->mostrarLogin();
      }

      public function verify()
      {
          $userName = $_POST['usuario'];
          $password = $_POST['password'];
          $this->verificaSetea($userName,$password);
      }

      public function verificaSetea($userName,$password)
      {
          if(!empty($userName) && !empty($password)){
              $user = $this->model->getUser($userName);
              if((!empty($user)) && password_verify($password, $user[0]['password'])) {
                  session_start();
                  $_SESSION['USER'] = $userName;
                  $_SESSION['LAST_ACTIVITY'] = time();
                  $_SESSION['permissions']= $user[0]["permisos"];
                  define('SESION', 1);
                  header('Location: '.HOME);
              }
              else{
               $this->view->mostrarLogin('Usuario o Password incorrectos');
              }
          }
      }

      public function destroy()
      {
        session_start();
        session_destroy();
        define('SESION', 0);
        header('Location: '.HOME);
      }

      public function mostrarRegistro()
      {
          $this->view->verRegistro();

      }

      public function createUser()
      {
          $nomApe = $_POST['nomApe'];
          $userName = $_POST['usuario'];
          $password = $_POST['password'];
          $user=$this->model->getUser($userName);
          if($user)
          {
              $this->view->mostrarLogin('Ingreso un usuario existente');
          }
          else
          {
              $pas=  password_hash($password, PASSWORD_DEFAULT);
             $resultado= $this->model->crearUsuario($nomApe,$userName,$pas);
              $this->verificaSetea($userName,$password);
          }
      }


      public function adminUser()
      {

          $permisos = $_SESSION['permissions'];

          if($permisos==1)
          {
              $usuarios=$this->model->getUsers();
              $this->view->verUsuarios($usuarios);
          }

        $usuarios = $this->model->getUsers();

      }
      public function editUser($param)
      {
          $permisos = $_SESSION['permissions'];

          if($permisos==1) {
              $id = $param[0];

              $usuario = $this->model->getUserId($id);
              $this->view->mostrarEditUser($usuario);
          }

      }
      public function deleteUser($param)
      {
          $permisos = $_SESSION['permissions'];

          if($permisos==1) {
              $id = $param[0];
              $this->model->borrarUsuario($id);
              header('Location: ' . ADMIN);
          }
      }
      public function  guardarEditUser()
      {
          $permisos = $_SESSION['permissions'];

          if($permisos==1) {
              $id = $_POST['id'];
              $user = $_POST['usuario'];
              $name = $_POST['name'];
              $permisos = $_POST['permisos'];
              if ($user) {
                  $this->model->guardarEditUser($id, $user, $name, $permisos);
                  header('Location: ' . ADMIN);
              }
          }
      }
}

 ?>
