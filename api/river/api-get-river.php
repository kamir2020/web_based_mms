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

	if ($_GET['action']=='river-email') {
		
		$sql = "SELECT tbl_email_list.id,tbl_email_list.typeID,
		tbl_email_list.emailAddress 
		FROM tbl_email_list
			WHERE tbl_email_list.typeID='T2'
			ORDER BY tbl_email_list.emailAddress ASC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row['emailAddress'];
		}
		
		echo json_encode($data);
	}

	else if ($_GET['action']=='river-state') {
		
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
	
	else if ($_GET['action']=='river-station') {
		
		$sql = "SELECT tbl_river_station.stationID,tbl_river_station.stateID,
		tbl_river_station.basinName,tbl_river_station.riverName,
		tbl_river_station.latitude,tbl_river_station.longitude,
		tbl_state.stateName	
		FROM tbl_river_station
			INNER JOIN tbl_state ON tbl_river_station.stateID=tbl_state.stateID
				WHERE tbl_river_station.stateID='".$_GET['stateID']."'   
					ORDER BY tbl_river_station.id DESC";
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

	else if ($_GET['action']=='marine-sampling') {
		
		$sql = "SELECT * FROM tbl_marine_samplling_mm1 ORDER BY id DESC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}
	
	
	else if ($_GET['action']=='marine-tarball-station') {
		
		$sql = "SELECT tbl_tarball_station.stationID,tbl_tarball_station.stateID,
		tbl_tarball_station.locationName,
		tbl_tarball_station.latitude,tbl_tarball_station.longitude,
		tbl_state.stateName,
		tbl_category.categoryName 
		FROM tbl_tarball_station
			INNER JOIN tbl_state ON tbl_tarball_station.stateID=tbl_state.stateID
			INNER JOIN tbl_category ON tbl_tarball_station.categoryID=tbl_category.categoryID  
				ORDER BY tbl_tarball_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}

	else if ($_GET['action']=='display-log-manual-sample') {
		
		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_river_manual_sampling.id,tbl_river_manual_sampling.stationID,
		tbl_river_manual_sampling.timestamp,
		tbl_river_station.riverName	 
		FROM tbl_river_manual_sampling 
			INNER JOIN tbl_river_station ON tbl_river_manual_sampling.stationID=tbl_river_station.stationID
				WHERE tbl_river_station.riverName LIKE :keyword
					ORDER BY tbl_river_manual_sampling.timestamp DESC";
		
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

	else if ($_GET['action']=='display-log-is-sample') {
		
		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_river_is_sampling.id,tbl_river_is_sampling.stationID,
		tbl_river_is_sampling.timestamp,
		tbl_river_station.riverName	 
		FROM tbl_river_is_sampling 
			INNER JOIN tbl_river_station ON tbl_river_is_sampling.stationID=tbl_river_station.stationID
				WHERE tbl_river_station.riverName LIKE :keyword
					ORDER BY tbl_river_is_sampling.timestamp DESC";		
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
			
}
?>

 