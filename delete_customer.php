<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "inventory_management";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// sql to delete a record
$sql = "DELETE FROM customer WHERE id=".$_GET['id'];

if ($conn->query($sql) === TRUE) {
  echo "Record deleted successfully";
  header("Location: list_customer.html"); /* Redirect browser */
  
} else {
  echo "Error deleting record: " . $conn->error;
}


?>