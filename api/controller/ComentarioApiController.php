<?php

require_once '../libs/Smarty.class.php';
require_once('model/ComentarioApiModel.php');
//require_once('SecuredControllerApi.php');
require_once('Api.php');

class ComentarioApiController extends Api
{
    protected $model;
    protected $secure;

    function __construct()
    {
        parent::__construct();
        $this->model = new ComentarioApiModel();
     //   $this->secure = new SecuredControllerApi();
       // $this->view = new ComentarioView();
    }

    public function getCommentApiEquipos()   {

       $comentario=$this->model->getComentarios();

       return $this->json_response($comentario, 200);
    }


    public function getCommentApiEquipo($url_params = [])
    {
        $id_comentario = $url_params[":id"];
        $comentario = $this->model->getComentario($id_comentario);
        if($comentario) {
            return $this->json_response($comentario, 200);
        }
        else {
            return $this->json_response("false", 404);
        }
    }

    public function createCommentApiEquipo()
    {
        $user=$this->verify();
        if($user){
            $body=json_decode($this->raw_data);

            $id_equipo=$body->id_equipo;
            $comentario=$body->comentario;
            $fecha=$body->fecha;

            $id_usuario=$body->id_usuario;
            $coment_creado=$this->model->crearComentario($id_equipo,$comentario,$fecha,$id_usuario);
            return $this->json_response($coment_creado, 200);
        }
        else{
            return $this->json_response("Sin permisos", 404);
        }
    }

    public function deleteCommentApiEquipo($url_params = [])
    {
        $permisos=$this->verificaPermiso();
        if($permisos) {
            $id_comentario = $url_params[":id"];

            $comentarioBorrado = $this->model->getComentario($id_comentario);
            if ($comentarioBorrado) {
                $this->model->deleteComentario($id_comentario);
                return $this->json_response("Borrado exitoso.", 200);
            }
        }
        else{
            return $this->json_response("Sin permisos.", 404);
        }
    }

    public function editCommentApiEquipo($url_params = [])
    {
        $id_comentario= $url_params[":id"];
        $body = json_decode($this->raw_data);
        $id_equipo = $body->id_equipo;
        $comentario = $body->comentario;
        $fecha = $body->fecha;
        $id_usuario = $body->id_usuario;

        $comentario= $this->model->actualizarComentario($id_comentario,$id_equipo,$comentario,$fecha,$id_usuario);
        return $this->json_response($comentario, 200);

        /*

         {
        "id": "1",
        "id_equipo": "algo",
        "comentario": "COMENTARIO",
        "fecha": "2017-10-10",
        "id_usuario": "2",
           }
         */

    }
}


?>