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

$sql = "INSERT INTO catagory(code, name, description) VALUES ('$_POST[code]' ,'$_POST[name]' ,'$_POST[description]'  )";


if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
  header("Location: list_catagory.html"); /* Redirect browser */
  exit();
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
?> 