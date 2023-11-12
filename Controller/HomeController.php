<?php

class Home extends Controller
{
    /**
     * @return void
     */
    protected function Index(): void
    {
        $viewModel = new HomeModel();
        $this->returnView($viewModel->Index(), true);
    }
}