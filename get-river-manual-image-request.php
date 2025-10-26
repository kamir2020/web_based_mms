<?php
header('Content-Type: application/json');
date_default_timezone_set('Asia/Kuala_Lumpur');


// ---------------- CONFIG ----------------
$PUBLIC_BASE = 'https://mmsv2.pstw.com.my'; // No trailing slash
$DOC_ROOT    = rtrim($_SERVER['DOCUMENT_ROOT'] ?? '', '/'); // e.g. /var/www/html
$ALLOWED_EXT = ['jpg','jpeg','png','gif','webp'];

// Map category to folder
$CATEGORY_MAP = [
    'manual_sample'    => '/images/river/manual_sample',
];

// ---------------- INPUTS ----------------
$category = $_GET['category'] ?? '';
$station  = $_GET['station']  ?? '';
$start    = $_GET['start']    ?? '';
$end      = $_GET['end']      ?? '';

// ---------------- VALIDATION ----------------
if (!isset($CATEGORY_MAP[$category])) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid category']);
    exit;
}
if (!$station) {
    http_response_code(400);
    echo json_encode(['error' => 'Missing station']);
    exit;
}
if (!$start || !$end) {
    http_response_code(400);
    echo json_encode(['error' => 'Missing start or end date']);
    exit;
}

// Sanitize station
$station = preg_replace('/[^A-Za-z0-9_.-]/', '', $station);

// Convert dates to YYYYMMDD
$startYmd = str_replace('-', '', $start);
$endYmd   = str_replace('-', '', $end);
if (!preg_match('/^\d{8}$/', $startYmd) || !preg_match('/^\d{8}$/', $endYmd)) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid date format']);
    exit;
}
if ($startYmd > $endYmd) {
    [$startYmd, $endYmd] = [$endYmd, $startYmd];
}

// ---------------- PATHS ----------------
$relFolder = $CATEGORY_MAP[$category] . '/' . $station;
$absFolder = $DOC_ROOT . $relFolder;
$baseUrl   = $PUBLIC_BASE . $relFolder;

if (!is_dir($absFolder)) {
    echo json_encode([]);
    exit;
}

// ---------------- SCAN FOLDER ----------------
$results = [];
$pattern = '/(?:^|_)' . preg_quote($station, '/') . '_(\d{8})(?:_\d{6})?_.*\.(?:' . implode('|', $ALLOWED_EXT) . ')$/i';

foreach (new DirectoryIterator($absFolder) as $fileInfo) {
    if ($fileInfo->isDot() || !$fileInfo->isFile()) continue;
    
    $name = $fileInfo->getFilename();
    if (preg_match($pattern, $name, $m)) {
        $fileYmd = $m[1]; // from filename
        if ($fileYmd >= $startYmd && $fileYmd <= $endYmd) {
            $results[] = $baseUrl . '/' . rawurlencode($name);
        }
    }
}

// Sort newest first (natural sort on filename)
natsort($results);
$results = array_values(array_reverse($results));

// ---------------- OUTPUT ----------------
echo json_encode($results, JSON_UNESCAPED_SLASHES);
?>