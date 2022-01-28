<?php 
  $conn = mysqli_connect("localhost","root","","ainextgen") or die('Database connection issue');
  
  // Check connection
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }

  // Perform query
  if ($result = mysqli_query($conn, "SELECT * FROM contact_detail")) {
    echo "Returned rows are: " . mysqli_num_rows($result);
    // Free result set
    mysqli_free_result($result);
  }

  mysqli_close($con);
?>

<form id="contactForm" data-aos="fade-up" data-aos-delay="400" >
  <div class="row gy-4">

    <div class="form-group col-md-12">
      <div class="error-message text-center"></div>
    </div>

    <div class="col-md-6">
      <input type="text" name="name" id="name" class="form-control" placeholder="Your Name" required>
    </div>

    <div class="col-md-6 ">
      <input type="text" id="phone" class="form-control" name="phone" placeholder="Your Phone" required>
    </div>

    <div class="col-md-12">
      <input type="text" id="email" class="form-control" name="email" placeholder="Your Email" required>
    </div>

    <div class="col-md-12">
      <textarea class="form-control" id="message" name="message" rows="6" placeholder="Message" required></textarea>
    </div>

    <div class="col-md-12 text-center">
      <div class="loading">Loading</div>
     <!--<div class="error-message"></div> -->
      <div class="sent-message">Your message has been sent. Thank you!</div>

      <button id="submitBtn" type="submit">Send Message</button>
    </div>

  </div>
</form>

<script type="text/javascript">
  $(document).ready(function () {
    $('#contactForm').validate({
       submitHandler: function(form) {

         var name = $('#name').val();
      var phone = $('#phone').val();
      var email = $('#email').val();
      var message = $('#message').val();
      var parms_data={"name":name,"phone":phone,"email":email,"message":message};
       $.ajax({
      url: "forms/contact.php",
      data: parms_data,
      type: 'POST',
      success: function (result) {
        var data = JSON.parse(result);
        if(data.status == 0)
        {
          $('.error-message').html('<div class="alert alert-success">'+data.msg+'</div>')
        }
        else
        {
          $('.error-message').html('<div class="alert alert-error">'+data.msg+'</div>')
        }

       }
        });
          
        }
     
    })
  });
</script>