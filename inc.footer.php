<footer class="mt-auto text-white-50">
    <p>© 2021 TheMornStar , All right reserved .</p>
<div style='font-size:12px;'>
<a href="terms-of-service.php" class="text-white">Terms of Service</a>.
<a href="privacy-policy.php" class="text-white">Privacy Policy</a>.
<a href="cookies-policy.php" class="text-white">Cookies Policy</a>.
<a href="https://twitter.com/mdahadaminul" class="text-white">More</a>
</div>
  </footer>
</div>
<script>
		$(document).ready(function(){
         // callmodal();
        });

    $(".mouse-animation.mouse-hero").click(function(e) {
      e.stopPropagation();
  });
  $(".calltoaction").click(function(e) {
      e.stopPropagation();
  });
  
  
  /*Custom Popup modal */
  function callmodal() {
      $('#blackwall').fadeIn("fast", function() {
          $('#dmodal').css({
              'transform': 'scale(1,1)'
          });
      $('body').css({
              'overflow': 'hidden'
          });
      
      });
  }

  $('.button-close').on('click', function() {
      $('#dmodal').css({
          'transform': 'scale(0,0)'
      });
    $('body').css({
              'overflow': 'auto'
          });
      setTimeout(function() {
          $('#blackwall').fadeOut(50);
      }, 1);
    
  });

  $("#dmodal").click(function(e) {
      e.stopPropagation();
  });


  $('#blackwall').on('click', function() {
      $('#dmodal').css({
          'transform': 'scale(0,0)'
      });
    $('body').css({
              'overflow': 'auto'
          });
      setTimeout(function() {
          $('#blackwall').fadeOut(50);
      }, 1);
  });

  function myFunction() {
      callmodal();
  }
  
  

  

</script>

  </body>
</html>