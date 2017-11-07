<?php

class JugadorModel extends Model
{


  function getJugadores(){

    $sentencia = $this->db->prepare( 'SELECT j.id, e.equipo, j.nombre, j.apellido, j.posicion, j.numero, j.edad, j.altura, j.peso, j.universidad, j.salario 
                                                FROM jugador j 
                                                INNER JOIN equipo e ON j.id_equipo=e.id 
                                                ORDER BY J.ID DESC');
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
  function getJugador($id_equipo){
    $sentencia = $this->db->prepare( 'SELECT j.id, e.equipo, j.nombre, j.apellido, j.posicion, j.numero, j.edad, j.altura, j.peso, j.universidad, j.salario 
                                                FROM jugador j 
                                                INNER JOIN equipo e ON j.id_equipo=e.id WHERE j.id=?');
    $sentencia->execute([$id_equipo]);
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
    function getJugadorEquipo($id_equipo){
        $sentencia = $this->db->prepare( 'SELECT j.id, e.equipo, j.nombre, j.apellido, j.posicion, j.numero, j.edad, j.altura, j.peso, j.universidad, j.salario 
                                                    FROM jugador j 
                                                    INNER JOIN equipo e ON j.id_equipo=e.id 
                                                    WHERE e.id=?');
        $sentencia->execute([$id_equipo]);
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

  function crearJugador($id_equipo,$nombre,$apellido,$posicion,$numero,$edad,$altura,$peso,$universidad,$salario){
    $sentencia = $this->db->prepare('INSERT INTO jugador (id_equipo,nombre,apellido,posicion,numero,edad,altura,peso,universidad,salario) 
                                              VALUES(?,?,?,?,?,?,?,?,?,?)');
    $sentencia->execute([$id_equipo,$nombre,$apellido,$posicion,$numero,$edad,$altura,$peso,$universidad,$salario]);
  }


  function borrarJugador($id){
    $sentencia = $this->db->prepare( "DELETE FROM jugador WHERE id=?");
    $sentencia->execute([$id]);
  }

  function actualizaJugador($id_equipo, $nombre, $apellido, $posicion, $numero, $edad, $altura, $peso, $universidad, $salario,$id){
    // $sentencia = $this->prepare("UPDATE jugador SET id='$id',id_equipo='$id_equipo',nombre='$nombre',apellido='$apellido',posicion='$posicion',numero='$numero',edad='$edad',altura='$altura',peso='$peso',universidad='$universidad',salario='$salario' WHERE id='$id'");


    $sentencia = $this->db->prepare("UPDATE jugador SET id_equipo=?, nombre=?, apellido=?, posicion=?, numero=?, edad=?, altura=?, peso=?, universidad=?, salario=? WHERE id=?");


    $sentencia->execute([$id_equipo,$nombre,$apellido,$posicion,$numero,$edad,$altura,$peso,$universidad,$salario,$id]);


  }




// function updateEquipo($id, $equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia){
//
// $sentencia= $this->db->prepare(UPDATE equipo SET ,equipo=?, nom_corto=?,ganados=?,perdidios=?,porcentaje=?,dif_partido=?,`conferencia`=[value-8] WHERE `id`=?)
//
// }
}

 ?>
