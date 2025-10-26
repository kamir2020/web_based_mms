<?php
include "secure.php";

$plan = encrypt('password');
echo $plan;
echo"<br>";

$pwd = decrypt($plan);
echo $pwd;
?>