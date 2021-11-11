<!DOCTYPE HTML>
<html>
  <head>
  <meta charset="utf-8">
  <title>Sütemények</title>
  </head>

  <?php 
  $client = new SoapClient('http://localhost/web2-cukraszda/szerver/sutemenyek.wsdl');
  $suti = $client->getmarkak();
  if(isset($_POST['sutemeny']) && trim($_POST['sutemeny']) != "")
    $ar = $client->getmodellek($_POST['sutemeny']);
  ?>
    
  <body>
    <h1>Sütemények</h1>
    <form name="markaselect" method="POST">
      <select name="sutemeny" onchange="javascript:markaselect.submit();">
        <option value="">Válasszon!</option>
        <?php
          foreach($suti->suti as $sutemeny)
          {
            echo '<option value="'.$sutemeny['nev'].'">'.$sutemeny['tipus'].'</option>';
          }
        ?>
      </select>
        <?php
          if(isset($ar))
          {
            echo "<fieldset>";
            echo '<legend>'.$ar->tipus.'('.$ar->nev.')</legend>';
            foreach($ar->ar as $sar)
            {
              echo $sar['ertek'].' - '.$sar['egyseg']."<br>";
            }
            echo "</fieldset>";
          }
        ?>
    </form>
  </body>                                                          
</html>