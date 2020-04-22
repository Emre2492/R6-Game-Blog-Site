<?php
session_start();
 
require_once 'baglan.php';

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	$ann_id =  $_GET['id'];
	$sql = "DELETE FROM announcements WHERE ann_id=" . $ann_id;
	$baglanti->query($sql);
	header("Location: admin_panel.php");
	
}

$baglanti->close();
?>