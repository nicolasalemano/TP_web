<?php

//require_once '../libs/Smarty.class.php';
require_once('model/ComentarioApiModel.php');
require_once('SecuredControllerApi.php');
require_once('Api.php');
REQUIRE_ONCE('../recapcha/AUTOLOAD.PHP');


class ComentarioApiController extends SecuredControllerApi
{
    protected $model;
   // protected $secure;
    protected $rc;

    function __construct()
    {

        parent::__construct();
        $this->model = new ComentarioApiModel();
    //    $this->secure = new SecuredControllerApi();
        $secret = '6Lek6TgUAAAAANPy6OMTcJ9OhreLjFtgSbRLp0UJ';
        $this->rc=new \ReCaptcha\ReCaptcha($secret);
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
          //  return $this->json_response("false", 404);
        }
    }


    public function createCommentApiEquipo()
    {

       // $user=$this->secure->verify();
       $body=  json_decode(file_get_contents("php://input"));
        //$body=json_decode($this->raw_data);
        $user=$_SESSION['USER'];

        $gRecaptchaResponse = $body->captcha; //google captcha post data

        $remoteIp = $_SERVER['REMOTE_ADDR']; //to get user's ip
        $recaptchaErrors = ''; // blank varible to store error
        $resp = $this->rc->verify($gRecaptchaResponse, $remoteIp);

        if ($resp->isSuccess()) {
            $id_equipo=$body->id_equipo;
            $comentario=$body->comentario;
            $fecha=$body->fecha;
            $id_usuario=$_SESSION['ID'];
            $puntuacion=$body->puntuacion;
            $coment_creado=$this->model->crearComentario($id_equipo,$comentario,$fecha,$id_usuario,$puntuacion);
            return $this->json_response($coment_creado, 200);
        } else {
            $recaptchaErrors = $resp->getErrorCodes(); // set the error in varible
            return $this->json_response(["error"=>"Error al validar"], 404);
        }
    }


    public function createCommentApiEquipoCap()
    {
        $user=$this->verify();
        $body=json_decode($this->raw_data);

        $gRecaptchaResponse = $_POST['g-recaptcha-response']; //google captcha post data

        $remoteIp = $_SERVER['REMOTE_ADDR']; //to get user's ip
        $recaptchaErrors = ''; // blank varible to store error
        $resp = $this->rc->verify($gRecaptchaResponse, $remoteIp);
        if ($resp->isSuccess()) {
            $id_equipo=$body->id_equipo;
            $comentario=$body->comentario;
            $fecha=$body->fecha;
            $id_usuario=$user;
            $puntuacion=$body->puntuacion;
            $coment_creado=$this->model->crearComentario($id_equipo,$comentario,$fecha,$id_usuario,$puntuacion);
            return $this->json_response($coment_creado, 200);
        } else {
            $recaptchaErrors = $resp->getErrorCodes(); // set the error in varible
            return $this->json_response([error=>"Error al validar"], 404);
        }
    }

    public function deleteCommentApiEquipo($url_params = [])
    {
        $permisos=$this->secureverificaPermiso();
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