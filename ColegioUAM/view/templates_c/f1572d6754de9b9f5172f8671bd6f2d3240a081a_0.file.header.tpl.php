<?php
/* Smarty version 3.1.29, created on 2016-10-03 20:42:59
  from "C:\xampp\htdocs\Semana3\view\templates\header.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57f2a6b3bd3bc6_10738022',
  'file_dependency' => 
  array (
    'f1572d6754de9b9f5172f8671bd6f2d3240a081a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Semana3\\view\\templates\\header.tpl',
      1 => 1475520134,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57f2a6b3bd3bc6_10738022 ($_smarty_tpl) {
?>
<html>

    
        <title>.:Mi Primer Site:.</title>
        <!-- Write your comments here -->
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>

        <?php echo '<script'; ?>
 type="text/javascript"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="js/sweetalert.min.js"> <?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="js/ejemplo_javascript.js"> <?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);
 
  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };
 
  return t;
  }(document, "script", "twitter-wjs"));<?php echo '</script'; ?>
>

        
    <body onload="startTime()">
        <div id="fb-root"></div>
        
<?php echo '<script'; ?>
>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.7&appId=183420682045";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
<?php echo '</script'; ?>
><?php }
}
