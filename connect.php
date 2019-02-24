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
$output ='';
if(isset ($_POST['search'])){
        $searchq = $_POST['search'];
        $searchq = preg_replace("#[^0-9a-z]#i", "", $searchq);
    
    $sql = "SELECT * FROM Users WHERE name LIKE '%$searchq' OR localgovt LIKE '%$searchq' OR phone LIKE '%$searchq' OR location LIKE '%$searchq'" or die("coild not search!");
    $query = $conn->query($sql);
    
    
        if ($query->num_rows > 0) {
    // output data of each row
    while($row = $query->fetch_assoc()) {
                $name =       $row['name'];
                $localgovt =  $row['localgovt'];
                $phone =      $row['phone'];  
    /*$output .='<div class="output"><strong>' .$id. ' '. $name. ' '. $localgovt. ' '. $phone.'</strong></div>' ;*/
    ?>