<?php
include '../database.php';
if (isset($_POST['title']) && $_POST['description']){
    $title = $_POST['title'];
    $description = $_POST['description'];
    $generateUniqueId = generateUniqueId(11);
    
     $dateTime = date("Y-m-d H:i:s");

     $data = array(
     ':uniqueMaster' => $generateUniqueId, 
     ':uniqueMasterCreatedAt' => $dateTime,
     ':uniqueMasterCreatedBy' => $_SESSION['uniqueSessionId'],
     ':uniqueMasterType' => "Article",
     ':uniqueMasterAudience' => "Public",
     );
     $statement = $db->prepare("INSERT INTO 
     `uniquemaster`(`uniqueMaster`, `uniqueMasterCreatedAt`,`uniqueMasterCreatedBy`,`uniqueMasterType`,`uniqueMasterAudience`)  
     VALUES (:uniqueMaster,:uniqueMasterCreatedAt,:uniqueMasterCreatedBy,:uniqueMasterType,:uniqueMasterAudience)");
 
 $statement->execute($data);
 
     $dataa = array(
         ':articleTitle' => $title, 
         ':articleDescription' => $description,
         ':articleUniqueId' => $generateUniqueId,
         );
 
 $statementa = $db->prepare("INSERT INTO `articlei`( `articleTitle`, `articleDescription`, `articleUniqueId`) 
 VALUES (:articleTitle,:articleDescription,:articleUniqueId)");
 
 $statementa->execute($dataa);

 header('Location: ../index.php');
 
}else{
    echo "Something is missing";
}
    
   
