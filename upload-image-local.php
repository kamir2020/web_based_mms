<?php
date_default_timezone_set("Asia/Kuala_Lumpur");

if (isset($_GET['image'])) {

  if ($_GET['image']=='marine_tarball') {
	
        if (isset($_FILES['image'])) {
	
	  $dir = explode("_",$_FILES['image']['name']);
	  $dir_folder = $dir[0];
	
	  $uploadDir = "images/marine/manual_tarball/".$dir_folder."/";
	
	  if (!is_dir($uploadDir)) {
	    mkdir($uploadDir, 0755, true);
	  }

	  $filename = basename($_FILES['image']['name']);
	  $target = $uploadDir . $filename;
	
	  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		echo"Uploaded";
	  }
	  else {
		echo"Failed";
	  }	
  	}
  	else {
		echo"No file received..";
  	}
  }

  else if ($_GET['image']=='marine_insitu') {

        if (isset($_FILES['image'])) {
	
	  $dir = explode("_",$_FILES['image']['name']);
	  $dir_folder = $dir[0];
	
	  $uploadDir = "images/marine/manual_in_situ/".$dir_folder."/";
	
	  if (!is_dir($uploadDir)) {
	    mkdir($uploadDir, 0755, true);
	  }

	  $filename = basename($_FILES['image']['name']);
	  $target = $uploadDir . $filename;
	
	  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		echo"Uploaded";
	  }
	  else {
		echo"Failed";
	  }	
  	}
  	else {
		echo"No file received..";
  	}
  }

  else if ($_GET['image']=='marine_study_sample') {

        if (isset($_FILES['image'])) {
	
	  $dir = explode("_",$_FILES['image']['name']);
	  $dir_folder = $dir[0];
	
	  $uploadDir = "images/marine/manual_study_sampling/".$dir_folder."/";
	
	  if (!is_dir($uploadDir)) {
	    mkdir($uploadDir, 0755, true);
	  }

	  $filename = basename($_FILES['image']['name']);
	  $target = $uploadDir . $filename;
	
	  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		echo"Uploaded";
	  }
	  else {
		echo"Failed";
	  }	
  	}
  	else {
		echo"No file received..";
  	}
  }

  else if ($_GET['image']=='river_manual_sample') {

        if (isset($_FILES['image'])) {
	
	  $dir = explode("_",$_FILES['image']['name']);
	  $dir_folder = $dir[0];
	
	  $uploadDir = "images/river/manual_sample/".$dir_folder."/";
	
	  if (!is_dir($uploadDir)) {
	    mkdir($uploadDir, 0755, true);
	  }

	  $filename = basename($_FILES['image']['name']);
	  $target = $uploadDir . $filename;
	
	  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		echo"Uploaded";
	  }
	  else {
		echo"Failed";
	  }	
  	}
  	else {
		echo"No file received..";
  	}
  }	

}
?>