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

  public function home(){
      $sesion=SecuredController::getUser();
      $this->view->mostrarHome($sesion);
  }

  public function index()
  {
    $equipo = $this->model->getEquipos();
    $sesion=SecuredController::getUser();
    $this->view->mostrarEquipo($equipo,$sesion);
  }

  //Funcion para traer todos los equipos
  public function equipos()
  {
      $sesion=SecuredController::getUser();
    //$sesion = $_SESSION['USER'];
    $equipo = $this->model->getEquipos();
    $this->view->mostrarEquipos($equipo,$sesion);
  }


//Funcion para Mostrar el formulario para la creacion de un nuevo equipo
  public function createForm()
  {
      $sesion=SecuredController::getUser();
   if ($sesion!==false) {
       $this->view->mostrarCrearEquipoForm($sesion);
   }
   else{
       header('Location: '.LOGIN);
   }
  }

  //Funcion para guardar un equipo
  public function store()
  {
    $sesion=SecuredController::getUser();
    if ($sesion!==false) {
        $equipo = $_POST['equipo'];
        $nom_corto = $_POST['nom_corto'];
        $ganados = $_POST['ganados'];
        $perdidos = $_POST['perdidos'];
        $porcentaje = $_POST['porcentaje'];
        $dif_partido = $_POST['dif_partido'];
        $conferencia = $_POST['conferencia'];

        if(isset($_POST['equipo']) && !empty($_POST['equipo'])){
          $this->model->guardarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
          header('Location: '.HOME);
        }
        else{
          $this->view->errorCrear("El campo nombre del equip es requerido es requerido", $equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
        }
    }
    else{
        header('Location: '.LOGIN);
    }
  }

  //funcion para eliminar un equipo
  public function destroy($params)
  {
      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
          $id_equipo = $params[0];
          $this->model->borrarEquipo($id_equipo);
          header('Location: ' . equipo);
      }else{
          header('Location: '.LOGIN);
      }
  }

//Funcion para mostrar el formulario de edicion de equipo
  public function EditEquipo($params){
      $id_equipo = $params[0];
      $sesion=SecuredController::getUser();
      if ($sesion!==false) {
          $equipo = $this->model->verEquipo($id_equipo);
          $this->view->editFormEquipoForm($equipo, $sesion);
      }else
          {
          header('Location: ' . LOGIN);
      }
  }


    public function updateEquipo()
    {
        $sesion=SecuredController::getUser();
        if ($sesion!==false) {
            $id = $_GET['id'];
            $equipo = $_GET['equipo'];
            $nom_corto = $_GET['nom_corto'];
            $ganados = $_GET['ganados'];
            $perdidos = $_GET['perdidos'];
            $porcentaje = $_GET['porcentaje'];
            $dif_partido = $_GET['dif_partido'];
            $conferencia = $_GET['conferencia'];

            $this->model->actualizarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$id);
           header('Location: '.equipo);

            }
        else{
        header('Location: '.LOGIN);
    }
    }



    public function equipo($params)
    {
        $sesion=SecuredController::getUser();
        $id_equipo= $params[0];
        $infoEquipo= $this->model->verEquipo($id_equipo);
        $JugadorModel = new JugadorModel();
        $jugadores = $JugadorModel->getJugadorEquipo($id_equipo);
        $this->view->mostrarInfoEquipo($infoEquipo, $jugadores,$sesion);

    }
}

 ?>
