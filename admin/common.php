<?php
if (session_status() === PHP_SESSION_NONE) session_start();

// auth guard...
// categories, paths, etc.

// --- Helpers ---
if (!function_exists('sanitize_name')) {
  function sanitize_name($name) {
    $name = preg_replace('/[^\w.\- ]+/u', '_', $name);
    $name = trim($name);
    return $name === '' ? 'file' : $name;
  }
}

if (!function_exists('gather_all_files')) {
  function gather_all_files(array $CATEGORIES, string $UPLOAD_ROOT, string $UPLOAD_URL): array {
    $files = [];
    foreach ($CATEGORIES as $cat) {
      $safe = preg_replace('/[^a-z0-9_\- ]+/i','_', $cat);
      $dir  = $UPLOAD_ROOT . '/' . $safe;
      if (!is_dir($dir)) continue;
      $entries = @scandir($dir);
      if (!$entries) continue;
      foreach ($entries as $f) {
        if ($f === '.' || $f === '..') continue;
        $path = $dir . '/' . $f;
        if (!is_file($path)) continue;
        $files[] = [
          'cat'  => $cat,
          'name' => $f,
          'size' => filesize($path),
          'time' => filemtime($path),
          'url'  => $UPLOAD_URL . '/' . rawurlencode($safe) . '/' . rawurlencode($f),
        ];
      }
    }
    usort($files, fn($a,$b) => $b['time'] <=> $a['time']);
    return $files;
  }
}
