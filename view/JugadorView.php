<?php
include_once 'libs/Smarty.class.php';

class JugadorView extends View
{
  // private $smarty;
  //
  // function __construct()
  // {
  //   $this->smarty = new Smarty();
  //    $this->debugging = true;
  //   $this->smarty->assign('titulo', 'NBA - Jugadores');
  // }

  function mostrarJugadores($jugadores,$equipo, $sesion){
      $this->smarty->assign('sesion', $sesion);
      $this->smarty->assign('equipos', $equipo);
    $this->smarty->assign('jugador', $jugadores);
    $this->smarty->display('templates/Jugadores/index.tpl');
  }

  function mostrarJugador($jugador,$sesion){
      $this->smarty->assign('sesion', $sesion);
    $this->smarty->assign('jugador', $jugador);
    $this->smarty->display('templates/Jugadores/indexJugador.tpl');
  }
  function mostrarCrearJugador($equipos,$sesion){
      $this->smarty->assign('sesion', $sesion);
    $this->assignarJugadorForm($equipos);
    $this->smarty->display('templates/Jugadores/formCrear.tpl');
  }

function mostrarEditJugador($jugador, $equipos, $sesion){
    $this->smarty->assign('sesion', $sesion);
  $this->smarty->assign('jugador', $jugador);
  $this->smarty->assign('equipos', $equipos);
  $this->smarty->display('templates/Jugadores/infoJugador.tpl');
}
  function errorCrear($error, $equipo, $nom_corto, $ganados, $perdidios, $porcentaje, $dif_partido, $conferencia){
    $this->assignarJugadorForm($equipo, $nom_corto, $ganados, $perdidios, $porcentaje, $dif_partido, $conferencia);
    $this->smarty->assign('error', $error);
    $this->smarty->display('templates/Jugadores/formCrear.tpl');
  }

  private function assignarJugadorForm($equipos){
    // , $equipo='', $nom_corto='', $ganados='', $perdidios='', $porcentaje='', $dif_partido='', $conferencia=''
    // $this->smarty->assign('equipo', $equipo);
    $this->smarty->assign('equipos', $equipos);
    // $this->smarty->assign('nom_corto', $nom_corto);
    // $this->smarty->assign('ganados', $ganados);
    // $this->smarty->assign('perdidios', $perdidios);
    // $this->smarty->assign('porcentaje', $porcentaje);
    // $this->smarty->assign('dif_partido', $dif_partido);
    // $this->smarty->assign('conferencia', $conferencia);
  }




  // function mostrarEditarjugador($equipo){
  //   $this->smarty->assign('jugador', $jugador);
  //   $this->smarty->display('templates/Jugadores/index.tpl');
  // }


}

 ?>
