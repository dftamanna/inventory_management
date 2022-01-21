<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname= "inventory_management";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";

$sql = "INSERT INTO item (name, catagory, stock, purches_price, sell_price ) VALUES ('$_POST[name]' ,'$_POST[catagory]' ,'$_POST[stock]' ,'$_POST[purchesPrice]','$_POST[sellPrice]' )";


if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
  header("Location: list_item.html"); /* Redirect browser */
  exit();
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
?>