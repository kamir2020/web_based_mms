<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include "../../db_config.php";
include "../../secure.php";
include "../../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");


if (isset($_GET['action'])) {

	$myObj = new stdClass();

	if ($_GET['action']=='air-state') {
		
		$sql = "SELECT tbl_state.stateID,tbl_state.stateName 
		FROM tbl_state 
			ORDER BY tbl_state.stateName ASC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}

	else if ($_GET['action']=='air-station') {
		
		$sql = "SELECT tbl_air_station.stationID,tbl_air_station.stateID,
		tbl_air_station.locationName,
		tbl_air_station.latitude,tbl_air_station.longitude,
		tbl_state.stateName,
		tbl_category.categoryName 
		FROM tbl_air_station
			INNER JOIN tbl_state ON tbl_air_station.stateID=tbl_state.stateID
			INNER JOIN tbl_category ON tbl_air_station.categoryID=tbl_category.categoryID
				WHERE tbl_air_station.stateID='".$_GET['stateID']."'   
					ORDER BY tbl_air_station.id DESC";
		$stmt = displayData2($sql);
		
		if (is_array($stmt)) {
			$data = array();
		
			foreach ($stmt as $row) {
				$data[] = $row;
			}
			
			echo json_encode(['status'=>'success', 'data'=>$data]);
		}
		else {
			echo json_encode(['status'=>'error', 'message'=>'no records','data'=>[]]);
		}
	}

	else if ($_GET['action']=='air-collection') {
		
		$sql = "SELECT tbl_air_install.id,tbl_air_install.refID,tbl_air_install.stationID,
		tbl_air_install.temp,tbl_air_install.timestamp,
		tbl_air_station.locationName
		FROM tbl_air_install
			INNER JOIN tbl_air_station ON tbl_air_install.stationID=tbl_air_station.stationID   
			WHERE tbl_air_install.statusID='L1'
				ORDER BY tbl_air_install.id DESC";
		$stmt = displayData2($sql);
		
		if (is_array($stmt)) {
			$data = array();
		
			foreach ($stmt as $row) {
				$data[] = $row;
			}
			
			echo json_encode(['status'=>'success', 'data'=>$data]);
		}
		else {
			echo json_encode(['status'=>'error', 'message'=>'no records','data'=>[]]);
		}
	}

	else if ($_GET['action']=='display-log-air') {
		
		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_air_install.id,tbl_air_install.stationID,
		tbl_air_install.statusID,tbl_air_install.timestamp,
		tbl_air_station.locationName	 
		FROM tbl_air_install 
			INNER JOIN tbl_air_station ON tbl_air_install.stationID=tbl_air_station.stationID
				WHERE tbl_air_station.locationName LIKE :keyword
					ORDER BY tbl_air_install.timestamp DESC";
		$stmt = $conn->prepare($sql);
		$stmt->execute([':keyword' => "%$keyword%"]);

		$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

		if (empty($data)) {
    			echo json_encode([
        		'status' => 'error',
        		'message' => 'No data found for this keyword.'
    		]);
    		exit;
		}

		echo json_encode([
    			'status' => 'success',
    			'data' => $data
		]);
	}
	
	/*
	if ($_GET['action']=='air-station') {
		
		$sql = "SELECT tbl_air_station.stationID,tbl_air_station.stateID,
		tbl_air_station.locationName,
		tbl_air_station.latitude,tbl_air_station.longitude,
		tbl_state.stateName,
		tbl_category.categoryName 
		FROM tbl_air_station
			INNER JOIN tbl_state ON tbl_air_station.stateID=tbl_state.stateID
			INNER JOIN tbl_category ON tbl_air_station.categoryID=tbl_category.categoryID  
				ORDER BY tbl_air_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}*/
				
}
?>

 