<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include "../db_config.php";
include "../secure.php";
include "../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");

//$_GET['action'] = 'profile';

if (isset($_GET['action'])) {

	$myObj = new stdClass();

	if ($_GET['action']=='getProfile') {
		
		$sql= "SELECT tbl_user.fullname,
		tbl_department.departmentName,tbl_level.levelName 
		FROM tbl_user 
			INNER JOIN tbl_department ON tbl_user.departID=tbl_department.departID
			INNER JOIN tbl_level ON tbl_user.levelID=tbl_level.levelID 
				WHERE tbl_user.userID='".$_GET['userID']."'";
		$result = displayData1($sql);
				
		$myObj->fullname = $result['fullname'];
		$myObj->departmentName = $result['departmentName'];
		$myObj->levelName = $result['levelName'];
		
		$myJSON = json_encode($myObj);
		echo $myJSON;
		
	}

	else if ($_GET['action']=='change_password') {

		$sql= "SELECT * FROM tbl_user WHERE username='".$_GET['email']."'";
		$result = displayData1($sql);	
		
		if ($result['id']!='') {  // record wujud
			
			$newPassword = encrypt($_GET['password']);
			
			$sql1 = "UPDATE tbl_user SET pwd='".$newPassword."' WHERE username='".$_GET['email']."'";
			$res1 = updateData($sql1);
			
			$myObj->statusCode = 400;
			
		}
		
		else { // no record
			$myObj->statusCode = 404;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;


	}

	else if ($_GET['action']=='new_password') {

		$newPassword = encrypt($_GET['password']);

		$sql1 = "UPDATE tbl_user SET pwd='".$newPassword."' WHERE userID='".$_GET['userID']."'";
		$res1 = updateData($sql1);

		if ($res1=='true') {
			$myObj->statusCode = 400;	
		}
		else {
			$myObj->statusCode = 404;
		}

		$myJSON = json_encode($myObj);
		echo $myJSON;
		

	}

	
	else if ($_GET['action']=='load-tbl-sampler') {

		$sql = "SELECT tbl_user.id,tbl_user.fullname,
		tbl_user.username,tbl_user.userID 
		FROM tbl_user
			WHERE tbl_user.username!='".$_GET['username']."' 
				ORDER BY tbl_user.fullname ASC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}	

	else if ($_GET['action']=='load-tbl-state') {

		$sql = "SELECT tbl_state.id,tbl_state.stateID,
		tbl_state.stateName 
		FROM tbl_state
			ORDER BY tbl_state.stateName ASC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}

	else if ($_GET['action']=='load-tbl-category') {

		$sql = "SELECT tbl_category.id,tbl_category.categoryID,
		tbl_category.categoryName 
		FROM tbl_category
			ORDER BY tbl_category.categoryName ASC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}

	else if ($_GET['action']=='load-tbl-marine-station') {

		$sql = "SELECT tbl_marine_station.id,
		tbl_marine_station.stationID,tbl_marine_station.stateID,
		tbl_marine_station.categoryID,tbl_marine_station.locationName,
		tbl_marine_station.latitude,tbl_marine_station.longitude 
		FROM tbl_marine_station
				ORDER BY tbl_marine_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}

	else if ($_GET['action']=='load-tbl-tarball-station') {

		$sql = "SELECT tbl_tarball_station.id,
		tbl_tarball_station.stationID,tbl_tarball_station.stateID,
		tbl_tarball_station.categoryID,tbl_tarball_station.locationName,
		tbl_tarball_station.latitude,tbl_tarball_station.longitude,
		tbl_category.categoryName 
		FROM tbl_tarball_station
			INNER JOIN tbl_category ON tbl_tarball_station.categoryID=tbl_category.categoryID
				ORDER BY tbl_tarball_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}


	else if ($_GET['action']=='load-tbl-air-station') {

		$sql = "SELECT tbl_air_station.id,
		tbl_air_station.stationID,tbl_air_station.stateID,
		tbl_air_station.categoryID,tbl_air_station.locationName,
		tbl_air_station.latitude,tbl_air_station.longitude,
		tbl_category.categoryName 
		FROM tbl_air_station
			INNER JOIN tbl_category ON tbl_air_station.categoryID=tbl_category.categoryID
				ORDER BY tbl_air_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}
	

	else if ($_GET['action']=='load-tbl-river-station') {

		$sql = "SELECT tbl_river_station.id,
		tbl_river_station.stationID,
		tbl_river_station.stateID,
		tbl_river_station.basinName,tbl_river_station.riverName,
		tbl_river_station.latitude,tbl_river_station.longitude
		FROM tbl_river_station
			ORDER BY tbl_river_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	
	}
	
}


?>

 