<?php

class LoginModel extends Model
{//user model
  function getUser($userName){
    $sentencia = $this->db->prepare( "select * from user where user = ? limit 1");
    $sentencia->execute([$userName]);
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
  function crearUsuario($nomApe,$userName,$pas)
  {
    $query=$this->db->prepare("INSERT INTO user(user, password, name) VALUE (?,?,?)");
    $query->execute([$userName,$pas,$nomApe]);
    return $this->getUser($userName);
  }
  public function getUsers()
  {
    $query = $this->db->prepare("select * from user");
    $query->execute();
    return $query->fetchAll(PDO::FETCH_ASSOC);
  }
  function borrarUsuario($id)
  {
    $query=$this->db->prepare("DELETE from user WHERE id=?");
    $query->execute([$id]);
  }
    function getUserId($id)
    {
        $query=$this->db->prepare("Select * from user WHERE id=?");
        $query->execute([$id]);
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
    function guardarEditUser($id,$user,$name,$permisos)
    {
      $query=$this->db->prepare("UPDATE user SET user=?, name=?, permisos=? WHERE id=?");
      $query->execute([$user,$name,$permisos,$id]);
    }
}

?>
