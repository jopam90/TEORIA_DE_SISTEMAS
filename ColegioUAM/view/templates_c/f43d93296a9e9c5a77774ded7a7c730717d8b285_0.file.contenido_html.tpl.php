<?php
/* Smarty version 3.1.29, created on 2016-10-02 20:23:32
  from "C:\xampp\htdocs\Semana3\view\templates\contenido_html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57f150a4e04b61_17982546',
  'file_dependency' => 
  array (
    'f43d93296a9e9c5a77774ded7a7c730717d8b285' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Semana3\\view\\templates\\contenido_html.tpl',
      1 => 1475432610,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57f150a4e04b61_17982546 ($_smarty_tpl) {
?>
<form action="index.php" id="frm" method="post">
    <center>
        <fieldset>
            <legend>LOGIN</legend>
            <!--<h2>Login</h2>-->
            <div id="error"></div>
            <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="usu" placeholder="Usuario" maxlength="10" id="usu" required></td>                
                <tr>  
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" id="pass" required></td>
                <tr>
                    <tr>
                    <td>Password</td>
                    <td><input type="file" name="texto" accept="image/*" required/></td>
                <tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Entrar">
                    </td>

                <tr>                  
            </table> 
        </fieldset>
   </center>
</form>

<?php }
}
