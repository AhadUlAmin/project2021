<?php 
  require_once 'database.php';
  require_once 'mail.php';

if(isset($_GET['varifySignUpEntry'])){
	
		  $newVarifySignUpEntry = generateUniqueId(64);
		  $stmtc = $db->prepare("SELECT * FROM `users`  Where userActivation=:userActivation");
          $stmtc->execute(array(':userActivation' => $_GET['varifySignUpEntry'])); 
		  $result = $stmtc->fetch();
			
	    if($stmtc->rowCount()> 0){
			$stmt = $db->prepare("UPDATE `users` SET `userType`=:userType ,`userActivation`=:userActivation  Where userAltName=:userAltName");
	         $stmt->execute(array(':userType' => "Genarel",':userActivation' => $newVarifySignUpEntry,':userAltName' => $result['userAltName']));
			         echo "Account varified successfully , Welcome to TheMornStar Universe ! "; 
					 $_SESSION["uniqueSessionId"] = $result['userAltName'];
					 header('Refresh:3; URL=index.php');
		}
		else{ 
		
			echo "Varification Linked Expired , Try to Reset Password!"; 
			//header('Refresh:3; URL=login.php');
		
		}
	
}




			if(isset($_GET['resetPassword'])){
				  $stmtc = $db->prepare("SELECT * FROM `users`  Where userActivation=:userActivation");
				  $stmtc->execute(array(':userActivation' => $_GET['resetPassword'])); 
				  $result = $stmtc->fetch();
			
				if($stmtc->rowCount()> 0){
					$stmt = $db->prepare("UPDATE `users` SET `userPassword`=:userPassword   Where userAltName=:userAltName");
					 $stmt->execute(array(':userPassword' => md5($_POST['password']),':userAltName' => $result['userAltName']));
							 echo "Password Reset successfully  ! "; 
							 $_SESSION["uniqueSessionId"] = $result['userAltName'];
							 header('Refresh:3; URL=index.php');
				}
				else{ 
				
					echo "NOT complete , Try to Reset Password!"; 
					header('Refresh:3; URL=login.php');
				
				}
		
				
				
			}

  if(isset($_POST['email']) && isset($_POST['password'])){
	  
	  $generateUniqueId = generateUniqueId(11);
	  $varifySignUpEntry = generateUniqueId(64);
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
			/*
			 Login - Create Session if user  found using email and password
			*/
			
			 $_SESSION["uniqueSessionId"] = $result['userAltName'];
			echo "You are  Logged in , Welcome Back!";
			header('Refresh:3; URL=https://themornstar.com');

		}else if($st->rowCount()== 0){
			/*
			 Make Signup if user not found using email , later email and  pass will be added 
			 and makeing a session
			
			*/
				   $dataUsers = array(
                    ':userAltName' => $generateUniqueId, 
                    ':userEmail' => $_POST['email'],
                    ':userPassword' => md5($_POST['password']), 
                    ':userJoined' => $userJoined,
					':userActivation' => $varifySignUpEntry,
					
                           );
			    $stmt = $db->prepare(" INSERT INTO `users`( `userAltName`, `userEmail`, `userPassword`,`userJoined`,`userActivation`) 
                VALUES (:userAltName, :userEmail , :userPassword , :userJoined, :userActivation )");
                $stmt->execute($dataUsers);
				$_SESSION["uniqueSessionId"] = $generateUniqueId;
			echo "You've signed Up , Welcome Our Universe!<br> Check your mail inbox to activate your accout !"; 
			header('Refresh:3; URL=login.php');
				
				$mailSubject= "Varify Account -TheMornStar ";
				$mailBody = "<a href='https://themornstar.com/athenticate.php?varifySignUpEntry=".$varifySignUpEntry."'>Varify your Email Account !</a>"
				
				;
				$mailAltBody = "Mail ALT Body";
				$to = $_POST['email'];
				$reciverName = "Hello , Buddy !";

				sendingViaPhpmailer($mail,$mailSubject,$mailBody ,$mailAltBody,$to ,$reciverName);

		}else if(isset($_POST['forgotPassword']) && $st->rowCount()> 0){
		  $fp = $db->prepare("SELECT * FROM `users`  Where userEmail=:userEmail");
          $fp->execute(array(':userEmail' => $_POST['email'])); 
		  $fpresult = $fp->fetch();
		 $resetPasswordEntry = $fpresult['userActivation'] ;
			
			// echo $_POST['forgotPassword'];
				$mailSubject= "Reset Password -TheMornStar ";
			   $mailBody = "<a href='https://themornstar.com/login.php?resetPassword=".$resetPasswordEntry."'> Reset your Password !</a>";
				$mailAltBody = "Mail ALT Body"; 
				$to = $_POST['email'];
				$reciverName = "Hello , Buddy !";

				sendingViaPhpmailer($mail,$mailSubject,$mailBody ,$mailAltBody,$to ,$reciverName);
				
				echo "Check your mail inbox , a password reset link has been sent.";
		}
		else{
			
			echo "Sorry , Information Worng !";

			
			
		}

 } 
 else{ 
	  echo "Enter your Email and password Currectly";
  }