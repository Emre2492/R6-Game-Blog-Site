<?php
session_start();
 // session basla
require_once 'baglan.php';
// baglan.php dosyasini cagir
if(isset($_SESSION["loggedIn"]) == False) { // giris yapilmis mi kontrol et
// yapilmamissa login ekranina yonlendir
    header('Location: login.php');
    exit();
} else {
	$char_id =  $_GET['id'];// get olarak gonderilmis parametreleri al
	$char_image = $_GET['img'];

	$sql = "DELETE FROM characters WHERE char_id=" . $char_id;
	// query() mysql tarafinda sorgunun basari ile calistigi durumda true dondurur
	if ($baglanti->query($sql) === TRUE) {
		// mysql tarafinda basarili ise resmi sil
    		unlink("karakterler/" . $char_image);
		} else {
			// degilse hata mesajini yazdie
    		$feedback =  "Hata: " . $sql . "<br>" . $baglanti->error;
		}
		// karakterler sayfasina yonlendir
	header("Location: admin_karakterler.php");	
}

$baglanti->close();
?>