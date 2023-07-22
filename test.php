<?php
$conn = new SoapClient(null, [
    'location' => 'http://localhost:7878',
    'uri' => 'urn:AC',
    'style' => SOAP_RPC,
    'login' => 'xianyu',
    'password' => 'alibaba',
]);
echo $conn->executeCommand(new SoapParam('account create foobar helloworld', 'command'));

?>
