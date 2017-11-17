<?php
require_once('../model/EquipoModel.php');
require_once('model/ComentarioApiModel.php');
require_once('Api.php');
require_once ('SecuredControllerApi.php');


class EquipoApiController extends Api
{

    protected $model;
    protected $secure;

  function __construct()
  {
      parent::__construct();
      //$this->model = new EquipoModel();
      $this->model = new ComentarioApiModel();
      $this->secure = new SecuredControllerApi();
  }


    public function getApiEquipo($url_params = [])
    {

        $id_equipo = $url_params[":id"];

        $equipo=$this->model->verComentarioEquipo($id_equipo);
        if($equipo)
            return $this->json_response($equipo, 200);
        else
            return $this->json_response("No se encontraron comentarios para el equipo", 404);
       }


       public function createCommentApiEquipoSinReCap(){
         $data=  file_get_contents("php://input");
      $body=json_decode($data);

      $user=$_SESSION['ID'];
      $id_equipo=$body->id_equipo;
      $comentario=$body->comentario;
      $puntuacion=$body->puntuacion;
      $fecha=$body->fecha;
      $coment=$this->model->guardaComentario($user,$id_equipo,$comentario,$puntuacion,$fecha);
      if($coment){
          return $this->json_response("comentario creado", 200);
      }
       else{
           return $this->json_response("No se pudo guardar", 404);
        }




       }

public function createApiEquipo()
{
    $body = json_decode($this->raw_data);

    $equipo=$body->equipo;
    $nom_corto=$body->nom_corto;
    $ganados=$body->ganados;
    $perdidos=$body->perdidos;
    $porcentaje=$body->porcentaje;
    $dif_partido=$body->dif_partido;
    $conferencia=$body->conferencia;
    $equipo_guardado=$this->model->guardarEquipoApi($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
    return $this->json_response($equipo_guardado, 200);

             /* {
                "equipo": "aasdasdasds",
                "nom_corto": "sadfasdfasf",
                "ganados": "53",
                "perdidos": "29",
                "porcentaje": ".646",
                "dif_partido": "20",
                "conferencia": "Oeste"
            }
       */


    }

/*
    public function getEquipos()
    {
        //   echo sizeof($params);
        //   die();
        $equipo= $this->model->getEquipos();
        return $this->json_response($equipo, 200);
    }

    public function deleteApiEquipo($url_params = [])
    {

        $id_equipo = $url_params[":id"];
        $equipo=$this->model->verEquipo($id_equipo);
        if($equipo){
            $this->model->borrarEquipo($id_equipo);
            return $this->json_response("Borrado exitoso.", 200);
        }
        else
            return $this->json_response(false, 404);
    }


    public function editApiEquipo($url_params = [])
    {
        $body = json_decode($this->raw_data);
        $id = $url_params[":id"];
        $equipo=$body->equipo;
        $nom_corto=$body->nom_corto;
        $ganados=$body->ganados;
        $perdidos=$body->perdidos;
        $porcentaje=$body->porcentaje;
        $dif_partido=$body->dif_partido;
        $conferencia=$body->conferencia;
        $equipo_editado=$this->model->actualizarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$id);
        return $this->json_response($equipo_editado, 200);
    }
*/

}

 ?>
