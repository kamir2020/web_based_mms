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

	
	if ($_GET['action']=='marine-email') {
		
		$sql = "SELECT tbl_email_list.id,tbl_email_list.typeID,
		tbl_email_list.emailAddress 
		FROM tbl_email_list
			WHERE tbl_email_list.typeID='T1'
			ORDER BY tbl_email_list.emailAddress ASC";
		$stmt = displayData2($sql);
		
		$data = [];
		
		foreach ($stmt as $row) {
			$data[] = $row['emailAddress'];
		}
		
		echo json_encode($data);
	}

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

	else if ($_GET['action']=='marine-state') {
		
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
	
	else if ($_GET['action']=='marine-sampling') {
		
		$sql = "SELECT * FROM tbl_marine_samplling_mm1 ORDER BY id DESC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}
	
	else if ($_GET['action']=='marine-station') {
		
		$sql = "SELECT tbl_marine_station.stationID,tbl_marine_station.stateID,
		tbl_marine_station.locationName,
		tbl_marine_station.latitude,tbl_marine_station.longitude,
		tbl_state.stateName,
		tbl_category.categoryName 
		FROM tbl_marine_station
			INNER JOIN tbl_state ON tbl_marine_station.stateID=tbl_state.stateID
			INNER JOIN tbl_category ON tbl_marine_station.categoryID=tbl_category.categoryID  
				ORDER BY tbl_marine_station.id DESC";
		$stmt = displayData2($sql);
		
		$data = array();
		
		foreach ($stmt as $row) {
			$data[] = $row;
		}
		
		echo json_encode($data);
	}
	
	else if ($_GET['action']=='marine-tarball-station') {
		
		$sql = "SELECT tbl_marine_station.stationID,tbl_marine_station.stateID,
		tbl_marine_station.locationName,
		tbl_marine_station.latitude,tbl_marine_station.longitude,
		tbl_state.stateName,
		tbl_category.categoryName 
		FROM tbl_marine_station
			INNER JOIN tbl_state ON tbl_marine_station.stateID=tbl_state.stateID
			INNER JOIN tbl_category ON tbl_marine_station.categoryID=tbl_category.categoryID
				WHERE tbl_marine_station.stateID='".$_GET['stateID']."'   
					ORDER BY tbl_marine_station.id DESC";
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

	else if ($_GET['action']=='display-log-tarball') {
		
		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_marine_tarball.id,tbl_marine_tarball.stationID,
		tbl_marine_tarball.timestamp,
		tbl_tarball_station.locationName	 
		FROM tbl_marine_tarball 
			INNER JOIN tbl_tarball_station ON tbl_marine_tarball.stationID=tbl_tarball_station.stationID
				WHERE tbl_tarball_station.locationName LIKE :keyword
				ORDER BY timestamp DESC";

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

	else if ($_GET['action']=='display-log-in-situ') {

		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_marine_insitu_sampling.id,tbl_marine_insitu_sampling.stationID,
		tbl_marine_insitu_sampling.timestamp,
		tbl_marine_station.locationName	 
		FROM tbl_marine_insitu_sampling 
			INNER JOIN tbl_marine_station ON tbl_marine_insitu_sampling.stationID=tbl_marine_station.stationID
				WHERE tbl_marine_insitu_sampling.stationName LIKE :keyword
					ORDER BY tbl_marine_insitu_sampling.timestamp DESC";
		
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

	else if ($_GET['action']=='display-log-marine-study') {	

		// Use locationName instead of stationName
		$keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

		$sql = "SELECT tbl_marine_study_sampling.id,tbl_marine_study_sampling.stationID,
		tbl_marine_study_sampling.timestamp,
		tbl_marine_station.locationName	 
		FROM tbl_marine_study_sampling 
			INNER JOIN tbl_marine_station ON tbl_marine_study_sampling.stationID=tbl_marine_station.stationID
				WHERE tbl_marine_station.locationName LIKE :keyword
					ORDER BY tbl_marine_study_sampling.timestamp DESC";
		
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

	else if ($_GET['action']=='image-request') {
		
		if ($_GET['id']=='1') { // in-situ
		
			$sql = "SELECT tbl_marine_insitu_sampling.timestamp,
			tbl_marine_station.stationID,tbl_marine_station.locationName	 
			FROM tbl_marine_insitu_sampling 
			  INNER JOIN tbl_marine_station ON tbl_marine_insitu_sampling.stationID=tbl_marine_station.stationID
			    WHERE tbl_marine_insitu_sampling.stationID='".$_GET['stationID']."'
			      ORDER BY timestamp DESC";
			$stmt = displayData2($sql);
		
			$data = array();
		
			foreach ($stmt as $row) {
				$data[] = $row;
			}
		
			echo json_encode($data);	
		
		}

		else if ($_GET['id']=='2') { // tarball
		
			$sql = "SELECT tbl_marine_tarball.timestamp,
			tbl_tarball_station.stationID,tbl_tarball_station.locationName	 
			FROM tbl_marine_tarball 
			  INNER JOIN tbl_tarball_station ON tbl_marine_tarball.stationID=tbl_tarball_station.stationID
			    WHERE tbl_marine_tarball.stationID='".$_GET['stationID']."'
			      ORDER BY tbl_marine_tarball.timestamp DESC";
			$stmt = displayData2($sql);
		
			$data = array();
		
			foreach ($stmt as $row) {
				$data[] = $row;
			}
		
			echo json_encode($data);	
		
		}
		
	}
			
}
?>

 