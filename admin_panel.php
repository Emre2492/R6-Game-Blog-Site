<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Duyurular";

function limit_text($text, $limit) { //içeriği basarken karakter sınırlaması
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
	$sql = "SELECT * FROM announcements ORDER BY ann_id";
	$result = $baglanti->query($sql);
?>

<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
	
		<h3 style="margin-top: 3%;">Duyurular Listesi</h3>
		<div style="text-align: right; margin-top: -4%; margin-bottom: 2%;"><a href="admin_duyuru_ekle.php" class="btn btn-primary">Yeni Duyuru Ekle</a></div>
		
		
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<td><b>#</b></td>
					<td><b>Baslik</b></td>
					<td><b>Icerik</b></td>
					<td><b>Gonderim Tarihi</b></td>
					<td><b>Operasyonlar</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				if ($result->num_rows > 0) {
					while($row = $result->fetch_assoc()) {
						echo '<tr>' . 
							 '<td>' . $row['ann_id'] . '</td>' .
							 '<td>' . $row['ann_title'] . '</td>' .
							 '<td>' . limit_text($row['ann_content'], 20) . '</td>' .
							 '<td>' . $row['ann_time'] . '</td>' .
							 '<td>' . '<a href="admin_duyuru_edit.php?id=' . $row['ann_id'] . '">Duzenle</a> | <a href="admin_duyuru_delete.php?id=' . $row['ann_id'] . '">Sil</a></td>'. 
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
$baglanti->close();
?>
