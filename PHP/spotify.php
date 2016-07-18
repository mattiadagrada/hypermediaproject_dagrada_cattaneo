<?php
$servername = "ftp.mmobilehypermedia.altervista.org";
$username = "mmobilehypermedia";
$password = "nekmakirso38";
$dbname = "my_mmobilehypermedia";

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT URL FROM IMAGES WHERE Name = 'Spotify'";
$result = $mysqli->query($query);
$spotify = mysqli_fetch_row($result);

echo json_encode($spotify);
?>