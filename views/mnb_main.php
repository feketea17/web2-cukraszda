<div class="page-heading about-heading header-text" style="background-image: url(assets/images/heading-2-1920x500.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h2>MNB</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="best-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Valutaárfolyam lekérdezés</h2>
            </div>
          </div>
          <div class="col-md-6">
            <div class="left-content">

<pre>
<?php
    try {
        $client = new SoapClient("http://www.mnb.hu/arfolyamok.asmx?WSDL");
        echo "<br>GetCurrentExchangeRates()<br>";
// (array): itt egy asszociatív tömbbé konvertálja:
        $tömb = (array)simplexml_load_string($client->GetCurrentExchangeRates()->GetCurrentExchangeRatesResult);
        echo $tömb['Day']['date']."<br>";
        print_r($tömb);

        echo "<br>GetInfo()<br>";
        $tömb = (array)simplexml_load_string($client->GetInfo()->GetInfoResult);
        print_r($tömb);

        echo "<br>GetCurrencies()<br>";
        $tömb = (array)simplexml_load_string($client->GetCurrencies()->GetCurrenciesResult);
        print_r($tömb);

        echo "<br>GetDateInterval()<br>";
        $tömb = (array)simplexml_load_string($client->GetDateInterval()->GetDateIntervalResult);
        print_r($tömb);

    } catch (SoapFault $e) {
        var_dump($e);
    }
?>
</pre>

            </div>
          </div>
          <div class="col-md-6">
            <div class="right-image">
              <img src="assets/images/mnb.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>
