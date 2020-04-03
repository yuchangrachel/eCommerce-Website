<?php
  // get the product id
  $product_id = isset($_GET['id']) ? $_GET['id'] : 1;
  $quantity = isset($_GET['quantity']) ? $_GET['quantity'] : "";

  $quantity=$quantity<=0 ? 0 : $quantity;

  // connect to database
  include 'config/database.php';

  // include object
  include_once "objects/cart_item.php";

  // get database connection
  $database = new Database();
  $db = $database->getConnection();

  // initialize objects
  $cart_item = new CartItem($db);

  // set cart item values
  $cart_item->user_id=1; // we default to '1' because we do not have logged in user
  $cart_item->product_id=$product_id;
  $cart_item->quantity=$quantity;

  // add to cart
  if($cart_item->update()){
      // redirect to product list and tell the user it was added to cart
      header("Location: cart.php?action=updated");
  }else{
      header("Location: cart.php?action=unable_to_update");
  }
?>
