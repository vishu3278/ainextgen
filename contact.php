<?php include_once('include/header.php'); ?>
<?php 
  $conn = mysqli_connect("localhost","root","","ainextgen") or die('Database connection issue');
  
  // Check connection
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }

  // Perform query
  $fieldcount;
  if ($result = mysqli_query($conn, "SELECT * FROM contact_detail")) {
    /*echo "Returned rows are: " . mysqli_num_rows($result);*/
    $fieldcount = mysqli_num_rows($result);
    // Free result set
    mysqli_free_result($result);
  }

  mysqli_close($con);
?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="<?php echo BASEURL ?>">Home</a></li>
          <!-- <li><a href="blog.html">Contact</a></li> -->
          <li>Contact</li>
        </ol>
        <!-- <h2>Blog Single</h2> -->
      </div>
    </section>

    <section id="contact" class="contact">
      <div class="container" >
        <header class="section-header" data-aos="fade-down">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </header>
        <div class="row">
          <div class="col">
            <?php /*include_once('include/contact-info.php');*/ echo $fieldcount; ?>
            <div class="row gy-4">
              <div class="col-md-6 ">
                <div class="info-box" data-aos="fade-up">
                  <i class="bi bi-geo-alt"></i>
                  <h3>Address</h3>
                  <p>WTT, Sector 16, Noida</p>
                </div>
              </div>
              <div class="col-md-6 ">
                <div class="info-box" data-aos="fade-up" data-aos-delay="150">
                  <i class="bi bi-telephone"></i>
                  <h3>Call Us</h3>
                  <p>+91-9934393700</p>
                </div>
              </div>
              <div class="col-md-6 ">
                <div class="info-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="bi bi-envelope"></i>
                  <h3>Email Us</h3>
                  <p>info@ainextgeninfotech.com</p>
                </div>
              </div>
              <div class="col-md-6 ">
                <div class="info-box" data-aos="fade-up" data-aos-delay="450">
                  <i class="bi bi-clock"></i>
                  <h3>Open Hours</h3>
                  <p>9:00AM - 06:00PM</p>
                </div>
              </div>
            </div>
          </div>
          <div class=" col">
            <?php include_once('include/contact_us.php');?>
          </div>
        </div>
      </div>
    </section>

  </main>

  <!-- ======= Footer ======= -->
  <?php include_once('include/footer.php') ?>
  
