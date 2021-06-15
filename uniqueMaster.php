<?php
if(isset($_GET['publisher'])){		
 $stmtArticle = $db->prepare("SELECT * FROM articlei WHERE articleUniqueId = :articleUniqueId");
 $stmtArticle->execute(array(':articleUniqueId'=>$_GET['publisher']));
 $articleResult = $stmtArticle->fetch();

 echo $articleResult['articleTitle']."<br>";
 echo $articleResult['articleDescription'];
}