<?php
      // connect to database
      include 'config/database.php';

      // include objects
      include_once "objects/product.php";
      include_once "objects/product_image.php";
      include_once "objects/cart_item.php";


      // get database connection
      $database = new Database();
      $db = $database->getConnection();

      // set page title
      $page_title="Products";

      // page header html
      include 'layout_head.php';

      // initialize objects
      $product = new Product($db);
      $product_image = new ProductImage($db);
      $cart_item = new CartItem($db);


      // to prevent undefined index notice
      $action = isset($_GET['action']) ? $_GET['action'] : "";

      // for pagination purposes
      // page is the current page, if there's nothing set, default is page 1
      $page = isset($_GET['page']) ? $_GET['page'] : 1;
      // set records or rows of data per page
      $records_per_page = 6;
      // calculate for the query LIMIT clause
      $from_record_num = ($records_per_page * $page) - $records_per_page;


      //read all products in the database
      $stmt = $product->read($from_record_num, $records_per_page);

      //count number of retrieved products
      $num = $stmt->rowCount();

      //if products retrieved are more than zeror
      if($num > 0){
        //used for pagination
        $page_url = "products.php";
        $total_rows = $product->count();

        //show the products
        include_once "read_products_template.php";
      }else{
        echo "<div class='col-md-12'>";
          echo "<div class='alert alert-danger'>No products found.</div>";
        echo "</div>";
      }

      // layout footer code
      include 'layout_foot.php';
?>
