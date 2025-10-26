<?php
date_default_timezone_set("Asia/Kuala_Lumpur");

if (isset($_GET['action'])) {
	
	$timestamp = date('Y-m-d H:i:s');

	if ($_GET['action']=='marine_tarball') {

		$target_dir = "images/marine/manual_tarball/".$_GET['id']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {
			
			
			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			//$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
			$newFileName = $_GET['id']."_".$_GET['timestamp']."_".$_GET['description'].".".$fileExtension;
			
			//$target_file = $target_dir . basename($_FILES["image"]["name"]);
    			//move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);		
	
			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}

		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}

	}

	else if ($_GET['action']=='marine_in_situ') {

		$target_dir = "images/marine/manual_in_situ/".$_GET['id']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			//$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
			$newFileName = $_GET['id']."_".$_GET['timestamp']."_".$_GET['description'].".".$fileExtension;
    			
			// $target_file = $target_dir . basename($_FILES["image"]["name"]);
    			// (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)

			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}

	else if ($_GET['action']=='marine_study_sampling') {

		$target_dir = "images/marine/manual_study_sampling/".$_GET['id']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
    			
			// $target_file = $target_dir . basename($_FILES["image"]["name"]);
    			// (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)

			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}

	else if ($_GET['action']=='river_sampling') {

		$target_dir = "images/river/manual_sample/".$_GET['id']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
    			
			// $target_file = $target_dir . basename($_FILES["image"]["name"]);
    			// (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)

			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}

	
	else if ($_GET['action']=='river_is_sampling') {

		$target_dir = "images/river/is_sample/".$_GET['id']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
    			
			// $target_file = $target_dir . basename($_FILES["image"]["name"]);
    			// (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)

			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}

	
	else if ($_GET['action']=='air_install') {

		$target_dir = "images/air/manual_install/".$_GET['stationID']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			//$newFileName = $_GET['id']."_".date("Ymd_His")."_".$_GET['description'].".".$fileExtension;
			//$target_file = $target_dir . basename($_FILES["image"]["name"]);

			$newFileName = $_GET['refID']."_".$_GET['stationID']."_".$_GET['timestamp']."_".$_GET['description'].".".$fileExtension;
    			    			
			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}

	else if ($_GET['action']=='air_collection') {

		$target_dir = "images/air/manual_collection/".$_GET['stationID']."/";
		if (!file_exists($target_dir)) {
    			mkdir($target_dir, 0755, true);
		}

		if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES["image"])) {

			$fileTmpPath = $_FILES["image"]["tmp_name"];
			$originalName = $_FILES["image"]["name"];
			$fileExtension = pathinfo($originalName,PATHINFO_EXTENSION); 

			$newFileName = $_GET['id']."_".$_GET['stationID']."_".$_GET['timestamp']."_".$_GET['description'].".".$fileExtension;

    			//$target_file = $target_dir . basename($_FILES["image"]["name"]);
    			
			if (move_uploaded_file($fileTmpPath,$target_dir.$newFileName)) {
        			echo "File uploaded successfully.";
    			} else {
        			http_response_code(500);
        			echo "Error uploading file.";
    			}
		} else {
    			http_response_code(400);
   	 		echo "No file uploaded.";
		}
	
	}
}
?>