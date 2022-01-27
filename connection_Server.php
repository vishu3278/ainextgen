<?php

	session_start();
	error_reporting(0);
	date_default_timezone_set("Asia/Kolkata");



	//$con=mysqli_connect("localhost","root","","realtime_p5_core_php7_AINextGen") or die('Database connection issue'); // Server DB connection


	$con = mysqli_connect("localhost","kundan","hello@9582","ainextgen") or die('Database connection issue');// Local DB connection


	//echo "Sorry, we are under maintenance !!!!!";
	//die();


	/***************When there is Case of HTTPS and all************/



	//$site_url = "http://".$_SERVER['HTTP_HOST']."/"; //when server is on root DND


	$site_url = "https://".$_SERVER['HTTP_HOST']."/kundan/"; //when Sub folder is Home directory DND


	//$site_url = "http://localhost/kundan/Kundan_Realtime_Projects/P10_AI_NextGen_Infotech/"; //when Sub folder is Home directory DND  NOTE- Notice you don't need to use HTTPS use only http 



	/*--------------------------Server paths------------------------*/
	define('ROOT', $_SERVER['DOCUMENT_ROOT']. '/') ;  // document path while upload on server
	define('BASEURL', $site_url); // base url for front
	define('BASE_ADMIN_URL_NEW', BASEURL.'newadmin/');  // base url for admin New
	/*--------------------------Server paths------------------------*/


   
   
?>

