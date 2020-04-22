<?php 
require_once 'baglan.php';
$sql = "SELECT * FROM characters WHERE char_type = 1"; //karakter tipi 1 saldırı
$saldiri = $baglanti->query($sql);

$sql = "SELECT * FROM characters WHERE char_type = 2";//karakter tipi 2 savunma
$savunma = $baglanti->query($sql);

$sql = "SELECT * FROM comments ORDER BY com_id DESC";
$yorumlar = $baglanti->query($sql);

if (isset($_POST["submit"])) {
    $com_sendername = $_POST['com_sendername']; //formdan gelen ad
    $com_senderemail = $_POST['com_senderemail'];//formdan gelen mail
    $com_content = addslashes($_POST['com_content']);//formdan gelen mesaj = tek tırnak boşluk çift tırnak yazabilmemizi sağlıyor

    $insertSql = "INSERT INTO comments (com_sendername, com_senderemail, com_content) VALUES ('$com_sendername', '$com_senderemail', '$com_content')";

    if ($baglanti->query($insertSql) === TRUE) {
        $feedback = "Yorum basari ile eklendi!";
    } else {
        $feedback =  "Hata: " . $insertSql . "<br>" . $baglanti->error;
    }
  }




  include("header.php"); 
?>
<div class="container">

<?php include("menu.php"); ?>

<div id="anadiv">

<div id="soldiv" style="float:left; width: 50%;">

<table class="karakter">
  <thead> 
    <tr> 
      <th class="auto-style1" colspan= "2"> <font color="black">Saldırı Timi</font></th>
    </tr> 
  </thead>
<tbody>
<?php
if ($saldiri->num_rows > 0) {
  while($row = $saldiri->fetch_assoc()) {
    echo '<tr>' .
         '<td>' . 
         '<img src="./karakterler/' . $row['char_image'] . '" width="150px" height="131px">' . 
         '</td>' . 
         '<td>' . 
         '<font color="red"><p align="left"><b>' .$row['char_name'] . '</b></p></font>' .
         '<p align="left">' . $row['char_content'] . '</p>' .
         '</tr>'
        ;
  }
}

?>
</tbody>
</table>

</div>

<div id="sagdiv" style="">

<table class="karakter">
  <thead> 
    <tr> 
      <th class="auto-style1" colspan= "2"> <font color="black">Savunma Timi</font></th>
    </tr> 
  </thead>
<tbody>
<?php
if ($savunma->num_rows > 0) {
  while($row = $savunma->fetch_assoc()) {
    echo '<tr>' .
         '<td>' . 
         '<img src="./karakterler/' . $row['char_image'] . '" width="150px" height="131px">' . 
         '</td>' . 
         '<td>' . 
         '<font color="red"><p align="left"><b>' .$row['char_name'] . '</b></p></font>' .
         '<p align="left">' . $row['char_content'] . '</p>' .
         '</tr>'
        ;
  }
}

?>
</tbody>
</table>

</div>

</div>
</br>
<div id="altdiv" style="float:left; width: 100%;">

<table class="karakter" style = "width:100%">
  <thead> 
    <tr> 
      <th class="auto-style1" colspan= "4"> <font color="black">Yorumlar</font></th>
    </tr> 
  </thead>
<tbody>
  <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST"><!--aynı dosyada hem form bilgilerini koymak hem de form bilgilerine işlem yapmak için ,form içindeki verileri dosya post yöntemi ile kendi kendine gönderir.-->
  <tr>
    <td>Isim: <input type="text" name="com_sendername"></td>
    <td>E-posta: <input type="email" name="com_senderemail"></td>
    <td>Yorum : <textarea name="com_content"></textarea></td>
    <td><button type="submit" name="submit">Gonder</button></td>
  </tr>
  </form>
<?php
if ($yorumlar->num_rows > 0) {
  while($row = $yorumlar->fetch_assoc()) {
    echo '<tr>' .
         '<td>' . 
         '' . $row['com_time'] . '' . 
         '</td>' . 
         '<td colspan=3>' . 
         '<font color="red"><p align="left"><b><a href="mailto:' . $row['com_senderemail'] . '">' .$row['com_sendername'] . '</a></b></p></font>' .
         '<p align="left">' . $row['com_content'] . '</p>' .
         '</tr>'
        ;
  }
}

?>
</tbody>
</table>
</div>


</tbody>
</table>

<style>

table.karakter {
  border: 1px solid #1C6EA4;
  background-color: rgba(238, 238, 238,0.1);
  
  text-align: left;
  border-collapse: collapse;
  text-align : center;
}
table.karakter td, table.karakter th {
  border: 1px solid #AAAAAA;
  padding: 3px 2px;
}
table.karakter tbody td {
  font-size: 13px;
}
table.karakter tr:nth-child(even) {
   background-color: rgba(189, 128, 229,0.4);
}
table.karakter thead {
  background: #ffffff;
  background: -moz-linear-gradient(top, #ffffff 0%, #ffffff 66%, #ffffff 100%);
  background: -webkit-linear-gradient(top, #ffffff 0%, #a7a3a3 66%, #ffffff 100%);
  background: linear-gradient(to bottom, #ffffff 0%, #a7a3a3 66%, #ffffff 100%);
  border-bottom: 2px solid #444444;
}
table.karakter thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFFFFF;
  border-left: 2px solid #D0E4F5;
}
table.karakter thead th:first-child {
  border-left: none;
}

table.karakter tfoot td {
  font-size: 14px;
}
table.karakter tfoot .links {
  text-align: right;
}
table.karakter tfoot .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}


</style>

<?php 
include("footer.php");
$baglanti->close(); 
?>