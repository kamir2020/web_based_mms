<?php
ini_set('display_errors', 0);
error_reporting(0);
header('Content-Type: application/json');

include "../../db_config.php"; // provides $conn (PDO)
include "../../query.php";

$raw = file_get_contents('php://input');
$data = json_decode($raw, true);

if (!is_array($data)) {
    respond(false, 400, 'Invalid JSON payload', null);
}

$action = $data['action'] ?? null;
if (!$action) {
    respond(false, 400, 'Missing action', null);
}

try {
    switch ($action) {
        case 'river-manual-sampling': {

            $required = [
                'reportID','firstSampler','secondSampler','dateController','timeController',
                'type','stationName','sampleCode','latitude','longitude','distance','remarks','weather',
                'eventRemark','labRemark','sondeID','dateCapture','timeCapture',
                'oxygen1','oxygen2','pH','ec','salinity','temp','turbidity','flowrate',
                'totalDissolve','totalSuspended','battery','stationID','timestamp'
            ];
            if ($miss = require_keys($data, $required)) {
                respond(false, 400, 'Missing fields: ' . implode(', ', $miss), null);
            }

            // Prepare INSERT
            $sql = "INSERT INTO tbl_river_manual_sampling VALUES (
                NULL,:reportID,:firstSampler,:secondSampler,:dateController,:timeController,
                :type,:stationName,:sampleCode,:latitude,:longitude,:distance,:remarks,:weather,
                :eventRemark,:labRemark,:sondeID,:dateCapture,:timeCapture,
                :oxygen1,:oxygen2,:pH,:ec,:salinity,:temp,:turbidity,:flowrate,
                :totalDissolve,:totalSuspended,:battery,:stationID,:timestamp
            )";

            // Bind params (use null coalescing so NULLs are inserted if any field missing)
            $params = [
                ':reportID'        => $data['reportID']        ?? null,
                ':firstSampler'    => $data['firstSampler']    ?? null,
                ':secondSampler'   => $data['secondSampler']   ?? null,
                ':dateController'  => $data['dateController']  ?? null,
                ':timeController'  => $data['timeController']  ?? null,
                ':type'            => $data['type']            ?? null,
                ':stationName'     => $data['stationName']     ?? null,
                ':sampleCode'      => $data['sampleCode']      ?? null,
                ':latitude'        => $data['latitude']        ?? null,
                ':longitude'       => $data['longitude']       ?? null,
		':distance'        => $data['distance']       ?? null,
		':remarks'         => $data['remarks']       ?? null,
                ':weather'         => $data['weather']         ?? null,
                ':eventRemark'     => $data['eventRemark']     ?? null,
                ':labRemark'       => $data['labRemark']       ?? null,
                ':sondeID'         => $data['sondeID']         ?? null,
                ':dateCapture'     => $data['dateCapture']     ?? null,
                ':timeCapture'     => $data['timeCapture']     ?? null,
                ':oxygen1'         => $data['oxygen1']         ?? null,
                ':oxygen2'         => $data['oxygen2']         ?? null,
                ':pH'              => $data['pH']              ?? null,
                ':ec'              => $data['ec']              ?? null,
                ':salinity'        => $data['salinity']        ?? null, 
                ':temp'            => $data['temp']            ?? null,
                ':turbidity'       => $data['turbidity']       ?? null,
                ':flowrate'        => $data['flowrate']        ?? null,
                ':totalDissolve'   => $data['totalDissolve']   ?? null,
                ':totalSuspended'  => $data['totalSuspended']  ?? null,
                ':battery'         => $data['battery']         ?? null,
                ':stationID'       => $data['stationID']       ?? null,
                ':timestamp'       => $data['timestamp']       ?? null,
            ];

            $id = insertData3($sql, $params);
            if ($id > 0) {
                respond(true, 201, 'Created', $id);
            } else {
                respond(false, 400, 'Insert failed', null);
            }
            break;
        }

 	// another case here....
	case 'river-is-sampling': {

            $required = [
                'reportID','firstSampler','secondSampler','dateController','timeController',
                'type','stationName','sampleCode','latitude','longitude','distance','remarks','weather',
                'eventRemark','labRemark','sondeID','dateCapture','timeCapture',
                'oxygen1','oxygen2','pH','ec','salinity','temp','turbidity','flowrate',
                'totalDissolve','totalSuspended','battery','stationID','timestamp'
            ];
            if ($miss = require_keys($data, $required)) {
                respond(false, 400, 'Missing fields: ' . implode(', ', $miss), null);
            }

            // Prepare INSERT
            $sql = "INSERT INTO tbl_river_is_sampling VALUES (
                NULL,:reportID,:firstSampler,:secondSampler,:dateController,:timeController,
                :type,:stationName,:sampleCode,:latitude,:longitude,:distance,:remarks,:weather,
                :eventRemark,:labRemark,:sondeID,:dateCapture,:timeCapture,
                :oxygen1,:oxygen2,:pH,:ec,:salinity,:temp,:turbidity,:flowrate,
                :totalDissolve,:totalSuspended,:battery,:stationID,:timestamp
            )";

            // Bind params (use null coalescing so NULLs are inserted if any field missing)
            $params = [
                ':reportID'        => $data['reportID']        ?? null,
                ':firstSampler'    => $data['firstSampler']    ?? null,
                ':secondSampler'   => $data['secondSampler']   ?? null,
                ':dateController'  => $data['dateController']  ?? null,
                ':timeController'  => $data['timeController']  ?? null,
                ':type'            => $data['type']            ?? null,
                ':stationName'     => $data['stationName']     ?? null,
                ':sampleCode'      => $data['sampleCode']      ?? null,
                ':latitude'        => $data['latitude']        ?? null,
                ':longitude'       => $data['longitude']       ?? null,
		':distance'        => $data['distance']       ?? null,
		':remarks'         => $data['remarks']       ?? null,
                ':weather'         => $data['weather']         ?? null,
                ':eventRemark'     => $data['eventRemark']     ?? null,
                ':labRemark'       => $data['labRemark']       ?? null,
                ':sondeID'         => $data['sondeID']         ?? null,
                ':dateCapture'     => $data['dateCapture']     ?? null,
                ':timeCapture'     => $data['timeCapture']     ?? null,
                ':oxygen1'         => $data['oxygen1']         ?? null,
                ':oxygen2'         => $data['oxygen2']         ?? null,
                ':pH'              => $data['pH']              ?? null,
                ':ec'              => $data['ec']              ?? null,
                ':salinity'        => $data['salinity']        ?? null, 
                ':temp'            => $data['temp']            ?? null,
                ':turbidity'       => $data['turbidity']       ?? null,
                ':flowrate'        => $data['flowrate']        ?? null,
                ':totalDissolve'   => $data['totalDissolve']   ?? null,
                ':totalSuspended'  => $data['totalSuspended']  ?? null,
                ':battery'         => $data['battery']         ?? null,
                ':stationID'       => $data['stationID']       ?? null,
                ':timestamp'       => $data['timestamp']       ?? null,
            ];

            $id = insertData3($sql, $params);
            if ($id > 0) {
                respond(true, 201, 'Created', $id);
            } else {
                respond(false, 400, 'Insert failed', null);
            }
            break;
        }

        default:
            respond(false, 400, 'Unknown action: ' . $action, null);
    }

} catch (Throwable $e) {
    respond(false, 400, $e->getMessage(), null);
}