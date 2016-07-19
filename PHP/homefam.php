<?php
$servername = "ftp.mmobilehypermedia.altervista.org";
$username = "mmobilehypermedia";
$password = "nekmakirso38";
$dbname = "my_mmobilehypermedia";

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT D.Name, D.Brand, S.Image, S.Presentation, S.Subcategory, D.ID, S.Active FROM SMARTLIFE as S JOIN DEVICEANDSL as DS on S.ID = DS.SLID JOIN DEVICE as D on DS.DeviceID = D.ID WHERE S.Category='Home & Family' ORDER BY S.Subcategory";
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