<?php
session_start();
include 'conn.php';
$username = mysqli_real_escape_string($con, $_POST['username']);
$password = mysqli_real_escape_string($con, $_POST['password']);
$password = md5($password);

$query = "SELECT * FROM user WHERE iduser = '$username'";
$hasil = mysqli_query($con, $query);
$data = mysqli_fetch_array($hasil, MYSQLI_ASSOC);
if ($password == $data['password'])
{
  $_SESSION['iduser'] = $data['iduser'];
  $_SESSION['nama'] = $data['nama'];
  $_SESSION['email'] = $data['email'];
  $_SESSION['no_hp'] = $data['no_hp'];
  $_SESSION['jabatan'] = $data['jabatan'];
  $_SESSION['unit_kerja'] = $data['unit_kerja'];
  $_SESSION['last_time'] = time();
  echo '<META HTTP-EQUIV="Refresh" Content="0; URL= ../home.php">';
  exit;
}else echo '<META HTTP-EQUIV="Refresh" Content="0; URL= ../index.php">';

?>
