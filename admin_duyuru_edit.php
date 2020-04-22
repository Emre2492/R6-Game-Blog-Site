<?php
session_start();
 
require_once 'baglan.php';
$feedback = "";
$pageTitle = "Duyuru Duzenle";

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	$ann_id = $_GET['id'];
	$sql = "SELECT * FROM announcements WHERE ann_id = " . $ann_id;
	$result = $baglanti->query($sql);

	if ($result->num_rows > 0) {  //düzenlenecek duyurunun verisini çekiyor
		$resultDataSet = $result->fetch_assoc();
	}

	if (isset($_POST["submit"])) {
		$ann_title = $_POST['ann_title'];
		$ann_content = $_POST['ann_content'];

		$sql = "UPDATE announcements SET ann_title='" . $ann_title . "', ann_content='" . $ann_content . "' WHERE ann_id=" . $ann_id;
		if ($baglanti->query($sql) === TRUE) {
    		$feedback = "Duyuru basari ile guncellendi!!!";
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
			<h3 style="margin-top: 3%;">Duyuruyu Düzenle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . '?id=' . $ann_id ; ?>" method="post">
				<div class="form-group">
					<label for="ann_title">Duyuru Basligi</label>
					<input type="input" class="form-control" placeholder="Baslik" name="ann_title" value="<?php echo $resultDataSet['ann_title'];?>">
				</div> 
				
				<div class="form-group">
					<label for="ann_content">Duyuru icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="ann_content"><?php echo $resultDataSet['ann_content'];?></textarea>
					<?php if (isset($feedback)) { echo '<small>' . $feedback . ' <a href="admin_panel.php">Duyurulara Don</a></small>';} ?>
				</div>

				<button type="submit" name="submit" class="btn btn-primary">Kaydet</button>
			</form>
		</div>
	</div>
</body>
</html>

<?php }
$baglanti->close(); ?>