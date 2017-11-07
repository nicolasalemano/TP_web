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
        $sesion=$this->getUser();
      $jugador = $this->model->getJugador($id);
      $this->view->mostrarJugador($jugador,$sesion);
    }


    public function jugadores()
    {
      $equipoModel = new EquipoModel();
      $equipos = $equipoModel->getEquipos();
      $jugadores = $this->model->getJugadores();
      $sesion=$this->getUser();
      $this->view->mostrarJugadores($jugadores, $equipos, $sesion);
    }


    public function createJugador()
    {
        $this->verify();
        $sesion=$this->getUser();

          $equipoModel = new EquipoModel();
          $equipos = $equipoModel->getEquipos();
          $this->view->mostrarCrearJugador($equipos, $sesion);
    }

  public function storeJugador()
  {

        $this->verify();

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
  }

  public function destroyJugador($params)
  {
      $this->verify();

        $id = $params[0];
        $this->model->borrarJugador($id);
        header('Location: '.JUGADORES);

  }

  public function editJugador($params){
        $this->verify();
      $sesion=$this->getUser();

        $equipoModel = new EquipoModel();
        $equipos = $equipoModel->getEquipos();
        $id = $params[0];
        $jugador = $this->model->getJugador($id);
        $this->view->mostrarEditJugador($jugador, $equipos, $sesion);

    }

  public function updateJugador(){
      $this->verify();

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

  }


}
?>
