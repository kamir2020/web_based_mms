<?php
header("Content-Type: application/json");
include "../db_config.php";
include "../secure.php";
include "../query.php";
date_default_timezone_set("Asia/Kuala_Lumpur");

$myObj = new stdClass();

$rawInput = file_get_contents("php://input");
$data = json_decode($rawInput,true);

$action = $data['action'];

if (isset($action)) {
	if ($action=='login-user') {

		$sql= "SELECT tbl_user.id,tbl_user.userID,tbl_user.fullname,tbl_user.username,tbl_user.pwd,
		tbl_user.levelID,tbl_user.departID
		FROM tbl_user
			WHERE tbl_user.username='".$data['username']."'";
		$result = displayData1($sql);
		
		
		if ($result['id']!='') {
			
			$pwd = decrypt($result['pwd']);
			
			if ($pwd == $data['password']) {

				
				$myObj->status = 'success';
				$myObj->userID = $result['userID'];
				$myObj->levelID = $result['levelID'];
				$myObj->departID = $result['departID'];
				$myObj->fullName = $result['fullname'];
				
				
			}
			else {
	
				$myObj->status = 'fail';
				$myObj->userID = '';
				$myObj->levelID = '';
				$myObj->departID = '';
				$myObj->fullName = '';
			
			}
			
		}
		else {
			$myObj->status = 'fail';	
		}
				
		$myJSON = json_encode($myObj);
		echo $myJSON; 
	}

	else if ($action=='register-user') {
		
		// get id from tbl_user
		$sql = "SELECT * FROM tbl_user ORDER BY id DESC";
		$res = displayData1($sql);
		
		$id = $res['id']+1;
		$getID = generateID(5);
		$userID = $getID.$id; 
		
		$dateJoin = date('Y-m-d');
		
		// encrypt password
		$pwd = encrypt($data['pwd']);
		
		
		// insert into 
		$sql1 = "INSERT INTO tbl_user 
		VALUES (null,'".$userID."','".$data['fullName']."','".$data['username']."','".$pwd."','".$data['levelID']."','".$data['departID']."')";
		$res1 = insertData1($sql1);
		
		
		if ($res1=='true') {
			$myObj->statusCode = 200;	
		}
		else {
			$myObj->statusCode = 504;
		}
		
		$myJSON = json_encode($myObj);
		echo $myJSON;
	}

}
	
?>

 