<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="admin_panel.php">Six Siege Panel</a>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item <?php  echo ($pageTitle == 'Duyurular') ? 'active' : '';?>">
        <a class="nav-link" href="admin_panel.php">Duyurular <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item <?php  echo ($pageTitle == 'Haritalar') ? 'active' : '';?>">
        <a class="nav-link" href="admin_haritalar.php">Haritalar</a>
      </li>
      <li class="nav-item <?php  echo ($pageTitle == 'Karakterler') ? 'active' : '';?>">
        <a class="nav-link" href="admin_karakterler.php">Karakterler</a>
      </li>
	    <li class="nav-item <?php  echo ($pageTitle == 'Yorumlar') ? 'active' : '';?>">
        <a class="nav-link" href="admin_yorumlar.php">Yorumlar</a>
      </li>
     
    </ul>
    <span class="navbar-text">
      <a href="<?php echo 'http://' . $_SERVER['HTTP_HOST']. '/proje2/'; ?>">Siteye geri don</a> | <a href="logout.php">Cikis Yap (<?php echo $_SESSION['username']; ?>)</a>
    </span>
  </div>
</nav>
