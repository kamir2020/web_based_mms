<?php

	$db_host = "localhost";
	$db_name = "db_mms";
	$db_user = "root";
	$db_pass = "PStw_mysql_root";
	
	try{
		
		$conn = new PDO("mysql:host={$db_host};dbname={$db_name}",$db_user,$db_pass);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		//echo"Connected";
		
	}
	catch(PDOException $e){
		echo $e->getMessage();
		
	}


?>