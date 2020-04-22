<?php
session_start();
 
require_once 'baglan.php';
$pageTitle = "Yorumlar"; //Sayfa Başlığı


if(isset($_SESSION["loggedIn"]) == False) {//Giriş yapılmışmı kontrolü
    header('Location: login.php');
    exit();
} else {
	include 'admin_header.php';
	$sql = "SELECT * FROM comments ORDER BY com_id";
	$result = $baglanti->query($sql);
?>

<body>
	<?php include 'admin_menu.php'; ?> <!--menünün çağırılması -->
	<div class="container">
		<h3 style="margin-top: 3%;">Yorumlar Listesi</h3>	
		
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<td><b>#</b></td>
					<td><b>Gonderici</b></td>
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
							 '<td>' . $row['com_id'] . '</td>' .
							 '<td><a href="mailto:' . $row['com_senderemail'] . '">' . $row['com_sendername'] . '</a></td>' .
							 '<td>' . $row['com_content'] . '</td>' .
							 '<td>' . $row['com_time'] . '</td>' .
							 '<td>' . '<a href="admin_yorum_delete.php?id=' . $row['com_id'] . '">Sil</a></td>'. 
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