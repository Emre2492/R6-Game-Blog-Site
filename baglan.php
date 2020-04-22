<?php 

$dbadi="emre";  // Veritabaný (Database) Adý Girilecek. 
$dbkullanciadi="root"; // Veritabaný (Database) Kullanýcý Adýný Girilecek. 
$dbsifre=""; // Veritabaný Kullanýcý Þifresi Girilecek. 
$sunucu="localhost"; 

$baglanti= new mysqli($sunucu,$dbkullanciadi,$dbsifre,$dbadi); 

if ($baglanti->connect_error) {
    die("Connection failed: " . $baglanti->connect_error);
}
?> 
