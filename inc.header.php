<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title> TheMornStar (v-1.0.0)
</title>

    <link rel="canonical" href="<?= BASE_PATH;?>">

    

    <!-- Bootstrap core CSS -->
<!--link href="<?= BASE_PATH;?>assets/css/bootstrap.min.css" rel="stylesheet"-->

    <!-- Favicons -->

<link rel="icon" href="<?= BASE_PATH;?>assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">



    <!-- Custom styles for this template -->
    <link href="<?= BASE_PATH;?>assets/css/cover.css" rel="stylesheet">
<script  src="<?= BASE_PATH;?>assets/js/jquery-3.4.1.min.js"></script>
    <script  src="<?= BASE_PATH;?>assets/js/main.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    
  </head>

  
  <body class="d-flex h-100 text-center text-white bg-dark">
  <noscript>You need to enable JavaScript to run this app.</noscript>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h4 onClick="window.location.href='<?php echo BASE_PATH ;?>'" class="float-md-start mb-0">
      <?= APP_NAME;?></h4>
      <nav id="secondary" class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link"  href="<?=BASE_PATH?>about-us.php" title="About Us">About</a>
        <a class="nav-link" href="<?=BASE_PATH?>services.php" title="Our Services">Services</a>
        <a class="nav-link" href="<?=BASE_PATH?>team.php" title="Our Team">Team</a>
        <a class="nav-link" href="<?=BASE_PATH?>career.php" title="Apply to Join">Career</a>
       <a class="nav-link" href="<?=BASE_PATH?>supports.php" title="Our Support">Support</a>
	   <a  class="nav-link" href="<?=BASE_PATH?>contact-us.php" title="Our Support">Contact</a>
	   <?php if(isLoggedIn()){?>
		   <a onclick='window.location.href="logout.php"'class='nav-link' href="<?= BASE_PATH?>logout.php" title='Logging out'>Logout</a>
	   <?php }else{
		   echo "<a  class='nav-link' href='".BASE_PATH."login.php' title='Login'>Login</a>";
	   }?>  


      </nav>
    </div>
  </header>