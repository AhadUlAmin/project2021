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