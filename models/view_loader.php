<?php

class View_Loader
{
    private $data = array();
    private $render = FALSE;
    private $selectedItems = FALSE;
    private $style = FALSE;

    public function __construct($viewName)
    {
        $file =  'views/' . strtolower($viewName) . '.php';
        if (file_exists($file))
        {
            $this->render = $file;
            $this->selectedItems = explode("_", $viewName);
        }        
        $file = 'css/' . strtolower($viewName) . '.css';
        if (file_exists($file))
        {
            $this->style = '/' . 'css/' . strtolower($viewName) . '.css';;
        }        
    }

    public function assign($variable , $value)
    {
        $this->data[$variable] = $value;
    }

    public function __destruct()
    {
        $this->data['render'] = $this->render;
        $this->data['selectedItems'] = $this->selectedItems;
        $this->data['style'] = $this->style;
        $viewData = $this->data;
        include('views/page_main.php');
    }
}

?>