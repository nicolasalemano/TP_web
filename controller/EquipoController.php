<?php
include_once('model/EquipoModel.php');
include_once('view/EquipoView.php');



class EquipoController extends SecuredController
{



  function __construct()
  {
    parent::__construct();
    $this->view = new EquipoView();
    $this->model = new EquipoModel();
  }



//funciona partioal
  function inicio(){

      $var= $this->baseURL;
      $sesion=$this->getUser();
     /* $permisos=$_SESSION['permissions'];
      echo $permisos;
      die();*/
      $this->view->inicio($sesion);
  }
//funciona partial
  public function home()
  {

      $sesion=SecuredController::getUser();
      $this->view->mostrarHome($sesion);
  }

                    //desestimada
  public function index()
  {
    $equipo = $this->model->getEquipos();
    $sesion=$this->getUser();
    $this->view->mostrarEquipo($equipo,$sesion);
  }

  //Funcion para traer todos los equipos
    //Funciona partial
  public function equipos()
  {
      $sesion=$this->getUser();
    $equipo = $this->model->getEquipos();
    $this->view->mostrarEquipos($equipo,$sesion);
  }


//Funcion para Mostrar el formulario para la creacion de un nuevo equipo

  public function createForm()
  {
      $sesion=$this->getUser();
      $this->verify();
       $this->view->mostrarCrearEquipoForm($sesion);

  }

  //Funcion para guardar un equipo
  public function store()
  {
      $this->verify();
        $equipo = $_POST['equipo'];
        $nom_corto = $_POST['nom_corto'];
        $ganados = $_POST['ganados'];
        $perdidos = $_POST['perdidos'];
        $porcentaje = $_POST['porcentaje'];
        $dif_partido = $_POST['dif_partido'];
        $conferencia = $_POST['conferencia'];

        if(isset($_POST['equipo']) && !empty($_POST['equipo'])){
          $this->model->guardarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
          header('Location: '.EQUIPO);
        }
        else{
          $this->view->errorCrear("El campo nombre del equip es requerido es requerido", $equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
        }

  }

  //funcion para eliminar un equipo
  public function destroy($params)
  {
      $this->verify();
          $id_equipo = $params[0];
          $this->model->borrarEquipo($id_equipo);
          header('Location: ' . EQUIPO);

  }

//Funcion para mostrar el formulario de edicion de equipo
  public function EditEquipo($params){
      $id_equipo = $params[0];
      $sesion=$this->getUser();
      $this->verify();
          $equipo = $this->model->verEquipo($id_equipo);
          $this->view->editFormEquipoForm($equipo, $sesion);

  }


    public function updateEquipo()
    {
        $this->verify();


            $id = $_POST['id'];
            $equipo = $_POST['equipo'];
            $nom_corto = $_POST['nom_corto'];
            $ganados = $_POST['ganados'];
            $perdidos = $_POST['perdidos'];
            $porcentaje = $_POST['porcentaje'];
            $dif_partido = $_POST['dif_partido'];
            $conferencia = $_POST['conferencia'];

            $this->model->actualizarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$id);
           header('Location: '.equipo);

    }



    public function equipo($params)
    {
        $sesion=$this->getUser();
        $id_equipo= $params[0];
        $infoEquipo= $this->model->verEquipo($id_equipo);
        $JugadorModel = new JugadorModel();
        $jugadores = $JugadorModel->getJugadorEquipo($id_equipo);
        $this->view->mostrarInfoEquipo($infoEquipo, $jugadores,$sesion);

    }

    public function getConferencia($params)
    {
        $sesion=$this->getUser();
        $conf= $params[0] ;
        $listadoEquipo = $this->model->getConferencia($conf);
        $this->view->mostrarConferencia($listadoEquipo,$sesion);
    }


}

 ?>
