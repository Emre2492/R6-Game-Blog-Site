<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Haritalar";
// metni sinirlama fonksiyoru. ilk parametrede metin ikincisinde kac karakter gorunmesinin istendigini gonderiyoruz fonksiyona
function limit_text($text, $limit) {
      if (str_word_count($text, 0) > $limit) {
          $words = str_word_count($text, 2);
          $pos = array_keys($words);
          $text = substr($text, 0, $pos[$limit]) . '...';
      }
      return $text;
    }

if(isset($_SESSION["loggedIn"]) == False) {
    header('Location: login.php');
    exit();
} else {
	include 'admin_header.php';
	$sql = "SELECT * FROM maps ORDER BY map_id";
	$result = $baglanti->query($sql);
?>

<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
		<h3 style="margin-top: 3%;">Haritalar Listesi</h3>
		<div style="text-align: right; margin-top: -4%; margin-bottom: 2%;"><a href="admin_harita_ekle.php" class="btn btn-primary">Yeni Harita Ekle</a></div>
		
		
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<td><b>#</b></td>
					<td><b>Baslik</b></td>
					<td><b>Icerik</b></td>
					<td><b>Resim Yolu</b></td>
					<td><b>Operasyonlar</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				if ($result->num_rows > 0) {
					// eger harita varsa sirala
					while($row = $result->fetch_assoc()) {
						echo '<tr>' . 
							 '<td>' . $row['map_id'] . '</td>' .
							 '<td>' . $row['map_title'] . '</td>' .
							 '<td>' . limit_text($row['map_content'], 10) . '</td>' .
							 '<td>' . $row['map_image'] . '</td>' .
							 '<td>' . '<a href="admin_map_edit.php?id=' . $row['map_id'] . '">Duzenle</a> | <a href="admin_map_delete.php?id=' . $row['map_id'] . '&img=' . htmlspecialchars($row['map_image']) . '">Sil</a></td>'. 
        		 	 		 '</tr>'
        		 	 		;
					} 
				} else {
					echo "0 results";
				}
			?>
			</tbody>
		</table>
	</div>
</body>
</html>
<?php }
$baglanti->close(); ?>