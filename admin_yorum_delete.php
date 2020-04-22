<?php
session_start();
 
require_once 'baglan.php';

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	$com_id =  $_GET['id'];
	$sql = "DELETE FROM comments WHERE com_id=" . $com_id;
	$baglanti->query($sql);
	header("Location: admin_yorumlar.php");
	
}

$baglanti->close();
?>