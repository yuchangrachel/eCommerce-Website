<?php
/**
 * used to get a connection to the mysql database
 */
class Database {

  private $host = "localhost";
  private $db_name = "ecart_db";
  private $username = "root";
  private $password = "admin";
  public $conn;

  //get the db connection
  public function getConnection(){
    $this->conn = null;

    try{
      $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
    }catch(PDOException $exception){
      echo "Connection error: " . $exception->getMessage();
    }

    return $this->conn;
  }
}


?>
