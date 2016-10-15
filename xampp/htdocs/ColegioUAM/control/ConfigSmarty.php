<?php
require_once ("libs/smarty/Smarty.class.php");
class ConfigSmarty {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
        $this->IniPathSmarty();
    }

    function IniPathSmarty() {


        $this->smarty->template_dir = "view/templates";
        $this->smarty->compile_dir = "view/templates_c";
        $this->smarty->cache_dir = "control/cache";
        $this->smarty->config_dir = "control/configs";
    }

    function CreateAssing($variable, $valor) {
        $this->smarty->assign($variable, $valor);
        
    }

    function GenDisplay($url) {
        $this->smarty->display($url);
    }

}
