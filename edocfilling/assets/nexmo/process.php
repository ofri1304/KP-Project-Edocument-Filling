<?php
	require_once "vendor/autoload.php";

	function sendSMS($nohp_penerima, $msg){

	//$client = new Nexmo\Client(new Nexmo\Client\Credentials\Basic('91285357', '843fc0ccb927e36f'));
//$client = new Nexmo\Client(new Nexmo\Client\Credentials\Basic('3bb4d19d', '2ea7a2a587bbfc1e'));
$client = new Nexmo\Client(new Nexmo\Client\Credentials\Basic('1a40a2b9', '6d173ba988cab396'));

	$message = $client->message()->send([
    'to' => $nohp_penerima,
    'from' => 'Ofri',
    'text' => $msg
	]);
//array access provides response data
echo "Sent message to " . $message['to'] . ". Balance is now " . $message['remaining-balance'] . PHP_EOL;
}
?>
