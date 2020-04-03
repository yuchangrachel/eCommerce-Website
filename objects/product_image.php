<?php
// 'product image' object
class ProductImage{

      // database connection and table name
      private $conn;
      private $table_name = "product_images";

      // object properties
      public $id;
      public $product_id;
      public $name;
      public $timestamp;

      // constructor
      public function __construct($db){
          $this->conn = $db;
      }

      // read the first product image related to a product
      function readFirst(){
        // select query
        $query = "SELECT id, product_id, name
                FROM " . $this->table_name . "
                WHERE product_id = ?
                ORDER BY id ASC
                LIMIT 0, 1";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->id=htmlspecialchars(strip_tags($this->id));

        // bind prodcut id variable
        $stmt->bindParam(1, $this->product_id);

        // execute query
        $stmt->execute();

        // return values
        return $stmt;
      }
}
