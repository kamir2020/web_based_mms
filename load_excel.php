<?php
// Include PHPExcel library
require_once '../PHPExcel/Classes/PHPExcel.php';
require_once 'db_config.php';
require_once 'query.php';
// Path to the Excel file


$filePath = 'excel_files/manual_station_mmwqm.xls';
	
$excelReader = PHPExcel_IOFactory::createReaderForFile($filePath);
$excelObj = $excelReader->load($filePath);
$sheet = $excelObj->getActiveSheet();
$rowCount = $sheet->getHighestRow(); // Total rows
$colCount = $sheet->getHighestColumn(); // Total columns


// Loop through each row
for ($row = 2; $row <= $rowCount; $row++) {
	
	$col1 = $sheet->getCell('A' . $row)->getValue(); // Column B
    $col2 = $sheet->getCell('B' . $row)->getValue(); // Column C
    $col3 = $sheet->getCell('C' . $row)->getValue(); // Column D
    $col4 = $sheet->getCell('D' . $row)->getValue(); // Column E
    $col5 = $sheet->getCell('E' . $row)->getValue(); // Column F
    $col6 = $sheet->getCell('F' . $row)->getValue(); // Column G
		
	// Insert into MySQL
    $query = "INSERT INTO tbl_marine_station 
    VALUES (null,'".$col1."','".$col2."','".$col3."','".$col4."','".$col5."','".$col6."')";
    $res = insertData1($query);
    
}

echo $row;
echo "Excel file imported successfully!";

?>
