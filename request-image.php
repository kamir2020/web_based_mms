<?php 

//$_GET['folder'] = 'MMCC015';
//$_GET['keyword'] = 'MMCC015';

$folder = $_GET['folder'];
$search = isset($_GET['keyword']) ? strtolower($_GET['keyword']) : '';

$files = scandir($folder);
$matched = [];

if (is_dir($folder)) {
  
  foreach ($files as $file) {
    if ($file !== '.' && $file !== '..') {
        if (empty($search) || strpos(strtolower($file), $search) !== false) {
           $matched[] = "https://mmsv2.pstw.com.my/$folder/$file";
         }
     }
   }
}

header('Content-Type: application/json');
echo json_encode($matched);

?>