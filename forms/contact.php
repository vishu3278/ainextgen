<?php

  include_once('../connection.php');
  
  if($_SERVER['REQUEST_METHOD'] == 'POST') {
	
		$name    = $_POST['name'];
		$phone    = $_POST['phone'];	
		$email    = $_POST['email'];
		$message    = $_POST['message'];

		$sql="INSERT INTO contact_us (name,phone,email,message) VALUES ('$name', '$phone','$email','$message')";
	 
		if (mysqli_query($con, $sql) == TRUE)	{
			$data = array('status' =>0 , 'msg' => 'Your request has been sent successfully.');
		}	else {
			$data = array('status' =>1, 'msg' => 'Something went wrong.');
		}
		echo json_encode($data);
		
	}
?>
