<?php
require_once ("Api.php");
/**
 * Created by PhpStorm.
 * User: Marian
 * Date: 13/11/2017
 * Time: 7:22 PM
 */

class SecuredControllerApi extends Api
{
    public function __construct(){
        session_start();
}
    public function verify()
    {
        if(!isset($_SESSION['USER'])) {
            header('Location: ' . LOGIN);
            die();
        }
        return $_SESSION['ID'];
    }
    public function verificaPermiso()
    {
        if(isset($_SESSION['USER']) && $_SESSION['permissions']==1)
        {
            return 1;
        }
        else
            return 0;
    }
    public function getID($usuario){

    }
}