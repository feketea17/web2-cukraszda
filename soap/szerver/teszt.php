<!DOCTYPE HTML>
<html>
  <head>
  <meta charset="utf-8">
  <title>MOBILOK</title>
  </head>

  <?php
     $options = array(
   
   'keep_alive' => false,
    //'trace' =>true,
    //'connection_timeout' => 5000,
    //'cache_wsdl' => WSDL_CACHE_NONE,
   );
  $client = new SoapClient('http://localhost/feladat/szerver/mobilok.wsdl',$options);
  
  $markak = $client->getmarkak();
  echo "<pre>";
  print_r($markak);
  echo "</pre>";
  
  $modellek = $client->getmodellek('001');
  echo "<pre>";
  print_r($modellek);
  echo "</pre>";
  ?>
    
  <body>
  </body>
</html>