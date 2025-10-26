<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include "../../db_config.php";
include "../../secure.php";
include "../../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");


$myObj = new stdClass();

$rawInput = file_get_contents("php://input");
$data = json_decode($rawInput,true);

$action = $data['action'];

if (isset($action)) {

	if ($action=='tarball-sampling') {
		
		$timestamp = date('Y-m-d H:i:s');
		
		$sql = "INSERT INTO tbl_marine_tarball 
		VALUES (null,'".$data['reportID']."','".$data['firstSampler']."','".$data['secondSampler']."',
		'".$data['dateSample']."','".$data['timeSample']."',
		'".$data['stationID']."','".$data['classifyID']."',
		'".$data['latitude']."','".$data['longitude']."',
		'".$data['getLatitude']."','".$data['getLongitude']."',
		'".$data['distance']."',
		'".$data['optionalName1']."','".$data['optionalName2']."',
		'".$data['optionalName3']."','".$data['optionalName4']."',
		'".$data['timestamp']."')";
		$res = insertData2($sql);

		
		if ($res > 0) {
			// create folder //
			//mkdir("../../images/marine/manual_tarball/".$res,0777,true);
	
			$myObj->folderID = $res;
			$myObj->statusCode = 404;
		}
		
		else {
			$myObj->folderID = '';
			$myObj->statusCode = 500;
		}
		
		
		$myJSON = json_encode($myObj);
		echo $myJSON;


	}


	else if ($action=='marine-sampling-mm01') {
		
		// for signature
		$signatureBase64 = $data['signature_base64'] ?? null;
		$fileUrl = null;

		$sql = "INSERT INTO tbl_marine_sampling_mm1 
		VALUES (null,'".$data['userID']."',
		'".$data['startDate']."','".$data['endDate']."','".$data['startTime']."','".$data['endTime']."',
		'".$data['location']."',
		'".$data['ans1']."','".$data['ans2']."','".$data['ans3']."','".$data['ans4']."',
		'".$data['observation1']."',
		'".$data['ans5']."','".$data['ans6']."','".$data['ans7']."','".$data['ans8']."',
		'".$data['ans9']."','".$data['ans10']."','".$data['ans11']."','".$data['ans12']."',
		'".$data['observation2']."',
		'".$data['serial1']."','".$data['serial2']."','".$data['serial3']."','".$data['serial4']."',
		'".$data['serial5']."','".$data['serial6']."','".$data['serial7']."','".$data['serial8']."',
		'".$data['serial9']."','".$data['serial10']."',
		'".$data['ans13']."','".$data['ans14']."','".$data['ans15']."','".$data['ans16']."',
		'".$data['observation3']."',
		'".$data['serial11']."','".$data['serial12']."',
		'".$data['lastDate1']."','".$data['newDate1']."','".$data['lastDate2']."','".$data['newDate2']."',
		'".$data['lastDate3']."','".$data['newDate3']."','".$data['lastDate4']."','".$data['newDate4']."',
		'".$data['conductedDate']."')";
		$res = insertData2($sql);
		
		if ($res > 0) {
			
			if ($signatureBase64) {
				
				$uploadDir = "../../marine/manual/pre_sampling/mm1/conducted/{$res}/";
				
				if (!is_dir($uploadDir)) {
					mkdir($uploadDir, 0755, true);
				}

				$decoded = base64_decode($signatureBase64);

				$filename = 'sig_' .time() .'_' . bin2hex(random_bytes(5)) . '.png';
				$filePath = $uploadDir . '/' . $filename; 

				// save file
				if (file_put_contents($filePath,$decoded) !== false) {
					$fileUrl = "https://mmsv2.pstw.com.my/marine/manual/pre_sampling/mm1/conducted/{$res}/".$filename;	
				}
			}

			$myObj->statusCode = 404;
		}
		
		else {
			$myObj->statusCode = 500;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;
		
	}
	
	else if ($action=='marine-sampling-mm02') {

		// for signature
		$signatureBase64 = $data['signature_base64'] ?? null;
		$fileUrl = null;		

		$sql = "INSERT INTO tbl_marine_sampling_mm2 
		VALUES (null,'".$data['userID']."',
		'".$data['serialNumber']."','".$data['version']."',
		'".$data['startDate']."','".$data['endDate']."',
		'".$data['startTime']."','".$data['endTime']."',
		'".$data['location']."',
		'".$data['ph7_reading']."','".$data['ph7_before']."','".$data['ph7_after']."',
		'".$data['ph10_reading']."','".$data['ph10_before']."','".$data['ph10_after']."',
		'".$data['sp_before']."','".$data['sp_after']."',
		'".$data['ntu_before']."','".$data['ntu_after']."',
		'".$data['dis_before']."','".$data['dis_after']."',
		'".$data['conductedDate']."','".$data['observation']."')";
		$res = insertData2($sql);
		
		if ($res > 0) {
			
			if ($signatureBase64) {
				
				$uploadDir = "../../marine/manual/pre_sampling/mm2/conducted/{$res}/";
				
				if (!is_dir($uploadDir)) {
					mkdir($uploadDir, 0755, true);
				}

				$decoded = base64_decode($signatureBase64);

				$filename = 'sig_' .time() .'_' . bin2hex(random_bytes(5)) . '.png';
				$filePath = $uploadDir . '/' . $filename; 

				// save file
				if (file_put_contents($filePath,$decoded) !== false) {
					$fileUrl = "https://mmsv2.pstw.com.my/marine/manual/pre_sampling/mm2/conducted/{$res}/".$filename;	
				}
			}			

			$myObj->statusCode = 404;
		}
		
		else {
			$myObj->statusCode = 500;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;
		
	}
	
	else if ($action=='marine-sampling-mm03') {
		
		// for signature
		$signatureBase64 = $data['signature_base64'] ?? null;
		$fileUrl = null;
		
		$sql = "INSERT INTO tbl_marine_sampling_mm3 
		VALUES (null,'".$data['userID']."',
		'".$data['ans17']."','".$data['remarks17']."',
		'".$data['ans18']."','".$data['remarks18']."',
		'".$data['ans19']."','".$data['remarks19']."',
		'".$data['ans20']."','".$data['remarks20']."',
		'".$data['ans21']."','".$data['remarks21']."',
		'".$data['ans22']."','".$data['remarks22']."',
		'".$data['ans23']."','".$data['remarks23']."',
		'".$data['ans24']."','".$data['remarks24']."',
		'".$data['ans25']."','".$data['remarks25']."',
		'".$data['ans26']."','".$data['remarks26']."',
		'".$data['ans27']."','".$data['remarks27']."',
		'".$data['ans28']."','".$data['remarks28']."',
		'".$data['ans29']."','".$data['remarks29']."',
		'".$data['ans30']."','".$data['remarks30']."',
		'".$data['ans31']."','".$data['remarks31']."',
		'".$data['ans32']."','".$data['remarks32']."',
		'".$data['ans33']."','".$data['remarks33']."',
		'".$data['ans34']."','".$data['remarks34']."',
		'".$data['ans35']."','".$data['remarks35']."',
		'".$data['ans36']."','".$data['remarks36']."',
		'".$data['ans37']."','".$data['remarks37']."',
		'".$data['ans38']."','".$data['remarks38']."',
		'".$data['ans39']."','".$data['remarks39']."',
		'".$data['ans40']."','".$data['remarks40']."',
		'".$data['ans41']."','".$data['remarks41']."',
		'".$data['ans42']."','".$data['remarks42']."',
		'".$data['ans43']."','".$data['remarks43']."',
		'".$data['ans44']."','".$data['remarks44']."',
		'".$data['ans45']."','".$data['remarks45']."',
		'".$data['ans46']."','".$data['remarks46']."',
		'".$data['ans47']."','".$data['remarks47']."',
		'".$data['ans48']."','".$data['remarks48']."',
		'".$data['ans49']."','".$data['remarks49']."',
		'".$data['inspectedDate']."')";
		$res = insertData2($sql);
		
		if ($res > 0) {

			if ($signatureBase64) {
				
				$uploadDir = "../../marine/manual/pre_sampling/mm3/conducted/{$res}/";
				
				if (!is_dir($uploadDir)) {
					mkdir($uploadDir, 0755, true);
				}

				$decoded = base64_decode($signatureBase64);

				$filename = 'sig_' .time() .'_' . bin2hex(random_bytes(5)) . '.png';
				$filePath = $uploadDir . '/' . $filename; 

				// save file
				if (file_put_contents($filePath,$decoded) !== false) {
					$fileUrl = "https://mmsv2.pstw.com.my/marine/manual/pre_sampling/mm3/conducted/{$res}/".$filename;	
				}
			}

			$myObj->statusCode = 404;
		}
		
		else {
			$myObj->statusCode = 500;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;
		
	}

	else  if ($action=='marine-insitu-sampling') {

		$sql = "INSERT INTO tbl_marine_insitu_sampling 
		VALUES (null,'".$data['reportID']."',
		'".$data['firstSampler']."','".$data['secondSampler']."',
		'".$data['dateController']."','".$data['timeController']."','".$data['type']."',
		'".$data['stationName']."','".$data['sampleCode']."',
		'".$data['latitude']."','".$data['longitude']."',
		'".$data['distance']."','".$data['remarks']."',
		'".$data['weather']."','".$data['tide']."','".$data['condition']."',
		'".$data['event']."','".$data['lab']."',
		'".$data['sondeID']."','".$data['dateCapture']."','".$data['timeCapture']."',
		'".$data['oxygen1']."','".$data['oxygen2']."',
		'".$data['pH']."','".$data['salinity']."','".$data['ec']."','".$data['temp']."',
		'".$data['tds']."','".$data['turbidity']."','".$data['tss']."','".$data['battery']."',
		'".$data['stationID']."','".$data['timestamp']."')";
		$res = insertData2($sql);

		$myObj->status = $res;
		
		if ($res > 0) {
 			
			// create folder //
			//mkdir("../../images/marine/manual_in_situ/".$res,0777,true);
	
			$myObj->folderID = $res;
			$myObj->statusCode = 404;
		}
		
		else {

			$myObj->folderID = '';
			$myObj->statusCode = 500;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;


	}

	else  if ($action=='marine-study-sampling') {

		$sql = "INSERT INTO tbl_marine_study_sampling 
		VALUES (null,'".$data['reportID']."',
		'".$data['firstSampler']."','".$data['secondSampler']."',
		'".$data['dateController']."','".$data['timeController']."','".$data['type']."',
		'".$data['stationName']."','".$data['sampleCode']."',
		'".$data['latitude']."','".$data['longitude']."',
		'".$data['distance']."','".$data['remarks']."',
		'".$data['weather']."','".$data['tide']."','".$data['condition']."',
		'".$data['event']."','".$data['lab']."',
		'".$data['sondeID']."','".$data['dateCapture']."','".$data['timeCapture']."',
		'".$data['oxygen1']."','".$data['oxygen2']."',
		'".$data['pH']."','".$data['salinity']."','".$data['ec']."','".$data['temp']."',
		'".$data['tds']."','".$data['turbidity']."','".$data['tss']."','".$data['battery']."',
		'".$data['stationID']."','".$data['timestamp']."')";
		$res = insertData2($sql);

		$myObj->status = $res;
		
		if ($res > 0) {
 			
			// create folder //
			//mkdir("../../images/marine/manual_study_sampling/".$res,0777,true);
	
			$myObj->folderID = $res;
			$myObj->statusCode = 404;
		}
		
		else {

			$myObj->folderID = '';
			$myObj->statusCode = 500;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;


	}

}
?>

 