<?php 
  require_once '../database.php';
  function generateUniqueId($strength = 16) {
    $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $input_length = strlen($permitted_chars);
    $random_string = '';
    for($i = 0; $i < $strength; $i++) {
        $random_character = $permitted_chars[mt_rand(0, $input_length - 1)];
        $random_string .= $random_character;
    }
 
    return $random_string;
}
isset($_GET['varifySignUpEntry']){
	
}

isset($_GET['resetPassword']){
	
}
// To Varify SignUp
//https://themornstar.com/app/athenticate.php?varifySignUpEntry=VarifyCodeId
// To Reset Password 
//https://themornstar.com/login.php?resetPassword=resetPasswordCodeID

  if(isset($_POST['email']) && isset($_POST['password'])){
	  
	  $generateUniqueId = generateUniqueId(11);
	  $userJoined = date("Y-m-d H:i:s");
	  $st = $db->prepare("SELECT * FROM `users` where userEmail=:userEmail");
	  $st->execute(array(':userEmail' => $_POST['email'],));

			
	  	$stmt = $db->prepare("SELECT * FROM `users` where userEmail=:userEmail AND userPassword=:userPassword");

		$stmt->execute(array(
		':userEmail' => $_POST['email'],
		':userPassword' => md5($_POST['password']),
		));
		$result = $stmt->fetch();
        if($stmt->rowCount()> 0){
			echo "You are already Logged , make session .";
			echo $_SESSION["uniqueSessionId"] = $result['userAltName'];
			echo "<br> Login success !";

		}else if($st->rowCount()== 0){
				   $dataUsers = array(
                    ':userAltName' => $generateUniqueId, 
                    ':userEmail' => $_POST['email'],
                    ':userPassword' => md5($_POST['password']), 
                    ':userJoined' => $userJoined,
                           );
			    $stmt = $db->prepare(" INSERT INTO `users`( `userAltName`, `userEmail`, `userPassword`,`userJoined`) 
                VALUES (:userAltName, :userEmail , :userPassword , :userJoined )");
                $stmt->execute($dataUsers);
				$_SESSION["uniqueSessionId"] = $generateUniqueId;
				echo $_SESSION["uniqueSessionId"];
				echo "<br> SignUP success !";
		}else{
			echo "I think you forgot something !";
		}

  } 