<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Harita Ekle";


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

		$map_title = $_POST['map_title'];
		$map_content = $_POST['map_content'];
		$map_image = $_FILES['image']['name'];

		if(empty($map_title))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Harita adı belirtilmemiş.</div>';
		elseif(empty($map_content))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Harita içeriği belirtilmemiş.</div>';
		elseif(empty($map_image))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Harita resmi belirtilmemiş.</div>';	
		else
		{
			$uploaddir = 'map/';
			$randomname = rand(1,999999999).'.png';
			$uploadfile = $uploaddir . $randomname;

			if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile))
						$map_image = $randomname;
			
			$sql = "INSERT INTO maps (map_title, map_content, map_image) VALUES (?,?,?)";
			$stmt = $baglanti->prepare($sql); // soru işaretleri değer gelecek yerlere bakıyor

			$stmt->bind_param("sss", $map_title, $map_content, $map_image); //bind parametreleri bindiriyor ? için

			if($stmt->execute())
				echo '<div class="alert alert-success"><strong>Tebrikler!</strong> Harita eklenmiştir.</div>';		
			else
				echo '<div class="alert alert-danger"><strong>Hata!</strong> Harita eklenme sırasında hata oluştu.</div>';
			
			$stmt->close();
		}
		
	}
		
		?>
			<h3 style="margin-top: 3%;">Yeni Harita Ekle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="exampleInputEmail1">Harita Basligi</label>
					<input type="input" class="form-control" placeholder="Baslik" name="map_title">
				</div>
				
				<div class="form-group">
					<label for="exampleTextarea">Harita icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="map_content"></textarea>
					<?php if (isset($feedback)) { echo '<small>' . $feedback . ' <a href="admin_haritalar.php">Haritalara Don</a></small>';} ?>
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
$baglanti->close(); ?>