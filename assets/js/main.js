$(document).ready(function () {
var navo, contento, fetchAndInserto;
var root = "http://localhost/msv1/";
fetchAndInserto = function (href) {
  var str = href;
  var str1 = str.slice(root.length);
    
/* 	alert(str1);
    var fruits = [];
    var myStr = str1;
    var strArray = myStr.split("/");
    for(var i = 0; i < strArray.length; i++){
          fruits.push(strArray[i]);
            
    }
	str1 = fruits[0]; */
	
  var strlenth = str1.length;
  var str11 = str1.includes("@");
  var str12 = str1.includes("+");
  var str13 = str1.includes("~");
  if (str11 === true && str12 === false && str13 === false) {
    var dataString = 'user=' + str1.split('@').pop();
    $.ajax({
      url: root + 'inc-user.php',
      method: 'GET',
      data: dataString,
      beforeSend: function(){
     },
      cache: false,
      success: function (data) {
        var homepage = $("#homepage", data);
        $('#page_content').html(homepage);
        $('#homepage').css("display", "none");
        $('#page_content').css("display", "block");
      }
    });


  } else if (str11 === false && str12 === true && str13 === false) {
    var dataString = 'community=' + str1.split('+').pop();
    $.ajax({
      url: root + 'inc-community.php',
      method: 'GET',
      data: dataString,
      cache: false,
      success: function (data) {
        $('#page_content').html(data);
        $('#homepage').css("display", "none");
        $('#page_content').css("display", "block");
      }
    });
  } else if (str11 === false && str12 === false && str13 === true) {
    var dataString = 'collection=' + str1.split('~').pop();
    $.ajax({
      url: root +'inc-collection.php',
      method: 'GET',
      data: dataString,
      cache: false,
      success: function (data) {
        $('#page_content').html(data);
        $('#homepage').css("display", "none");
        $('#page_content').css("display", "block");
      }
    });
  } 
  
    else if(str11 === false && str12 === false && str13 === false){
    var dataString = 'publisher=' + str1.split('/').pop();
   if(str1.split('/').pop().includes(".php")=== false && str1.split('/').pop()!= "index.php" && str1.split('/').pop()!=""){
	   
    $.ajax({
      url: root + 'inc-publisher.php',
      method: 'GET',
      data: dataString,
      cache: false,
      success: function (data) {
        $('#page_content').css("display", "block");
        $('#page_content').html(data);
        $('#homepage').css("display", "none");
        
      }
    });
   }else if(str1.split('/').pop().includes(".php")=== true && str1.split('/').pop()!= "index.php" && str1.split('/').pop()!=""){
	   $.ajax({
        url:'./'+str1.split('/').pop(),
		method:'GET',
		cache:false,
		success:function(data){
          var homepage = $("#homepage", data);
          $('#page_content').html(homepage);
          $('#homepage').css("display","none");
          $('#page_content').css("display","block");
			
		}
		});
   }
   
   else if(str1.split('/').pop()==="" || str1.split('/').pop().includes("index.php") === true){
	    $('#page_content').css("display", "none");
        $('#homepage').css("display", "block");
	   
   }
   
   
   
   

  }
};




navo = $('nav#secondary');
contento = $('#contentid');

navo.on('click', 'a', function (e) {
  e.preventDefault();
  var href = $(this).attr('href');
  var title = $(this).attr('title');
	  history.pushState(null, title,href);
	  document.title = title;
  fetchAndInserto(href);

});

	  $(window).on('popstate',function(e){
		  e.preventDefault();
		  $('#page_content').css("display","block");
		  $('#homepage').css("display","none");
		  
          fetchAndInserto(window.location.protocol + "//" + window.location.host + window.location.pathname + window.location.search);

      });
      


});
