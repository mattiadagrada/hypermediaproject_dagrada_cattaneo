<?php
$servername = "ftp.mmobilehypermedia.altervista.org";
$username = "mmobilehypermedia";
$password = "nekmakirso38";
$dbname = "my_mmobilehypermedia";

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT * FROM DEVICE WHERE OutletPrice is not NULL";
$result = $mysqli->query($query);
if($result->num_rows > 0){
	$myArray = array();
	while($row = $result->fetch_array(MYSQL_ASSOC)){
		$myArray[] = $row;
	}
}


$query = "SELECT * FROM SMARTLIFE WHERE OutletPrice is not NULL";
$result = $mysqli->query($query);
if($result->num_rows > 0){
	while($row = $result->fetch_array(MYSQL_ASSOC)){
		$myArray[] = $row;
	}
}
echo json_encode($myArray);
$mysqli->close();
?>