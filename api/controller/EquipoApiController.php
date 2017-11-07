<?php
require_once('../model/EquipoModel.php');
require_once('Api.php');


class EquipoApiController extends Api
{

    protected $model;

  function __construct()
  {
      parent::__construct();
      $this->model = new EquipoModel();
  }

    public function getEquipos()
    {
       //   echo sizeof($params);
       //   die();
        $equipo= $this->model->getEquipos();
        return $this->json_response($equipo, 200);
    }

    public function getApiEquipo($url_params = [])
    {

        $id_equipo = $url_params[":id"];
        $equipo=$this->model->verEquipo($id_equipo);
        if($id_equipo)
            return $this->json_response($equipo, 200);
        else
            return $this->json_response(false, 404);
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
        $equipo_guardado=$this->model->guardarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia);
        return $this->json_response($equipo_guardado, 200);
        /*
             * {
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


}

 ?>
