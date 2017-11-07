<?php

include_once '../libs/Smarty.class.php';
include_once 'View.php';

class ComentarioView extends View
{
    function verComentarios($comentarios)
    {
        $this->smarty->assign('comentarios',$comentarios);
        $this->smarty->display("../templates/comentario/comentario.tpl");
    }

}


?>