<?php
$sql = "SELECT * FROM announcements ORDER BY ann_id DESC"; //Azalan düzende sırala
$result = $baglanti->query($sql);
?>
<section>
<h1 class="duyuruv1"><i class="fa fa-bullhorn" id="icon"></i><span class="yazi">Duyurular </span></h1>

<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">

<table style="width: 100%;" border="0" border-collapse: "collapse"; cellpadding="30">
<tbody>
<tr>

<td>
	<?php
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
        		echo '<div class="title">' . $row['ann_title'] . '</div>' . //Duyuru başlığı
        			 '<div class="ann_timestamp">' . $row['ann_time'] . '</div>' .//Duyuru zamanı
        		 	 '<div class="ann_content">' . $row['ann_content'] . '</div>' .//Duyuru içeriği
        		 	 '<hr>'
        		 	 ;
    		} 
		} else {
    		echo "0 results"; //Sonuç boş
		}
	?>

</td>
<td style="vertical-align:top">
<script type="text/javascript">
	var tt=new Date();
	var ay=new Array(12);	ay[0]="Ocak";ay[1]="Şubat";ay[2]="Mart";ay[3]="Nisan";ay[4]="Mayıs";ay[5]="Haziran";ay[6]="Temmuz";ay[7]="Ağustos";ay[8]="Eylül";ay[9]="Ekim";ay[10]="Kasım";ay[11]="Aralık";
	var gun=new Array(7);	gun[0]="Pazar";gun[1]="Pazartesi";gun[2]="Salı";gun[3]="Çarşamba";gun[4]="Perşembe";gun[5]="Cuma";gun[6]="Cumartesi";
</script>
<style type="text/css">
	.t_menu{width:200px;height:200px;background:#eb5300;padding:10px;margin:auto;text-align:center;}
	.t_gun,.t_tarih{color:#030003;font-size:18px;font-family:"Architects Daughter", cursive;line-height:20px;}
	.t_sayi{
		color:#030003;
		font-size:130px;
		font-family:"Architects Daughter",cursive;
		line-height:150px;
		}
</style>



<div class="t_menu">
	<div class="t_gun"><script type="text/javascript">document.write(gun[tt.getDay()])</script></div>
	<div class="t_sayi"><script type="text/javascript">document.write(tt.getDate())</script></div>
	<div class="t_tarih"><script type="text/javascript">document.write(ay[tt.getUTCMonth()])</script>  <script type="text/javascript">document.write(tt.getFullYear())</script></div>
</div>
</br>

<img src="./Duyuru/6siege.jpg" width="auto" height="auto" >
</br>
</br>
<img src="./Duyuru/maxresdefault.jpg" width="225px" height="225px">

</td>



</tr>
<tr>


</tr>
</tbody>
</table>
     

