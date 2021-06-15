<?php include('inc.header.php');?>
<!--nav id="secondary" style="text-decoration:none;">
        <ul>
        <li><a href="<?=BASE_PATH?>@Aminul" title="User">@{User }</a></li>
            <li><a href="<?=BASE_PATH?>+Medium"  title="Group">+{/Community}</a></li>
            <li><a href="<?=BASE_PATH?>~Medium"  title="Collection">~{/Series }</a></li>
            <li><a href="<?=BASE_PATH?>Medium" title="Page or Article">{Publisher}</a></li>
        </ul>
</nav-->

<main class="px-3" id="homepage">
<?php require_once 'app/User.php';

?>
<?php 
require_once 'app/uniqueMaster.php';
$uniqueMaster = new uniqueMaster;
$r = $uniqueMaster->uniqueMaster();

foreach ($r as $result) {
    $articleInstance = new uniqueMaster;
    $article = $articleInstance->article($result->uniqueMaster);
    $user = new User;
    $profile = $user->profile($result->uniqueMasterCreatedBy);
?>
<div style="padding: 2px 20px;
    border: 1px solid #888;
    width: 100%;
    color: white;
    margin: 9px 11px;">
<!-- Default dropend button -->

    <p><a href="@<?=$profile->userName ?>"><?=$profile->userFirstName?> <?=$profile->userLastName?></a> /
     
    <nav id="secondary"> <a title="POST" href="<?=BASE_PATH?><?=$result->uniqueMaster?>">
     <?= $article->articleTitle ?></a>
    </nav>
    <div class="btn-group  dropend" style="float:right;position:relative;top: -42px;
    right: -9px;">
  <button type="button" class="btn  btn-dark btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
  </button>
  <ul class="dropdown-menu">
    <!-- Dropdown menu links -->
    <li><button class="dropdown-item" type="button">edit</button></li>
    <li><button class="dropdown-item" type="button">delete</button></li>
    <li><button class="dropdown-item" type="button">something more...</button></li>
  </ul>
</div>
    <!--b>Audience : Public</b> ,
    <b>Category : Blogging</b> ,
    <b>Time:<?= $result->uniqueMasterCreatedAt ?></b><br>
    <tags>Tags: Blogging , Article , Post , Guest Post </tags-->
   
    </div>

<?php
}


if(isset($_SESSION['uniqueSessionId'])){
	echo "<h1>".$_SESSION['uniqueSessionId']."</h1>";

}

?>

    Read the universe,write of you,publish to public.
</main>

  <section  id="page_content">

  </section>
  <?php include('inc.footer.php');?>
