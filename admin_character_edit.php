<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Karakter Duzenle";// sayfanin basligi
$feedback = "";// geridonus mesaji

if(isset($_SESSION["loggedIn"]) == False) {
	// giris yapmamissa login e git
    header('Location: login.php');
    exit();
} else {
	$char_id = $_GET['id'];// get ile parametreyi al

	$sql = "SELECT * FROM characters WHERE char_id = " . $char_id;// yapilacak sql sorgusu
	$result = $baglanti->query($sql);// sql sorgusunu mysql de calistir sonuclari $result a ata
	// eger sonuc varsa, birden fazla satir varsa elimizde
	if ($result->num_rows > 0) {
		// sonuclari $resultDataSet e ata. burada beklentimiz tek bir sonucun olmasi cunku bu id ye sahip tek karakter var
		$resultDataSet = $result->fetch_assoc();
	}
// eger form da submit e basildi ise
	if (isset($_POST["submit"])) {
		// formdan post ile gonderilmis verileri al
		$char_name = $_POST['char_name'];
		$char_content = $_POST['char_content'];
		$char_type = $_POST['char_type'];

		$char_image = "";
		$sql = "";
		// eger resim yuklenmisse ve bu yukleme islemi basarili ise
		if ($_FILES["image"]["error"] == 0){
			$uploaddir = 'karakterler/'; // resmin yuklenecegi klasor
			$uploadfile = $uploaddir . basename($_FILES['image']['name']);// resmin tam path i
// onbellekten istedigimiz yere tasindi ise resim karakterin onceki resmini karakterler klasorunden sil
			if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
    			unlink("karakterler/" . $resultDataSet["char_image"]);
    			$char_image = $_FILES['image']['name'];

    			$sql = "UPDATE characters SET char_name='$char_name', char_content='$char_content', char_type=" . $char_type . ", char_image='$char_image' WHERE char_id=" . $char_id;
			}
		} else {
			// eger resum yuklenmediyse yalnizca metin kisminin update'i icin sorgu:
			$sql = "UPDATE characters SET char_name='$char_name', char_type=" . $char_type . ", char_content='$char_content' WHERE char_id=" . $char_id;
		}

		if ($baglanti->query($sql) === TRUE) {
			// basarili ile geridonus 
    		$feedback = "Harita basari ile guncellendi!!!";
		} else {
			// degilse geridonus
    		$feedback =  "Hata: " . $sql . "<br>" . $baglanti->error;
		}
	}

	include 'admin_header.php';
?>
<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
		<div class="col-md-7 col-centered">
			<h3 style="margin-top: 3%;">Karakter Duzenle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . '?id=' . $char_id; ?>" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="exampleInputEmail1">Karakter Adi</label>
					<input type="input" class="form-control" name="char_name" value="<?php echo $resultDataSet['char_name'];?>">
				</div>
				
				<div class="form-group">
					<label for="exampleTextarea">Karakter icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="char_content"><?php echo $resultDataSet['char_content'];?></textarea>
					<?php if (isset($feedback)) { echo '<small>' . $feedback . ' <a href="admin_karakterler.php">Karakterlere Don</a></small>';} ?>
				</div>

				<div class="form-group">
					<label for="char_type">Karakter Tipi</label>
					<select class="form-control" id="char_type" name="char_type">
						<option value="1" <?php  echo ($resultDataSet['char_type'] == 1) ? 'selected' : '';?>>Saldiri</option>
						<option value="2" <?php  echo ($resultDataSet['char_type'] == 2) ? 'selected ' : '';?>>Savunma</option>
					</select>
				</div>

				<div class="form-group">
					<label for="imagePath">Resim secin:</label>
					<input type="file" class="form-control-file" id="imagePath" aria-describedby="fileHelp" name="image">
				</div>

				<button type="submit" name="submit" class="btn btn-primary">Gonder</button>
			</form>
		</div>
	</div>
</body>
</html>

<?php }
$baglanti->close();
?>