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

$sql = "UPDATE supplier  SET  name='".$_POST['name']."', mobile='".$_POST['mobile']."', address='".$_POST['address']."', status='".$_POST['status']."'  WHERE id=".$_POST['id'];

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
  header("Location: list_supplier.php"); /* Redirect browser */
  exit();
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

?> 
     
    </form>
  </div>