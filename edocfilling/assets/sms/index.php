<!doctype html>
<html lang="id"> 
<head>
<title>..: Kirim SMS dengan Gammu :..</title> 
<meta charset="utf-8">
<style>
label,input{display:block;
margin:10px;}
</style>
</head>
<body>
<header>
<h1>Kirim SMS dengan GAMMU.</h1>
</header>
<form method="POST" action="<?php echo htmlentities($_SERVER['PHP_SELF']) ?>">
<label>No HP</label>
<input type="text" name="nohp">
<label>Pesan</label>
<input type="text" name="pesan">
<input type="submit" name="button" value="Kirim">
</form>
<?php
if(isset($_POST['button']))
{
require_once 'koneksi.php';
require_once 'class/class_sms.php'; 

$obj_db  = new db;
$obj_sms = new sms;

$obj_sms->no_hp  = $_POST['nohp'];
$obj_sms->isi_sms = $_POST['pesan'];

try {

$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$obj_db->table_name = "outbox";
$obj_db->fields     = array("DestinationNumber","TextDecoded");
$obj_db->values     = array(":no_hp",":isi_sms");
$doQuery            = $obj_db->QueryInsert($obj_db->table_name, $obj_db->fields, $obj_db->values);

$stmt = $conn->prepare($doQuery);

$stmt->bindParam(':no_hp', $obj_sms->no_hp);
$stmt->bindParam(':isi_sms', $obj_sms->isi_sms);

$stmt->execute();

echo "<script>alert('sukses kirim sms')</script>";

$conn = null;
}
catch(PDOException $e)
{
echo "Ada Kesalahan"; 
die();
}
}
?>
<footer>
<p>Copy Right &copy; 2016</p>
</footer>
</body>
</html>