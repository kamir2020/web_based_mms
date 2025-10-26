<?php
include "../../db_config.php";
include "../../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");


$data = json_decode(file_get_contents("php://input"),true);

$action = $data['action'];
//$action = 'push-river-manual-sample';

if ($action=='push-river-manual-sample') {

	if (!empty($data['data'])) {
		
		foreach ($data['data'] as $row) {
			
			echo $sql = "insert into tbl_river_manual_sampling 
			values (null, '".$row['reportID']."',
			'".$row['firstSampler']."','".$row['secondSampler']."',
			'".$row['dateController']."','".$row['timeController']."',
			'".$row['type']."','".$row['stationName']."',
			'".$row['sampleCode']."',
			'".$row['latitude']."','".$row['longitude']."',
			'".$row['distance']."','".$row['weather']."',
			'".$row['eventRemark']."','".$row['labRemark']."',
			'".$row['sondeID']."',
			'".$row['dateCapture']."','".$row['timeCapture']."',
			'".$row['oxygen1']."','".$row['oxygen2']."',
			'".$row['pH']."','".$row['ec']."',
			'".$row['sanility']."','".$row['temp']."',
			'".$row['turbidity']."','".$row['flowrate']."',
			'".$row['totalDissolve']."','".$row['totalSuspended']."',
			'".$row['battery']."','".$row['stationID']."',
			'".$row['timestamp']."')";
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
			'".$row['distance']."','".$row['weather']."',
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

 