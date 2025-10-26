<?php
include "../../db_config.php";
include "../../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");


$data = json_decode(file_get_contents("php://input"),true);

$action = $data['action'];

if ($action=='push-marine-tarball') {

	if (!empty($data['data'])) {
		
		foreach ($data['data'] as $row) {
			
			echo $sql = "insert into tbl_marine_tarball 
			values (null, '".$row['reportID']."',
			'".$row['firstSampler']."','".$row['secondSampler']."',
			'".$row['dateSample']."','".$row['timeSample']."',
			'".$row['stationID']."','".$row['classifyID']."',
			'".$row['latitude']."','".$row['longitude']."',
			'".$row['getLatitude']."','".$row['getLongitude']."',
			'".$row['distance']."',
			'".$row['optionalName1']."','".$row['optionalName2']."',
			'".$row['optionalName3']."','".$row['optionalName4']."',
			'".$row['timestamp']."')";
			$res = insertData2($sql);

		}
	}	

}

else if ($action=='push-marine-insitu') {

	if (!empty($data['data'])) {
		
		foreach ($data['data'] as $row) {
			
			echo $sql = "insert into tbl_marine_insitu_sampling 
			values (null, '".$row['reportID']."',
			'".$row['firstSampler']."','".$row['secondSampler']."',
			'".$row['dateController']."','".$row['timeController']."',
			'".$row['type']."','".$row['stationName']."',
			'".$row['sampleCode']."',
			'".$row['latitude']."','".$row['longitude']."',
			'".$row['distance']."','".$row['remarks']."','".$row['weather']."',
			'".$row['tide']."','".$row['sea']."',
			'".$row['eventRemarks']."','".$row['labRemarks']."',
			'".$row['sondeID']."',
			'".$row['dateCapture']."','".$row['timeCapture']."',
			'".$row['oxygen1']."','".$row['oxygen2']."',
			'".$row['pH']."','".$row['sanility']."',
			'".$row['ec']."','".$row['temperature']."',
			'".$row['tds']."','".$row['turbidity']."',
			'".$row['tss']."','".$row['batery']."',
			'".$row['stationID']."','".$row['timestamp']."')";
			$res = insertData2($sql);

		}
	}
}

else if ($action=='push-marine-study-sample') {

	if (!empty($data['data'])) {
		
		foreach ($data['data'] as $row) {
			
			echo $sql = "insert into tbl_marine_study_sampling 
			values (null, '".$row['reportID']."',
			'".$row['firstSampler']."','".$row['secondSampler']."',
			'".$row['dateController']."','".$row['timeController']."',
			'".$row['type']."','".$row['stationName']."',
			'".$row['sampleCode']."',
			'".$row['latitude']."','".$row['longitude']."',
			'".$row['distance']."','".$row['remarks']."','".$row['weather']."',
			'".$row['tide']."','".$row['sea']."',
			'".$row['eventRemarks']."','".$row['labRemarks']."',
			'".$row['sondeID']."',
			'".$row['dateCapture']."','".$row['timeCapture']."',
			'".$row['oxygen1']."','".$row['oxygen2']."',
			'".$row['pH']."','".$row['sanility']."',
			'".$row['ec']."','".$row['temperature']."',
			'".$row['tds']."','".$row['turbidity']."',
			'".$row['tss']."','".$row['batery']."',
			'".$row['stationID']."','".$row['timestamp']."')";
			$res = insertData2($sql);

		}
	}
}

?>

 