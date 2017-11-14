<?php
/**
 * Created by PhpStorm.
 * User: Marian
 * Date: 13/11/2017
 * Time: 7:22 PM
 */

class SecuredControllerApi
{
    public function verify()
    {
        if(!isset($_SESSION['USER'])) {
            header('Location: ' . LOGIN);
            die();
        }
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
}