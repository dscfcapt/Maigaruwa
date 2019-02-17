<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "garuwa";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

if(isset($_POST['register']))  
{  
  $user_name = $_POST['name'];
  $user_phone = $_POST['phone'];
  $user_location = $_POST['location'];
  $user_truckSize = $_POST['truckSize'];
  $user_station = $_POST['station'];
  $user_localgovt = $_POST['localgovt'];
  $user_password = $_POST['password'];
  
$sql = "INSERT INTO Users (name, phone, location, truckSize, station, localgovt, password)
VALUES ('$user_name', '$user_phone', '$user_location', '$user_truckSize', '$user_station', '$user_localgovt', '$user_password')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}

$conn->close();
?> 