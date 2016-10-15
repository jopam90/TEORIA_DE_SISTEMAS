<?php
/* Smarty version 3.1.29, created on 2016-10-03 20:47:52
  from "C:\xampp\htdocs\Semana3\view\templates\contenido.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57f2a7d8a88f71_84744019',
  'file_dependency' => 
  array (
    '269e85fd7b70dd899370e56cd912bc58f700537f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Semana3\\view\\templates\\contenido.tpl',
      1 => 1475520256,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57f2a7d8a88f71_84744019 ($_smarty_tpl) {
?>
<form action="index.php" id="frm" method="post">
    <center>
        <fieldset>
            <legend>LOGIN</legend>
            <!--<h2>Login</h2>-->
            <div id="error"></div>
            <table id="login">
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" name="usu" placeholder="Usuario"  maxlength="10" id="usu" required></td>                
                <tr>  
                <tr>
                    <td>Password:</td>
                    <td><input type="password" placeholder="Password" name="pass" id="pass" required></td>
                <tr>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="date" name="fecha" id="fecha" required></td>
                <tr>         
                <tr>
                    <td>
                        <input type="button" onclick="Validar();" value="Entrar">
                    </td>
                    <td>
                        <input type="reset" value="Limpiar">
                    </td>
                    <td>
                        <input type="button" onclick="verMapa();" value="Ubicacion">
                    </td>

                <tr>                
            </table> 
        </fieldset>
   </center>
</form>
<div>
    <center>
        <iframe  id="ubicacion" hidden="true"   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31433.791558482608!2d-84.13951508024803!3d9.998351692538696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa0faddaded66bd%3A0x2527e99d1a1e0bdf!2sHeredia+Province%2C+Heredia!5e0!3m2!1sen!2scr!4v1475518272726" 
            width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        <br>
        <br>
    </center>
</div>
<center>
    <a class="twitter-follow-button" href="https://twitter.com/chila_mendez">
        data-size="large"
        data-show-count="true">
        Follow @TwitterDev
    </a>
    <br>
    <br>
        <div class="fb-like" data-href="https://www.facebook.com/ImprudenciasVialesCostaRica/" 
         data-layout="button_count" 
         data-action="like" 
         data-size="large" 
         data-show-faces="true" 
         data-share="true"
         >
        </div>
    <br>
    <br>
</center>


<?php }
}
