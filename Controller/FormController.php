<?php

require_once 'Model/form.php';

class Form
{
    public function processForm($postData): string
    {
        $formModel = new FormModel($postData['name'], $postData['email'], $postData['phone']);
        $formModel->processData();

        return 'ok';
    }
}