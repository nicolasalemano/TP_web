<?php

include_once 'libs/Smarty.class.php';

class View
{
  protected $smarty;

  function __construct()
  {
    $this->smarty = new Smarty();
    $this->smarty->assign('titulo', 'NBA');
    $this->smarty->assign('baseURL', 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/');
  }
}
 ?>
