<?php

  class ConfigApp
  {
      public static $ACTION = 'action';
      public static $PARAMS = 'params';
      public static $ACTIONS = [
        'home'            => 'index',
        ''                => 'index',
        'equipo'          => 'equipos',
        'agregarEquipo'   => 'create',
        'guardarEquipo'   => 'store',
        'borrarEquipo'    => 'destroy',
        '__equipo'        => 'mostrarequipo',
        'borrarEquipo'    => 'destroy',
        'finalizarEquipo' => 'finalizarEquipo',
        'editarEquipo'    => 'edit',
        'agregarJugador'  => 'createJugador',
        'guardarJugador'  => 'storeJugador',
        'borrarJugador'   => 'destroyJugador',
        'jugadores'       => 'jugadores',
        'editarJugador'   =>'editJugador',
        'updateJugador'   =>'updateJugador',
      ];
      public static $CONTROLLER = [
        'home'            => 'EquipoController',
        ''                => 'EquipoController',
        'equipo'          => 'EquipoController',
        'agregarEquipo'   => 'EquipoController',
        'guardarEquipo'   => 'EquipoController',
        'borrarEquipo'    => 'EquipoController',
        '__equipo'        => 'EquipoController',
        'borrarEquipo'    => 'EquipoController',
        'finalizarEquipo' => 'EquipoController',
        'editarEquipo'    => 'EquipoController',
        'agregarJugador'  => 'JugadorController',
        'guardarJugador'  => 'JugadorController',
        'borrarJugador'   => 'JugadorController',
        'jugadores'       => 'JugadorController',
        'editarJugador'   =>'JugadorController',
        'updateJugador'   =>'JugadorController',
      ];
  }
 ?>
