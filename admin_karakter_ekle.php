<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Karakter Ekle";

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	include 'admin_header.php';
?>
<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
		<div class="col-md-7 col-centered">
		<br>
		<?php
		
		if (isset($_POST["submit"])) {

		$char_name = $_POST['char_name'];
		$char_content = $_POST['char_content'];
		$char_type = $_POST['char_type'];
		$char_image = $_FILES['image']['name'];

		if(empty($char_name))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Karakter adı belirtilmemiş.</div>';
		elseif(empty($char_content))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Karakter içeriği belirtilmemiş.</div>';
		elseif(empty($char_type))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Karakter tipi belirtilmemiş.</div>';
		elseif(empty($char_image))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Karakter resmi belirtilmemiş.</div>';	
		else
		{
			$uploaddir = 'karakterler/';
			$randomname = rand(1,999999999).'.png';
			$uploadfile = $uploaddir . $randomname;

			if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile))
				$char_image = $randomname;
			
			$sql = "INSERT INTO characters (char_name, char_content, char_image, char_type) VALUES (?,?,?,?)";
			$stmt = $baglanti->prepare($sql); // soru işaretleri değer gelecek yerlere bakıyor

			$stmt->bind_param("sssd", $char_name, $char_content, $char_image, $char_type); //bind parametreleri bindiriyor ? için

			if($stmt->execute())
				echo '<div class="alert alert-success"><strong>Tebrikler!</strong> Karakter eklenmiştir.</div>';		
			else
				echo '<div class="alert alert-danger"><strong>Hata!</strong> Karakter eklenme sırasında hata oluştu.</div>';
			
			$stmt->close();
		}
		
	}
		
		?>
			<h3 style="margin-top: 3%;">Yeni Karakter Ekle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="exampleInputEmail1">Karakter Adi</label>
					<input type="input" class="form-control" placeholder="Baslik" name="char_name">
				</div>
				
				<div class="form-group">
					<label for="exampleTextarea">Karakter icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="char_content"></textarea>
					<?php if (isset($feedback)) { echo '<small>' . $feedback . ' <a href="admin_karakterler.php">Karakterlere Don</a></small>';} ?>
				</div>

				<div class="form-group">
					<label for="char_type">Karakter Tipi</label>
					<select class="form-control" id="char_type" name="char_type">
						<option value="1">Saldiri</option>
						<option value="2">Savunma</option>
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
$baglanti->close();?>