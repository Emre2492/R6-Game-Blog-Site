<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Karakterler";

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
	$sql = "SELECT * FROM characters ORDER BY char_id";
	$result = $baglanti->query($sql);
?>

<body>
	<?php include 'admin_menu.php'; ?>
	<div class="container">
		<h3 style="margin-top: 3%;">Karakterler Listesi</h3>
		<div style="text-align: right; margin-top: -4%; margin-bottom: 2%;"><a href="admin_karakter_ekle.php" class="btn btn-primary">Yeni Karakter Ekle</a></div>
		
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<td><b>#</b></td>
					<td><b>Adi</b></td>
					<td><b>Icerik</b></td>
					<td><b>Karakter Tipi</b></td>
					<td><b>Resim Yolu</b></td>					
					<td><b>Operasyonlar</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				if ($result->num_rows > 0) {
					$char_type = "";
					while($row = $result->fetch_assoc()) {
						switch ($row['char_type']) {
							case 1:
								$char_type = 'Saldiri';
								break;
							case 2:
								$char_type = 'Savunma';
								break;
							
							default:
								$char_type = 'N/A';
								break;
						}

						echo '<tr>' . 
							 '<td>' . $row['char_id'] . '</td>' .
							 '<td>' . $row['char_name'] . '</td>' .
							 '<td>' . $char_type . '</td>' .
							 '<td>' . limit_text($row['char_content'], 10) . '</td>' .
							 '<td>' . $row['char_image'] . '</td>' .
							 '<td>' . '<a href="admin_character_edit.php?id=' . $row['char_id'] . '">Duzenle</a> | <a href="admin_character_delete.php?id=' . $row['char_id'] . '&img=' . htmlspecialchars($row['char_image']) . '">Sil</a></td>'. 
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