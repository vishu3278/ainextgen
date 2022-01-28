

  <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">

      <form id="contactForm"  >
        <div class="row gy-4">
			  
  			  <div class="form-group col-md-12">
  			   <div class="error-message text-center"></div>
  			  </div>

          <div class="col-md-12">
            <input type="text" name="name" id="name" class="form-control" placeholder="Your Name" required>
          </div>

          <div class="col-md-12 ">
            <input type="text" id="phone" class="form-control" name="phone" placeholder="Your Phone" required>
          </div>

          <div class="col-md-12">
            <input type="text" id="email" class="form-control" name="email" placeholder="Your Email" required>
          </div>

          <div class="col-md-12">
            <select name="course" id="course" class="form-control">
              <option selected>Choose course</option>
              <option value="testing">Software Testing</option>
              <option value="uidev">UI Development</option>
              <option value="uidesign">UI Design</option>
            </select>
          </div>

          <div class="col-md-12">
            <textarea class="form-control" id="message" name="message" rows="2" placeholder="Message" ></textarea>
          </div>

          <div class="col-md-12 text-center">
            <div class="loading">Loading</div>
           <!--<div class="error-message"></div> -->
            <div class="sent-message">Your message has been sent. Thank you!</div>

            <button id="submitBtn" type="submit">Send Message</button>
          </div>

        </div>
      </form>
      
    </section>

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