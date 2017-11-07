<?php
define('HOME', 'http://'.$_SERVER['SERVER_NAME']  .':'. $_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/HOME');
define('EQUIPO', 'http://'.$_SERVER['SERVER_NAME']  . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/equipo');
define('JUGADORES', 'http://'.$_SERVER['SERVER_NAME']  . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/jugadores');
define('LOGIN', 'http://'.$_SERVER['SERVER_NAME']  . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/login');
define('LOGOUT', 'http://'.$_SERVER['SERVER_NAME'] . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/logout');
define('ADMIN', 'http://'.$_SERVER['SERVER_NAME'] . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/adminUser');


class Controller
{

  protected $view;
  protected $model;
  protected $baseURL;

    function __construct()
    {
        $this->baseURL = 'http://'.$_SERVER['SERVER_NAME'] . ':'.$_SERVER['SERVER_PORT']. dirname($_SERVER['PHP_SELF']).'/';
    }



}
?>
