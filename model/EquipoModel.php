<?php

class EquipoModel extends Model
{

  function getEquipos(){
    $sentencia = $this->db->prepare( "select * from equipo ORDER BY id DESC ");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
  //funcion que trae los detalles del equipo
  function verEquipo($id){
    $sentencia = $this->db->prepare( "select * from equipo where id=?");
    $sentencia->execute([$id]);
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
//dalta modificar las entradas
  function guardarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia){
    $sentencia = $this->db->prepare('INSERT INTO equipo(equipo,nom_corto,ganados,perdidos,porcentaje,dif_partido,conferencia) VALUES(?,?,?,?,?,?,?)');
    $sentencia->execute([$equipo,$nom_corto,$ganados,$perdidos,$porcentaje,$dif_partido,$conferencia]);
      $id = $this->db->lastInsertId();
      return $this->verEquipo($id);
  }

  function borrarEquipo($id_equipo){
    $sentencia = $this->db->prepare( "delete from equipo where id=?");
    $sentencia->execute([$id_equipo]);
  }


    function actualizarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$id){
        $sentencia = $this->db->prepare('UPDATE equipo SET equipo=?,nom_corto=?,ganados=?,perdidos=?,porcentaje=?,dif_partido=?,conferencia=? WHERE id=?');

       $temp= $sentencia->execute([$equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$id]);

        return $this->verEquipo($id);
    }

    function editarEquipo($id){
    $sentencia = $this->db->prepare( "SELECT equipo,nom_corto,ganados,perdidios,porcentaje,dif_partido,conferencia FROM equipo WHERE id=?");
    $sentencia->execute($id);
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);

  }
  function getConferencia($conf)
  {
    $query=$this->db->prepare("SELECT * FROM equipo WHERE conferencia=? ORDER BY equipo");
    $query->execute([$conf]);
    return $query->fetchAll(PDO::FETCH_ASSOC);
  }

}

 ?>
