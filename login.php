<?php
// Include config file
require_once 'baglan.php';

$username = $password = ""; //formdan gelen veriler
$password_db = ""; //database den gelen şifre
$username_err = $password_err = $login_err = "";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Giris Yap</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; background: transparent url("./login/rainbow_six_siege_2-wallpaper-1366x768.jpg") left top no-repeat;
		   background-size: 100% auto;     
           background-repeat: no-repeat; }
           .wrapper{ width: 350px; padding: 20px; }
           .col-centered{
            float: none;
            margin: 0 auto;
			
        }
		
    </style>
</head>
<body>
    <div class="container">
        <div class="col-md-4 col-centered">
        
		<font color="white" ><h2>Giriş</h2> </font>
        <font color="white" ><p>*Lutfen formu eksiksiz doldurun</p></font>
        <form action="" method="post">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <font color="white" > <label>Kullanici Adi:<sup>*</sup></label></font>
                <input type="text" name="username"class="form-control" value="<?php if(isset($_COOKIE['username'])) echo $_COOKIE['username'];?>">
                <span class="help-block"><?php echo $username_err; ?></span>
            </div>    
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <font color="white" > <label>Parola:<sup>*</sup></label></font>
                <input type="password" name="password" class="form-control" value="">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
			<div class="checkbox">
			    		<label>
			      			<input name="hatirla" type="checkbox" <?php if($_COOKIE["rememberme"]){echo 'checked="checked"';} ?> >Beni Hatırla <!--Giriş yaptıktan sonra çıkış yapınca beni hatırla kutuçuğu hep işaretli geliyor.-->
		    		</label>
					
							<?php
								if(isset($_POST['hatirla']))
									 if(isset($_POST['username']))
										setcookie("username",$_POST['username'], time()+60*60*24);//1 ay cookie oluşturuyor
									 if(isset($_POST['hatirla']))
										setcookie("rememberme",$_POST['hatirla'], time()+60*60*24);
								?>

					
</div>					

            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Giriş">
            </div>
			<?php
	if($_SERVER["REQUEST_METHOD"] == "POST"){//Sayfaya erişmek için kullanılan istek yöntemini döndürür (post)

    if(empty(trim($_POST["username"]))){ //buduyo trim ile boşlukları temizliyor
        $username_err = 'Please enter username.';//Form da kullanıcı adınin boş olup olmadığı kontrol ediyor boşsa uyarı veriyor.
    } else{
        $username = $_POST["username"];//Değişkene atıyor.
    }

    if(empty(trim($_POST['password']))){//Form da şifrenin boş olup olmadığı kontrol ediyor boşsa uyarı veriyor.
        $password_err = 'Please enter your password.';
    } else{
        $password = $_POST['password'];
    }

    if(empty($username_err) && empty($password_err)){
    	$sql = "SELECT user_name, user_pass FROM users WHERE user_name = '" . $username . "'";
    	$result = $baglanti->query($sql); // veri tabanına sorgu gönderiyoruz.

    	if ($result->num_rows > 0) { //Database ki sonuçlardan bir satır çekip row a atıyor her seferinde bir sonraki satır
			// eger kayıt varsa sirala
			while($row = $result->fetch_assoc()) {//sonuç kümesini sadece sütun isimleriyle ilişkili olarak getiriyor.
 	       		$password_db = $row['user_pass'];
    		} 
		} else {
    		$login_err = "Böyle Bir Kullanıcı Yoktur !";
										echo'
										<div class="alert alert-danger">
										  <strong>Uyarı !</strong> '.$login_err.'
										</div>
										';
										return;
		}

		if ($password == $password_db) { //formdan gelen şifre ile veri tabanından çekilen veri eşitse 
			session_start();
            $_SESSION['username'] = $username;
            $_SESSION['loggedIn'] = True;       //giriş yapıldı mı kontrolü
            header("location: admin_panel.php"); //sayfayı panele yönlendiriyor.
		} else {
			$login_err = "Şifre Yanlış !";
										echo'
										<div class="alert alert-danger">
										  <strong>Uyarı !</strong> '.$login_err.'
										</div>
										';
										return;
		}
	}
	else{
		$login_err = "Giris Yapilamadi , Kullanıcı Adı Ve Şifre Giriniz";
										
										echo '<div class="alert alert-danger">
										  <strong>Uyarı !</strong> '.$login_err.'
										</div>
										';
										return;;
	}
} else {
?>
        </form>
        </div>
    </div>    
</body>
</html>
<?php } ?>