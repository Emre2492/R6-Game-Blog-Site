<?php

$sql = "SELECT * FROM maps";
$maps = $baglanti->query($sql);

?>
<table class="map">
<thead> 
<tr> 
<th class="auto-style1" colspan= "3"> <font color="black">Mapler</font></th> 

</tr> 
</thead>
<tbody>
<tr>
<td></td>
<td></td>
<td></td>

</tr>

<?php
if ($maps->num_rows > 0) { //sorgu numarası
  while($row = $maps->fetch_assoc()) { //fetch row a atıyor formatlayıp
    echo '<tr>' .
         '<td><font face="verdana" color="red"><b>' . $row['map_title'] . '</b></font></td>' . 
         '<td><img src="./map/' . $row['map_image'] . '" width="100%"></td>' .  
         '<td>' . 
         '<font face="verdana" color="black"><b>' . $row['map_content'] . '</b></font></td>' .
         '</tr>'
        ;
  }
}

?>
</tbody>
</table>
<style>
table.map {
  border: 1px solid #1C6EA4;

  background-color: rgba(238, 238, 238,0.1);
  
  width: 100%;

  border-collapse: collapse;
  
}
table.map td, table.map th {
  border: 1px solid #AAAAAA;
  
  padding: 3px 2px;
}
table.map tbody td {
  font-size: 13px;
}
table.map tr:nth-child(even) {
  
  background-color: rgba(189, 128, 229,0.4);
}
table.map thead {
  background: #ffffff;
  background: -moz-linear-gradient(top, #ffffff 0%, #ffffff 66%, #ffffff 100%);
  background: -webkit-linear-gradient(top, #ffffff 0%, #a7a3a3 66%, #ffffff 100%);
  background: linear-gradient(to bottom, #ffffff 0%, #a7a3a3 66%, #ffffff 100%);
  border-bottom: 2px solid #444444;
}
table.map thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFFFFF;
  border-left: 2px solid #D0E4F5;
}
table.map thead th:first-child {
  border-left: none;
}

table.map tfoot td {
  font-size: 14px;
}
table.map tfoot .links {
  text-align: right;
}
table.map tfoot .links a{
  display: inline-block;
  background: #1C6EA4;
  
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
  
}
</style>
