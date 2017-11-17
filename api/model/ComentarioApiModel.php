<?php
class ComentarioApiModel extends model
{

    public function getComentarios()
    {
        $sentencia=$this->db->prepare('select c.id, e.equipo, c.comentario, c.fecha, u.user, c.puntuacion from comentario c 
                                                INNER JOIN equipo e ON e.id= c.id_equipo 
                                                INNER JOIN user u ON u.id=c.id_usuario');
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }


    public function getComentario($id)
    {
        $sentencia=$this->db->prepare('select e.equipo, c.comentario, u.name, c.fecha, c.id_equipo, c.puntuacion from comentario as c 
                                                INNER JOIN equipo e ON e.id=c.id_equipo 
                                                INNER JOIN user u ON u.id =c.id_usuario
                                                WHERE c.id_equipo=?');
        $sentencia->execute([$id]);
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }


    public function guardaComentario($user,$id_equipo,$comentario,$puntuacion,$fecha){
        $query=$this->db->prepare("insert into comentario id_equipo=?, comentario=?, fecha=?, id_usuario=?, puntuacion=?");
        $query->execute([$id_equipo,$comentario,$fecha,$user, $puntuacion]);
        $id=$this->db->lastInsertId();
        return $this->getComentario($id);


    }

    public function crearComentario($id_equipo,$comentario,$fecha,$id_usuario,$puntuacion)
    {
        $sentencia=$this->db->prepare('INSERT INTO comentario(id_equipo, comentario, fecha, id_usuario, puntuacion) VALUES (?,?,?,?,?)');
        $sentencia->execute([$id_equipo,$comentario,$fecha,$id_usuario,$puntuacion]);
        $id = $this->db->lastInsertId();
        return $this->getComentario($id);
    }

    public function deleteComentario($id)
    {
        $sentencia= $this->db->prepare("DELETE from comentario WHERE  id=?");
        $sentencia->execute([$id]);

    }

    public function actualizarComentario($id_comentario,$id_equipo,$comentario,$fecha,$id_usuario)
    {

        $sentencia= $this->db->prepare("UPDATE comentario SET id_equipo=?,comentario=?,fecha=?,id_usuario=? WHERE id=?");

        $sentencia->execute([$id_equipo,$comentario,$fecha,$id_usuario,$id_comentario]);
        return $this->getComentario($id_comentario);
    }

}
?>