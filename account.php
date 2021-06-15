<?php include('inc.header.php');?>
<?php require_once 'app/User.php';
 $user = new User;
 $profile = $user->profile($_SESSION['uniqueSessionId']);
?>
<main class="px-3" id="homepage">
    <h6>My <?php echo $profile->userType ;?> Account</h6>

    <form style="background:#212529!important;text-align:left;" class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">First Name</label>
    <input type="text" value="<?=$profile->userFirstName?>" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Last Name</label>
    <input type="text" value="<?=$profile->userLastName?>" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label  for="autoSizingInputGroup">Username</label>
    <div class="input-group">
      <div class="input-group-text">@</div>
      <input type="text" value="<?=$profile->userName?>" class="form-control" id="autoSizingInputGroup" placeholder="Username">
    </div>
  </div>

  <div class="col-12">
    <label for="inputAddress" class="form-label">Email </label>
    <input type="email" value="<?=$profile->userEmail?>"class="form-control" id="inputAddress" placeholder="Your email address">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Mobile </label>
    <input type="text" value="<?=$profile->userMobile?>" class="form-control" id="inputAddress2" placeholder="Your Mobile Number">
  </div>
  <div class="col-md-4">
    <label for="inputCity" class="form-label">Country</label>
    <input type="text" value="<?=$profile->userOrigin?>" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">Currency</label>
    <select id="inputState" class="form-select">
      <option selected><?=$profile->userCurrency?></option>
    </select>
  </div>
  <div class="col-md-4">
    <label for="inputZip" class="form-label">Language</label>
    <input type="text" value="<?=$profile->userLanguage?>" class="form-control" id="inputZip">
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-primary">Update</button>
  </div>
</form>



</main>

 <section  id="page_content">

</section>
<?php include('inc.footer.php');?>