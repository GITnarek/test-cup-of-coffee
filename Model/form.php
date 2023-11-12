<?php

class FormModel
{
    private string $name;
    private string $email;
    private string $message;

    /**
     * @param string $name
     * @param string $email
     * @param int $phone
     */
    public function __construct(string $name, string $email, int $phone)
    {
        $this->name = $name;
        $this->email = $email;
        $this->phone = $phone;
    }

    public function processData(): void
    {
        $model = new HomeModel();
        $model->create($this->name, $this->phone, $this->email);
    }
}