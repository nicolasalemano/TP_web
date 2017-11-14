<?php

class EquipoModel extends Model
{

  function getEquipos(){
    $sentencia = $this->db->prepare( "select * from equipo ORDER BY id DESC ");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
  //funcion que trae los detalles del equipo
  function  verEquipo($id){
    $sentencia = $this->db->prepare( "select * from equipo where id=?");
    $sentencia->execute([$id]);

    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
//dalta modificar las entradas

    private function subirImagenes($imagenes){
        $rutas = [];
        foreach ($imagenes as $imagen) {
            $destino_final = 'images/upload/' . uniqid() . '.jpg';
            move_uploaded_file($imagen, $destino_final);
            $rutas[]=$destino_final;
        }

        return $rutas;
    }
  function guardarEquipo($equipo, $nom_corto, $ganados, $perdidos, $porcentaje, $dif_partido, $conferencia,$rutaTempImagenes){
    $sentencia = $this->db->prepare('INSERT INTO equipo(equipo,nom_corto,ganados,perdidos,porcentaje,dif_partido,conferencia) VALUES(?,?,?,?,?,?,?)');
    $sentencia->execute([$equipo,$nom_corto,$ganados,$perdidos,$porcentaje,$dif_partido,$conferencia]);
      $id = $this->db->lastInsertId();
      $rutas = $this->subirImagenes($rutaTempImagenes);
      $sentencia_imagenes = $this->db->prepare('INSERT INTO imagen(id_equipo,ruta) VALUES(?,?)');

      foreach ($rutas as $ruta) {
          $sentencia_imagenes->execute([$id,$ruta]);
      }
     $tem=$this->verEquipo($id);

      return $this->verEquipo($id);
  }
function guardaImag($id,$rutaTempImagenes){
    $rutas = $this->subirImagenes($rutaTempImagenes);

    $sentencia_imagenes = $this->db->prepare('INSERT INTO imagen(id_equipo,ruta) VALUES(?,?)');

    foreach ($rutas as $ruta) {
     $sentencia_imagenes->execute([$id,$ruta]);
    }
    $id = $this->db->lastInsertId();

    return $id;

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
    function verComentarioEquipo($id)
    {
        $query= $this->db->prepare("SELECT * from comentario WHERE id_equipo =?");
        $query->execute([$id]);
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    function getImagen($id){
        $query=$this->db->prepare("SELECT *from imagen WHERE id_equipo=?");
        $query->execute([$id]);
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

}

 ?>
