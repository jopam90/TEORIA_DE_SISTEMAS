<?php
/* Smarty version 3.1.29, created on 2016-10-10 01:29:14
  from "C:\xampp\htdocs\ColegioUAM\view\templates\header.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57fad2ca76dc85_00381025',
  'file_dependency' => 
  array (
    'd6f9d5ae7430e20029e95ad323b15982dc12aa5c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ColegioUAM\\view\\templates\\header.tpl',
      1 => 1476055750,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57fad2ca76dc85_00381025 ($_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>COLEGIO UAM</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/menusVerticales.css" rel="stylesheet" type="text/css"/>
        <link href="css/carrousel.css" rel="stylesheet" type="text/css"/>
        <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 type="text/javascript"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="js/sweetalert.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="js/ejemplo_javascript.js"><?php echo '</script'; ?>
>
        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        
    </head> 
    <div class="container">
            <header>
                <div id="colheader">                

                    <center>
                        <h1 id="NombreColegio" >CENTRO EDUCATIVO UAM SAN PEDRO</h1>                    
                    </center> 

                    <!-- Modal -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">LOGIN</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">

                                        <label for="nombre">Usuario:</label>
                                        <input class="form-control" id="Usuario" type="email" placeholder="Usuario" required="true">
                                    </div>

                                    <div class="form-group">

                                        <label for="nombre">Contraseña:</label>
                                        <input class="form-control" id="Contrasena" type="email" placeholder="Contraseña" required="true">
                                    </div>
                                    <button class="btn btn-primary" id="enviar">Enviar</button>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <br>

                </div>

                <header>
                    <div class="menu_bar">
                            <a href="#" class="bt-menu"><span class="icon-list2"></span>Menu</a>
                    </div>

                    <nav>
                                    <div class="navbar-header">
                                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
                                                    <span class="sr-only">Mostrar navegacion</span>

                                                    <a href="#" class="navbar-brand" id="login">Menu </a>
                                            </button>

                                    </div>
                        <div class="collapse navbar-collapse" id="navegacion">      
                            <ul>
                                    <li><a href="#"><span class="icon-house"></span>Inicio</a></li>
                                    <li><a href="#"><span class="icon-suitcase"></span>Historia</a></li>
                                    <li><a href="#"><span class="icon-rocket"></span>Instalaciones</a></li>
                                    <li><a href="#"><span class="icon-earth"></span>Matriculese</a></li>
                                    <li><a href="#"><span class="icon-mail"></span>Contactos</a></li>
                                    <button id="login" type="button"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span>
                                     </button>
                            </ul>
                        </div> 
                    </nav>
            </header>
            </header>
    </div>
    <br>

    <body>
<?php }
}
