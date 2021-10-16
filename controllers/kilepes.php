<?php

class Kilepes_Controller
{
	public $baseName = 'belepes';  //meghat�rozni, hogy melyik oldalon vagyunk
	public function main(array $vars) // a router �ltal tov�bb�tott param�tereket kapja
	{
		$kilepesModel = new Kilepes_Model;  //az oszt�lyhoz tartoz� modell
		//a modellben bel�pteti a felhaszn�l�t
		$retData = $kilepesModel->get_data(); 
		//bet�ltj�k a n�zetet
		$view = new View_Loader($this->baseName.'_main');
		//�tadjuk a lek�rdezett adatokat a n�zetnek
		foreach($retData as $name => $value)
			$view->assign($name, $value);
	}
}

?>