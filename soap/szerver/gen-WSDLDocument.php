<?php
	//error_reporting(0);
	require 'sutemenyek.php';
	require 'WSDLDocument/WSDLDocument.php';
	$wsdl = new WSDLDocument('Sutemenyek', "http://localhost/web2-cukraszda/szerver/szerver.php", "http://localhost/web2-cukraszda/szerver/");
	$wsdl->formatOutput = true;
	$wsdlfile = $wsdl->saveXML();
	echo $wsdlfile;
	file_put_contents ("sutemenyek.wsdl" , $wsdlfile);
?>
