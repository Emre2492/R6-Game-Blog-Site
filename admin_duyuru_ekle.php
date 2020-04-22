<?php
session_start();
 
require_once 'baglan.php';
$feedback = "";
$pageTitle = "Duyuru Ekle";

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

		$ann_title = $_POST['ann_title'];
		$ann_content = $_POST['ann_content'];

		if(empty($ann_title))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Duyuru Basligi belirtilmemiş.</div>';
		elseif(empty($ann_content))
			echo '<div class="alert alert-danger"><strong>Uyarı!</strong> Duyuru içeriği belirtilmemiş.</div>';
		else
		{
			$sql = "INSERT INTO announcements (ann_title, ann_content) VALUES ('" . $ann_title . "', '" . $ann_content . "')";

			if($baglanti->query($sql) === TRUE)
				echo '<div class="alert alert-success"><strong>Tebrikler!</strong> Duyuru eklenmiştir.</div>';		
			else
				echo '<div class="alert alert-danger"><strong>Hata!</strong> Duyuru eklenme sırasında hata oluştu.</div>';
		}
		
	}
		
		?>
			<h3 style="margin-top: 3%;">Yeni Duyuru Ekle</h3>
			<hr>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Duyuru Basligi</label>
					<input type="input" class="form-control" placeholder="Baslik" name="ann_title">
				</div>
				
				<div class="form-group">
					<label for="exampleTextarea">Duyuru icerigi</label>
					<textarea class="form-control" id="content" rows="15" name="ann_content"></textarea>
					<?php if (isset($feedback)) { echo '<small>' . $feedback . ' <a href="admin_panel.php">Anasayfaya Don</a></small>';} ?>
				</div>

				<button type="submit" name="submit" class="btn btn-primary">Gonder</button>
			</form>
		</div>
	</div>
</body>
</html>

<?php } 
$baglanti->close();?>