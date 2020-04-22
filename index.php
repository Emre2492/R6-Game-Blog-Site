<?php include("header.php"); ?>

<div class="container">

<?php include("menu.php"); 

switch($sayfa)
{
	case "anasayfa":
		include("home.php");
		break;
	case "haritalar":
		include("map.php");
		break;
	case "karakterler":
		include("characters.php");
		break;
	case "silah_eklenti_rehberi":
		include("silah_eklenti_rehberi.php");
		break;
	case "hakkinda":
		include("hakkinda.php");
		break;
		
	case "rank":
		include("rank.php");
		break;
		
	case "modlar":
		include("modlar.php");
		break;
   

	
	default:
		include("home.php");
	break;
}

include("footer.php"); 
?>