<?php
define('RESOURCE', 0);
define('PARAMS', 1);

include_once 'config/Router.php';
include_once '../model/Model.php';
include_once 'controller/EquipoApiController.php';
include_once 'controller/ComentarioApiController.php';
include_once '../controller/SecuredController.php';
include_once '../controller/Controller.php';

$router = new Router();

$router->AddRoute("equipo", "GET", "EquipoApiController", "getEquipos");
$router->AddRoute("equipo/:id", "GET", "EquipoApiController", "getApiEquipo");
$router->AddRoute("equipo", "POST", "EquipoApiController", "createApiEquipo");
$router->AddRoute("equipo/:id", "DELETE", "EquipoApiController", "deleteApiEquipo");
$router->AddRoute("equipo/:id", "PUT", "EquipoApiController", "editApiEquipo");
$router->AddRoute("equipo/:conf", "GET", "EquipoApiController", "getApiConferencia");

$router->AddRoute("comentario", "GET", "ComentarioApiController", "getCommentApiEquipos");
$router->AddRoute("comentario/:id", "GET", "ComentarioApiController", "getCommentApiEquipo");
$router->AddRoute("comentario", "POST", "ComentarioApiController", "createCommentApiEquipo");
$router->AddRoute("comentario/:id", "DELETE", "ComentarioApiController", "deleteCommentApiEquipo");
$router->AddRoute("comentario/:id", "PUT", "ComentarioApiController", "editCommentApiEquipo");

$route = $_GET['resource'];
$array = $router->Route($route);

if(sizeof($array) == 0)
    echo "404";
else
{
    $controller = $array[0];
    $metodo = $array[1];
    $url_params = $array[2];
    echo (new $controller())->$metodo($url_params);
}

 ?>
