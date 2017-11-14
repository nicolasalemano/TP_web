<?php

  class ConfigApp
  {
      public static $ACTION = 'action';
      public static $PARAMS = 'params';
      public static $ACTIONS = [
          ''                => 'EquipoController#inicio',
        'HOME'            => 'EquipoController#home',
        'equipo'          => 'EquipoController#equipos',
        'agregarEquipo'   => 'EquipoController#createForm',
        'guardarEquipo'   => 'EquipoController#store',
        'editarEquipo'    => 'EquipoController#EditEquipo',
        'guardarEquipoEdit'   => 'EquipoController#updateEquipo',
        'borrarEquipo'    => 'EquipoController#destroy',
        'detalleequipo'   => 'EquipoController#equipo',
        'conferencia'     => 'EquipoController#getConferencia',
        'guardarImagen'   => 'EquipoController#guardarImagen',
        'borrarImagen'    => 'EquipoController#borrarImagen',

        'agregarJugador'  => 'JugadorController#createJugador',
        'guardarJugador'  => 'JugadorController#storeJugador',
        'borrarJugador'   => 'JugadorController#destroyJugador',
        'jugadores'       => 'JugadorController#jugadores',
        'editarJugador'   =>'JugadorController#editJugador',
        'updateJugador'   =>'JugadorController#updateJugador',

        'login'             => 'LoginController#index',
        'verificarUsuario'  => 'LoginController#verify',
        'logout'            => 'LoginController#destroy',
        'registrarse'       => 'LoginController#mostrarRegistro',
        'registrarUsuario'  => 'LoginController#createUser',
        'adminUser'         =>  'LoginController#adminUser',
        'borrarUsuario'     =>  'LoginController#deleteUser',
        'editarUsuario'     =>  'LoginController#editUser',
        'guardarEditUser'     =>  'LoginController#guardarEditUser',






      ];
  }

