<?php

define('DB_NAME', 'db_nba');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOSTNAME', 'localhost');
define('DB_FILE','../SQL/db_nba.sql');
class Model
{
  protected $db;

   function __construct()
  {
    try {


        $this->db = new PDO('mysql:host='.DB_HOSTNAME . '; dbname='.DB_NAME. ';charset=utf8', DB_USER,DB_PASSWORD);
    }catch (PDOException $e){

     $this->crearDB(DB_NAME, 'SQL/db_nba.sql');
        $this->db = new PDO('mysql:host='.DB_HOSTNAME . '; dbname='.DB_NAME. ';charset=utf8', DB_USER,DB_PASSWORD);
  }
  }

    function crearDB($dbname, $dbfile) {

        try {
            $connection = new PDO('mysql:host='.DB_HOSTNAME, DB_USER,DB_PASSWORD);
            //$connection = new PDO('mysql:host='.DB_HOSTNAME . '; dbname='.DB_NAME. ';charset=utf8', DB_USER,DB_PASSWORD);
            $connection->exec('CREATE DATABASE IF NOT EXISTS '.$dbname);
            $connection = new PDO('mysql:host='.DB_HOSTNAME . '; dbname='.DB_NAME. ';charset=utf8', DB_USER,DB_PASSWORD);
            $connection->exec('USE '. $dbname);
           // $queries = loadSQLSchema('SQL/db_nba.sql');
            //foreach ($queries as $query) {}
            $queries=file_get_contents($dbfile);
            $connection->exec($queries);


        } catch (PDOException $e) {
            echo $e;
        }

    }

    function loadSQLSchema($dbfile) {
        $file = fopen($dbfile, "r");
        $line = fgets($file);
        $getTablas = "";
        while(! feof($file))
        {
            $line = fgets($file);
            $getTablas .= $line;
        }

        fclose($file);
        return $getTablas;
    }





  /*
   * public function crearDB($dbName, $dbFile){


   try{

      $conect = new PDO('mysql:host=localhost;','root', '');
      $conect->exec('CREATE DATABASE IF NOT EXISTS '. $dbName);
      //$conect->exec('USE'. $dbName);
       $file = file_get_contents($dbFile);
     // $queryes= $this->loadSQLSchema($dbFile);

       $conect->exec($file);



    }catch(PDOException $e){
      echo $e;
    }
  }
    function loadSQLSchema($dbfile) {
        $file = file_get_contents($dbfile, "r");

        $line = fgets($file);
        $getTablas = "";
        while(!feof($file))
        {
            $line = fgets($file);
            $getTablas .= $line;
        }

        fclose($file);
        return $getTablas;
    }
   */
}
 ?>

