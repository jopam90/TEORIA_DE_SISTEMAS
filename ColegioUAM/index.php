<?php

//if (isset($_REQUEST['usu'])) { //isset() determina si una variable is set y no es nulo, REQUEST http request variables
//    echo "Hola ".$_REQUEST['usu'];
//    echo "<br>Fecha: " . date("d/m/Y");
//    //echo "Hola ".$_POST['usu'];
//    //echo "Hola ".$_GET['usu'];
//    //echo "HOLA";
//    
//} else {
//
//    require_once("control/Control.php");
//    
//    $ins = new Control("Calculadora", "V 1.0");
//    $ins->viewForm();
//    
//    
//
//}

if (isset($_REQUEST['Usuario'])){

    if ($_REQUEST['Usuario'] == "administrador") {

        require_once("control/Control.php");

        $ins = new Control("Calculadora", "V 1.0");
        $ins->viewFormAdministrador();
        var_dump($_REQUEST['Usuario']);
    }
    else if($_REQUEST['Usuario'] == "alumno"){

        require_once("control/Control.php");

        $ins = new Control("Calculadora", "V 1.0");
        $ins->viewFormAlumno();
        var_dump($_REQUEST['Usuario']);
    }
    else if($_REQUEST['Usuario'] == "profesor"){

        require_once("control/Control.php");

        $ins = new Control("Calculadora", "V 1.0");
        $ins->viewFormProfesor();
        var_dump($_REQUEST['Usuario']);

    } else{
        echo "Usuario no encontrado";
    }
}
else {

require_once("control/Control.php");

$ins = new Control("Calculadora", "V 1.0");
$ins->viewFormPrincipal();
}

?>


