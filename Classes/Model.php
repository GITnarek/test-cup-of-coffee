<?php

abstract class Model
{
    protected PDO $dbh;
    protected $stmt;

    public function __construct(){
        $this->dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
    }

    /**
     * @param $query
     * @return void
     */
    public function query($query): void
    {
        $this->stmt = $this->dbh->prepare($query);
    }

    /**
     * @param $param
     * @param $value
     * @param $type
     * @return void
     */
    public function bind($param, $value, $type = null): void
    {
        if(is_null($type)){
            switch(true){
                case is_int($value):
                    $type = PDO::PARAM_INT;
                    break;
                case is_bool($value):
                    $type = PDO::PARAM_BOOL;
                    break;
                case is_null($value):
                    $type = PDO::PARAM_NULL;
                    break;
                default:
                    $type = PDO::PARAM_STR;
            }
        }
        $this->stmt->bindValue($param, $value, $type);
    }

    /**
     * @return void
     */
    public function execute(): void
    {
        $this->stmt->execute();
    }

    /**
     * @return mixed
     */
    public function resultSet(): mixed
    {
        $this->execute();
        return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * @return mixed
     */
    public function single(): mixed
    {
        $this->execute();
        return $this->stmt->fetch(PDO::FETCH_ASSOC);
    }

    /**
     * @return mixed
     */
    public function countSet(): mixed
    {
        $this->execute();
        return $this->stmt->fetchColumn();
    }

    /**
     * @return false|string
     */
    public function lastInsertId(): false|string
    {
        return $this->dbh->lastInsertId();
    }

    /**
     * Update user data based on some condition.
     *
     * @param string $name
     * @param int $phone
     * @param string $email
     * @return void
     */
    public function create(string $name, int $phone, string $email): void
    {
        $query = "INSERT INTO applications (name, phone, email, timestamp) VALUES (:name, :phone, :email, NOW())";

        $this->query($query);

        $this->bind(':name', $name);
        $this->bind(':phone', $phone);
        $this->bind(':email', $email);

        $this->execute();
    }
}