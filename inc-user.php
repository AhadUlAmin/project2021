<?php include('./inc.header.php');?>
<script>
function writeArticle(){

var title = $("#title").val();
var description = $("#description").val();

if(title==""){
  $("#status").html("Your title is empty.")
  $("#title").focus();
}else if(description == ""){
    $("status").html("Your description is empty.");
    $("#description").focus();
}else{
    var dataString = 'title='+ title + '&description='+description;

    $.ajax({
        type : "POST",
        url  : "app/write.php",
        data : dataString,
        cache: false,
        beforeSend:function(){

        },
        success : function(response){
            $("#status").html(response);
        }
    });
}
}

</script>
<div  id="homepage">
    <h4>Test by Posting Article</h4>
    <?php
if(isset($_GET['user'])){
// echo "User : ".$_GET['user']."<br>";

# using the shortcut ->query() method here since there are no variable values in the select statement
$STH = $db->query('SELECT * from uniquemaster'); 
# setting the fetch mode PDO::FETCH_ASSOC – which also is the default fetch mode if not set
$STH->setFetchMode(PDO::FETCH_ASSOC); 
# showing the results
while($row = $STH->fetch()) { 
 //echo "<a href='".$row['uniqueMasterCreatedBy'] ."'>". "Muhammad Aminul Ahad"."</a> Posted  ";
 echo $row['uniqueMasterPostedTo'] . "\n";
 
        $stmt = $db->prepare('SELECT * FROM articlei WHERE articleUniqueId = :articleUniqueId');
        $data = array(':articleUniqueId' => $row['uniqueMaster']);
        $stmt->execute($data);
        while($rowa = $stmt->fetch()) {
            echo "<b>".$rowa['articleTitle'] . "\n". "</b>";
        
        }
        echo "( ". $row['uniqueMasterCreatedAt'] . " )<br>";
} 


}?>


    <form method="POST" action="app/write.php">
    <div id="status"></div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Article Title</label>
            <input type="text" class="form-control" name="title" placeholder="title here">
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Article Details</label>
            <textarea class="form-control" name="description" placeholder="description here" rows="3"></textarea>
        </div>
        <br>
        <button type="submit" class="btn btn-primary mb-2">Confirm to Submit</button>
    </form>

</div>

<section  id="page_content">

</section>


<?php include('./inc.footer.php');?>