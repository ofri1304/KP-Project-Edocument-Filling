<?php
$hostmysql = "localhost";
$password = "GkDp3zcPer";
$username = "ocantika";
$database = "ocantika";

$con = mysqli_connect($hostmysql, $username, $password, $database);

if (!$con)die ("Gagal Melakukan Koneksi");
mysqli_select_db($con, $database) or die ("Database Tidak Diketemukan di Server");
 ?>
