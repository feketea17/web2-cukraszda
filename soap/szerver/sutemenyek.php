<?php
class Mobilok {
  
  /**
    *  @return Markak
    */
  public function getmarkak(){
  
	$eredmeny = array("hibakod" => 0,
					  "uzenet" => "",
					  "suti" => Array());
	
	try {
	  $dbh = new PDO('mysql:host=localhost;dbname=mobilok','root', '',
					array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
	  $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
  
	  $sql = "select nev, tipus from suti order by nev";
	  $sth = $dbh->prepare($sql);
	  $sth->execute(array());
	  $eredmeny['suti'] = $sth->fetchAll(PDO::FETCH_ASSOC);
	}
	catch (PDOException $e) {
	  $eredmeny["hibakod"] = 1;
	  $eredmeny["uzenet"] = $e->getMessage();
	}
	
	return $eredmeny;
  }

  /**
    *  @param string $nev
    *  @return Modellek
    */
  function getmodellek($nev){
  
	$eredmeny = array("hibakod" => 0,
					  "uzenet" => "",
					  "nev" => "",
					  "tipus" => "",
					  "ar" => Array());
	
	try {
	  $dbh = new PDO('mysql:host=localhost;dbname=mobilok','root', '',
					array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
	  $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
  
	  $eredmeny["nev"] = $nev;
  
	  $sql = "select sutiid, tipus from suti where nev = :nev";
	  $sth = $dbh->prepare($sql);
	  $sth->execute(array(":nev" => $nev));
	  $sutemeny = $sth->fetch(PDO::FETCH_ASSOC);
	  $sutiid = $sutemeny["sutiid"];
	  $eredmeny["tipus"] = $sutemeny["tipus"];
  
	  $sql = "select ertek, egyseg from ar where sutiid = :sutiid order by ertek";
	  $sth = $dbh->prepare($sql);
	  $sth->execute(array(":sutiid" => $sutiid));
	  $eredmeny['ar'] = $sth->fetchAll(PDO::FETCH_ASSOC);
	}
	catch (PDOException $e) {
	  $eredmeny["hibakod"] = 1;
	  $eredmeny["uzenet"] = $e->getMessage();
	}
	
	return $eredmeny;
  }
}


class Marka {
  /**
   * @var string
   */
  public $nev;

  /**
   * @var string
   */
  public $tipus;  
}

class Markak {
  /**
   * @var integer
   */
  public $hibakod;

  /**
   * @var string
   */
  public $uzenet;  

  /**
   * @var Marka[]
   */
  public $suti;  
}

class Modell {
  /**
   * @var string
   */
  public $ertek;

  /**
   * @var string
   */
  public $egyseg;  
}

class Modellek {
  /**
   * @var integer
   */
  public $hibakod;

  /**
   * @var string
   */
  public $uzenet;  

  /**
   * @var string
   */
  public $nev;

  /**
   * @var string
   */
  public $tipus;  

  /**
   * @var Modell[]
   */
  public $ar;  
}
?>