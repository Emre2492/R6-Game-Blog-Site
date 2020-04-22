<?php
session_start();
 
require_once 'baglan.php';

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	$map_id =  $_GET['id'];
	$map_image = $_GET['img'];

	$sql = "DELETE FROM maps WHERE map_id=" . $map_id;
	
	if ($baglanti->query($sql) === TRUE) { // sql düzgün çalışıyorsa
    		unlink("map/" . $map_image);
		} else {
    		$feedback =  "Hata: " . $sql . "<br>" . $baglanti->error; //çalışmıyorsa da hata veriyor
		}
	header("Location: admin_haritalar.php");	
}
$baglanti->close();
?>