<?php 

$dbadi="emre";  // Veritaban� (Database) Ad� Girilecek. 
$dbkullanciadi="root"; // Veritaban� (Database) Kullan�c� Ad�n� Girilecek. 
$dbsifre=""; // Veritaban� Kullan�c� �ifresi Girilecek. 
$sunucu="localhost"; 

$baglanti= new mysqli($sunucu,$dbkullanciadi,$dbsifre,$dbadi); 

if ($baglanti->connect_error) {
    die("Connection failed: " . $baglanti->connect_error);
}
?> 
