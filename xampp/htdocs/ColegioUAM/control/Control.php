<?php

require_once ("control/ConfigSmarty.php");
class Control {
    private $nameApp;
    private $versionApp;
    private $insSmarty;
    
    //por defecto public
    function __construct($nameApp, $versionApp) {
        $this->nameApp = $nameApp;
        $this->versionApp = $versionApp;
        $this->insSmarty = new ConfigSmarty();
    }
    function viewFormPrincipal(){
        $this->insSmarty->CreateAssing("nombre", "Royner");
        $this->insSmarty->GenDisplay('header.tpl');
        $this->insSmarty->GenDisplay('contenido.tpl');
        //$this->insSmarty->GenDisplay('contenido_html.tpl');
        $this->insSmarty->GenDisplay('footer.tpl');
    }
    
        function viewFormAdministrador(){
        $this->insSmarty->CreateAssing("nombre", "Royner");
        $this->insSmarty->GenDisplay('header.tpl');
        $this->insSmarty->GenDisplay('Administrador.tpl');
        //$this->insSmarty->GenDisplay('contenido_html.tpl');
        $this->insSmarty->GenDisplay('footer.tpl');
    }
    
        function viewFormAlumno(){
        $this->insSmarty->CreateAssing("nombre", "Royner");
        $this->insSmarty->GenDisplay('header.tpl');
        $this->insSmarty->GenDisplay('AlumnoPadre.tpl');
        //$this->insSmarty->GenDisplay('contenido_html.tpl');
        $this->insSmarty->GenDisplay('footer.tpl');
    }
    
        function viewFormProfesor(){
        $this->insSmarty->CreateAssing("nombre", "Royner");
        $this->insSmarty->GenDisplay('header.tpl');
        $this->insSmarty->GenDisplay('Profesores.tpl');
        //$this->insSmarty->GenDisplay('contenido_html.tpl');
        $this->insSmarty->GenDisplay('footer.tpl');
    }
       function getNameApp() {
        return $this->nameApp;
    }

    function getVersionApp() {
        return $this->versionApp;
    }

    function setNameApp($nameApp) {
        $this->nameApp = $nameApp;
    }

    function setVersionApp($versionApp) {
        $this->versionApp = $versionApp;
    }


    
    
    
}
