<?php
	require("sutemenyek.php");
	$server = new SoapServer("sutemenyek.wsdl");
	$server->setClass('Sutemenyek');
	$server->handle();
?>
