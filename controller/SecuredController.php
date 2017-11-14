<?php

require_once "Controller.php";
class SecuredController extends Controller
{
  function __construct()
  {
    session_start();
    if(isset($_SESSION['USER']))
    {
      if (time() - $_SESSION['LAST_ACTIVITY'] > 25600) {
        header('Location: '.LOGOUT);
        die();
      }
      $_SESSION['LAST_ACTIVITY'] = time();
    }

  }
  public function getUser()
  {
      if(isset($_SESSION['USER']))
      {
          return $_SESSION['USER'];
      }else{
        return false;
      }
  }


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

 ?>
