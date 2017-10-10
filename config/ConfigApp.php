<?php

  class ConfigApp
  {
      public static $ACTION = 'action';
      public static $PARAMS = 'params';
      public static $ACTIONS = [
        ''                => 'EquipoController#HOME',
        'HOME'            => 'EquipoController#HOME',
        'equipo'          => 'EquipoController#equipos',
        'agregarEquipo'   => 'EquipoController#createForm',
        'guardarEquipo'   => 'EquipoController#store',
        'editarEquipo'    => 'EquipoController#EditEquipo',
        'guardarEquipoEdit'   => 'EquipoController#updateEquipo',
        'borrarEquipo'    => 'EquipoController#destroy',
          'detalleequipo'   => 'EquipoController#equipo',

        'agregarJugador'  => 'JugadorController#createJugador',
        'guardarJugador'  => 'JugadorController#storeJugador',
        'borrarJugador'   => 'JugadorController#destroyJugador',
        'jugadores'       => 'JugadorController#jugadores',
        'editarJugador'   =>'JugadorController#editJugador',
        'updateJugador'   =>'JugadorController#updateJugador',

        'login' => 'LoginController#index',
        'verificarUsuario' => 'LoginController#verify',
        'logout' => 'LoginController#destroy',



      ];
  }

