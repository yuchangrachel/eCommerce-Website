<?php
// parameters from the add to cart button
$product_id = isset($_GET['id']) ? $_GET['id'] : "";
$quantity = isset($_GET['quantity']) ? $_GET['quantity'] : 1;

// make quantity a minimum of 1
$quantity=$quantity<=0 ? 1 : $quantity;

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

echo $cart_item->user_id;
echo $cart_item->product_id;
echo $cart_item->quantity;

// check if the item is in the cart, if it is, do not add
if($cart_item->exists()){
    // redirect to product list and tell the user it was added to cart
    header("Location: cart.php?action=exists");
}else{
    // add to cart
    if($cart_item->create()){
        // redirect to product list and tell the user it was added to cart
        header("Location: products.php?id={$product_id}&action=added");
    }else{
        header("Location: products.php?id={$product_id}&action=unable_to_add");
    }
}
?>
