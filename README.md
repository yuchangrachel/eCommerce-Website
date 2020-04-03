![Screenshot](1.png)
![Screenshot](2.png)
![Screenshot](3.png)
![Screenshot](4.png)
![Screenshot](5.png)
![Screenshot](6.png)
# Basic E-Commerce website(include products show, cart, checkout)
Use boostrap,jQuery, php, mySQl.
[CSS CLASS](https://www.agewellglobal.com/helper-classes)
<br />know m-b-20px m-t-0px <br />

## File structure and roles
### Layout
1.layout_head.php<br />
$SESSION['cart']  html $page_title <br />

2.layout_foot.php<br />
html customized-js(class:update-quantity-form, class:product-id, class:cart-quantity<br />

3.navigation.php<br />
user_id count() <br />


### Display products
1.products.php<br />
Define $db, $page_title, $product, $product_image, $cart_item, $action, $page, 
$records_per_page, $from_record_num, $page_url, $total_rows <br />
call function: read($from_record_num, $records_per_page),  rowCount(), count() <br />

2.objects/product.php<br />
Implement read($from_records_num, $records_per_page), count(), readByIds($ids) <nr />

3.objects/product_image.php<br />
Implement readFirst()<br />

4.read_products_temp.php<br />
class:m-b-20px  product-id  product-link m-b-10px w-100-pct product-name w-1-pct<br />
$product_image  product_id  $id user_id  $cart_tiem <br />
call readFirst() <br />

5.pagination.php<br />
class:col-md-12 pagination(bootstrap) m-b-20px m-t-0px <br />
Define $cart_count $total_pages  $range  $page_url  $page<br />


### Cart
1.add_to_cart.php<br />
$cart_item  user_id  product_id  $product_id  quantity $quantity <br />
call exists() create() <br />
Action: added  exists unable_to_add<br />

2.objects/cart_item.php<br />
Implement exists() count()  create()  read()  update() delete()  deleteByUser()<br />    

3.remove_from_cart.php<br />
Define $product_id($GET['id']<br />
Action:removed <br />

4.update_quantity.php<br />
Define $product_id($GET)  $quantity($GET) <br />
Call $cart_item  update() <br />
Action:updated unable_to_update<br />

5.cart.php<br />
show all action results<br /> 
call $cart_count<br />
class:cart-row  product-name  update-quantity-form  product-id  input-group  cart-quantity  input-group-btn  update-quantity <br />
!!!update quantity: class is 'update-quantity-form will trigger layout_foot.php javascript $(document).ready function <br />

### Checkout
1.checkout.php<br / >
$page_title <br />
call $cart_count  $quantity <br />
Define $total $item_count  $sub_total<br />  
class: cart-row <br />

2.place_order.php<br />

#### tutorial is here!!
https://www.codeofaninja.com/2013/04/shopping-cart-in-php.html
