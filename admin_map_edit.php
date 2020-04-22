<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Harita Duzenle";
$feedback = "";

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	$map_id = $_GET['id'];

	$sql = "SELECT * FROM maps WHERE map_id = " . $map_id;
	$result = $baglanti->query($sql);

	if ($result->num_rows > 0) {
		$resultDataSet = $result->fetch_assoc();
	}

	if (isset($_POST["submit"])) {
		$map_title = $_POST['map_title'];
		$map_content = $_POST['map_content'];
		
		$map_image = "";
		$sql = "";
		
		if ($_FILES["image"]["error"] == 0){
			$uploaddir = 'map/';
			$uploadfile = $uploaddir . basename($_FILES['image']['name']); //yüklenecek resimin yolunu belirliyosun

			if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
    			unlink("map/" . $resultDataSet["map_image"]); //eski resmi siliyo
    			$map_image = $_FILES['image']['name'];

    			$sql = "UPDATE maps SET map_title='$map_title', map_content='$map_content', map_image='$map_image' WHERE map_id=" . $map_id;
			}
		} else {
			$sql = "UPDATE maps SET map_title='$map_title', map_content='$map_content' WHERE map_id=" . $map_id; // resim yüklendiyse yada hata yoksa 
		}

		if ($baglanti->query($sql) === TRUE) {
    		$feedback = "Harita basari ile guncellendi!!!";
		} else {
    		$feedback =  "Hata: " . $sql . "<br>" . $baglanti->error;
		}
	}

	include 'admin_header.php';
?>
<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
		<div class="col-md-7 col-centered">
			<h3 style="margin-top: 3%;">Harita Duzenle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . '?id=' . $map_id; ?>" method="post" enctype="multipart/form-data"> <!-- resmi alabilmesi için -->
				<div class="form-group">
					<label for="exampleInputEmail1">Harita Basligi</label>
					<input type="input" class="form-control" placeholder="Baslik" name="map_title" value="<?php echo $resultDataSet['map_title'];?>">
				</div>
				
				<div class="form-group">
					<label for="exampleTextarea">Harita icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="map_content"><?php echo $resultDataSet['map_content'];?></textarea>
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
$baglanti->close();?>