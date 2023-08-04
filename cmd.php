<?php
$conn = new SoapClient(null, [
    'location' => 'http://localhost:7878',
    'uri' => 'urn:AC',
    'style' => SOAP_RPC,
    'login' => 'admin0',
    'password' => 'adminpwd',
]);
echo $conn->executeCommand(
    new SoapParam('account create foobar helloworld', 'command')
);

?>
