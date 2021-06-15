<?php include('inc.header.php');?>
<?php
unset($_SESSION["uniqueSessionId"]);
if(isset($_SESSION['authProviderName'])){

	if(header("Location:"."login/callback.php?logout=".$_SESSION['authProviderName'])){
		unset($_SESSION["authProviderName"]);
	};
}


?>
<main class="px-3" id="homepage">
<h1>Logout </h1>
</main>
  <section  id="page_content">

  </section>
  <?php include('inc.footer.php');?>