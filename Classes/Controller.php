<?php

abstract class Controller
{
    protected $request;
    protected $action;

    /**
     * @param $action
     * @param $request
     */
    public function __construct($action, $request)
    {
        $this->action = $action;
        $this->request = $request;
    }

    /**
     * @return mixed
     */
    public function executeAction(): mixed
    {
        return $this->{$this->action}();
    }

    /**
     * @param $viewModel
     * @param bool $fullView
     * @return void
     */
    protected function returnView($viewModel,bool $fullView): void
    {
        $view = 'view/' . get_class($this) . '/' . $this->action . '.php';

        if($fullView){
            require('View/main.php');
        } else {
            require($view);
        }
    }

}