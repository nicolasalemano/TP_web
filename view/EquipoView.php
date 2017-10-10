
<?php
include_once 'libs/Smarty.class.php';

class EquipoView extends View
{

  function mostrarHome($sesion){
      $this->smarty->assign('sesion', $sesion);
      //$this->smarty->assign('ini_ses', $ini);
      $this->smarty->display('templates/index/index.tpl');
  }

  function mostrarEquipos($equipo,$sesion){
    $this->smarty->assign('equipo', $equipo);
      $this->smarty->assign('sesion', $sesion);
    $this->smarty->display('templates/equipo/index.tpl');
  }

    function mostrarEquipo($equipo, $sesion){
        ;
        $this->smarty->assign('equipo', $equipo);
        $this->smarty->assign('sesion', $sesion);
       // $this->smarty->assign('ini_ses', $ini_sesion);
        $this->smarty->display('templates/equipo/index.tpl');
    }

  function mostrarCrearEquipoForm($sesion){
      $this->smarty->assign('sesion', $sesion);
    $this->assignarEquipoForm();
    $this->smarty->display('templates/equipo/formCrear.tpl');
  }

  function errorCrear($error, $equipo, $nom_corto, $ganados, $perdidios, $porcentaje, $dif_partido, $conferencia){
    $this->assignarEquipoForm($equipo, $nom_corto, $ganados, $perdidios, $porcentaje, $dif_partido, $conferencia);
    $this->smarty->assign('error', $error);
    $this->smarty->display('templates/equipo/formCrear.tpl');
  }

  private function assignarEquipoForm($id='', $equipo='', $nom_corto='', $ganados='', $perdidios='', $porcentaje='', $dif_partido='', $conferencia=''){
    $this->smarty->assign('equipo', $equipo);
    $this->smarty->assign('nom_corto', $nom_corto);
    $this->smarty->assign('ganados', $ganados);
    $this->smarty->assign('perdidios', $perdidios);
    $this->smarty->assign('porcentaje', $porcentaje);
    $this->smarty->assign('dif_partido', $dif_partido);
    $this->smarty->assign('conferencia', $conferencia);
    if(empty($id)){
      $this->smarty->assign('equipo', $equipo);
    }else{

    }
  }

  function editFormEquipoForm($equipo,$sesion){
    $this->smarty->assign('sesion', $sesion);
    $this->smarty->assign('equipo',$equipo);
    $this->smarty->display('templates/equipo/formEdit.tpl');
  }

  function mostrarInfoEquipo($infoEquipo, $jugadores,$sesion){
      $this->smarty->assign('sesion', $sesion);
    $this->smarty->assign('infoEquipo', $infoEquipo);
      $this->smarty->assign('jugadores', $jugadores);
    $this->smarty->display('templates/equipo/infoEquipo.tpl');
  }
}

 ?>
