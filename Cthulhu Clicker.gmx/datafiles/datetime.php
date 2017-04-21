<?php
date_default_timezone_set('Asia/Kolkata');

$timestamp = time();
$date_time = strtotime(date("d-m-Y H:i:s", $timestamp));

echo "$date_time";
?>