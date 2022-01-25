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

$sql = "INSERT INTO customer (name, mobile, email, address,status ) VALUES ('$_POST[name]' ,'$_POST[mobile]' ,'$_POST[email]' ,'$_POST[address]','$_POST[status]'  )";


if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
  header("Location: list_customer.php"); /* Redirect browser */
  exit();
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
?>