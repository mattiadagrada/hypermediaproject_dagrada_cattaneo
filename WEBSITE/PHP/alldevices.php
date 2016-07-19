<?php
$servername = "ftp.mmobilehypermedia.altervista.org";
$username = "mmobilehypermedia";
$password = "nekmakirso38";
$dbname = "my_mmobilehypermedia";

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$query = "(SELECT Category, Brand, Name, Image FROM DEVICE WHERE Category='Smartphone' LIMIT 3)
			UNION (SELECT Category, Brand, Name, Image FROM DEVICE WHERE Category='Tablet' LIMIT 3)
            UNION (SELECT Category, Brand, Name, Image FROM DEVICE WHERE Category='Networking' LIMIT 3)
            UNION (SELECT Category, Brand, Name, Image FROM DEVICE WHERE Category='SmartLiving' LIMIT 3)";
$result = $mysqli->query($query);
if($result->num_rows > 0){
	$myArray = array();
	while($row = $result->fetch_array(MYSQL_ASSOC)){
		$myArray[] = $row;
	}
}

$query ="(SELECT Category, Brand, Name, Image FROM DEVICE WHERE OutletPrice is not null LIMIT 3)";
$result = $mysqli->query($query);
if($result->num_rows > 0){
	while($row = $result->fetch_array(MYSQL_ASSOC)){
		$myArray[] = $row;
	}
}

echo json_encode($myArray);
$mysqli->close();
?>