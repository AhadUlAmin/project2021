<?php
if(isset($_GET['publisher'])){
$uniqueMaster = $db->prepare("SELECT * FROM uniquemaster where uniqueMaster=:uniqueMaster");
$uniqueMaster->execute(array(':uniqueMaster'=>$_GET['publisher']));
 if($uniqueMaster->rowCount()>0){
    require 'uniqueMaster.php';
}else{
    echo "Publisher : ".$_GET['publisher'];
}

}