<?php
ini_set("display_errors", true );
include_once 'database.php';

$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$path_parts = pathinfo($actual_link);


	if(isset($_GET['publisher']) && !empty($_GET["publisher"])){
		$stmt = $db->prepare("SELECT * FROM publishers where publisher_name=:publisher_name");
		$stmt->execute(array(':publisher_name'=>$_GET['publisher']));
		$uniqueMaster = $db->prepare("SELECT * FROM uniquemaster where uniqueMaster=:uniqueMaster");
		$uniqueMaster->execute(array(':uniqueMaster'=>$_GET['publisher']));
		$result = $uniqueMaster->fetch();
		if(file_exists('./' . $path_parts['filename'].".php")){
			if(strpos($path_parts['basename'], ".php") == true){
				require $path_parts['filename'].".php";
			}
			else{
				require $path_parts['filename'].".php";
			}
			
		}
		else if($stmt->rowCount()> 0){
			require 'inc-publisher.php';
		}else if($uniqueMaster->rowCount()>0){
            require 'uniqueMaster.php';
		}else{
			echo "Sorry this Page/Publisher is no longer exist !";
		};

	}else if(isset($_GET["user"]) && !empty($_GET["user"])){
		$stmt = $db->prepare("SELECT * FROM users where userName=:userName");
		$stmt->execute(array(':userName'=>$_GET['user']));
		if($stmt->rowCount()> 0){
			require 'inc-user.php';

		}else{

			echo "Sorry this user no longer exist !";
		}
	}
	else if(isset($_GET["collection"]) && !empty($_GET["collection"])){
		$stmt = $db->prepare("SELECT * FROM `collection` where collection_name=:collection_name");
		$stmt->execute(array(':collection_name'=>$_GET['collection']));
		if($stmt->rowCount()> 0){
			require 'inc-collection.php';
		}else{
			echo "Sorry this collection no longer exist !";
		};
	}
	else if(isset($_GET["community"]) && !empty($_GET["community"])){
		$stmt = $db->prepare("SELECT * FROM `communities` where community_name=:community_name");
		$stmt->execute(array(':community_name'=>trim($_GET['community'])));
		if($stmt->rowCount()> 0){
			require 'inc-community.php';
		}else{
			echo "Sorry this Comunity no longer exist !";
		};
	}

	else{
		 require 'home.php';
	}

