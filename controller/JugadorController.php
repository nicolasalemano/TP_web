<?php
include_once('model/jugadorModel.php');
include_once('view/JugadorView.php');
//define('Jugadores', 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/jugadores');


class JugadorController extends SecuredController
{
  // private $view;
  // private $model;

    function __construct()
    {
      parent::__construct();
      $this->view = new JugadorView();
      $this->model = new JugadorModel();


    }

    public function jugador($params){
      $id = $params[0];
        $sesion=SecuredController::getUser();
      $jugador = $this->model->getJugador($id);
      $this->view->mostrarJugador($jugador,$sesion);
    }


    public function jugadores()
    {
      $equipoModel = new EquipoModel();
      $equipos = $equipoModel->getEquipos();
      $jugadores = $this->model->getJugadores();
      $sesion=SecuredController::getUser();
      $this->view->mostrarJugadores($jugadores, $equipos, $sesion);
    }


    public function createJugador()
    {
        $sesion=SecuredController::getUser();
        if ($sesion!==false) {
          $equipoModel = new EquipoModel();
          $equipos = $equipoModel->getEquipos();
          $this->view->mostrarCrearJugador($equipos, $sesion);
        }else
        {
            header('Location: ' . LOGIN);
        }
    }

  public function storeJugador()
  {


      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
        $id_equipo =$_POST['id_equipo'];
        $nombre =$_POST['nombre'];
        $apellido =$_POST['apellido'];
        $posicion =$_POST['posicion'];
        $numero =$_POST['numero'];
        $edad =$_POST['edad'];
        $altura =$_POST['altura'];
        $peso =$_POST['peso'];
        $universidad =$_POST['universidad'];
        $salario =$_POST['salario'];

        $this->model->crearJugador($id_equipo,$nombre,$apellido,$posicion,$numero,$edad,$altura,$peso,$universidad,$salario);

       header('Location: '.JUGADORES);
      }else
    {
    header('Location: ' . LOGIN);
    }

  }

  public function destroyJugador($params)
  {
      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
        $id = $params[0];
        $this->model->borrarJugador($id);
        header('Location: '.JUGADORES);
      }else
      {
          header('Location: ' . LOGIN);
      }
  }

  public function editJugador($params){
      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
        $equipoModel = new EquipoModel();
        $equipos = $equipoModel->getEquipos();
        $id = $params[0];
        $jugador = $this->model->getJugador($id);
        $this->view->mostrarEditJugador($jugador, $equipos, $sesion);
        // $this->updateJugador();
      }else{
          header('Location: ' . LOGIN);
      }

    }

  public function updateJugador(){
      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
          $id =$_POST['id'];
          $id_equipo =$_POST['id_equipo'];
          $nombre =$_POST['nombre'];
          $apellido =$_POST['apellido'];
          $posicion =$_POST['posicion'];
          $numero =$_POST['numero'];
          $edad =$_POST['edad'];
          $altura =$_POST['altura'];
          $peso =$_POST['peso'];
          $universidad =$_POST['universidad'];
          $salario =$_POST['salario'];
        $this->model->actualizaJugador($id_equipo, $nombre, $apellido, $posicion, $numero, $edad, $altura, $peso, $universidad, $salario,$id);
        header('Location: '.JUGADORES);
      }else{
          header('Location: ' . LOGIN);
      }
  }


}
?>
