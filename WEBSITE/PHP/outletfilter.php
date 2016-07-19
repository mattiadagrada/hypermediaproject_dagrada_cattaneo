<?php
$servername = "ftp.mmobilehypermedia.altervista.org";
$username = "mmobilehypermedia";
$password = "nekmakirso38";
$dbname = "my_mmobilehypermedia";

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT * FROM DEVICE WHERE OutletPrice is not null";
$brand = $_POST['filterbrand'];
$os = $_POST['filteros'];
$price = $_POST['filterprice'];


if(!empty($_POST['filterbrand'])){
	$query = $query." and (Brand =".$brand[0];
    for($i=1 ; $i< count($brand) ; $i++)
    	$query = $query." or Brand=".$brand[$i];
   	$query = $query.")";
}

if(!empty($_POST['filteros'])){
    $query = $query." and (OS=".$os[0];
     for($i=1;$i< count($os);$i++)
    	$query = $query." or OS=".$os[$i];
	$query = $query.")";
}

if(!empty($_POST['filterprice'])){
    $query = $query." and (FullPrice between ".$price[0];
    for($i=1;$i< count($price) ;$i++)
    	$query = $query." or FullPrice between ".$price[$i];
    $query = $query.")";
}


$result = $mysqli->query($query);
if($result->num_rows > 0){
	$myArray = array();
	while($row = $result->fetch_array(MYSQL_ASSOC)){
		$myArray[] = $row;
	}
}
echo json_encode($myArray);
$mysqli->close();
?>