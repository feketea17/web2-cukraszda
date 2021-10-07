<?php

class Velemenyek_Model
{
	public function get_data($vars)
	{
		$retData['eredmeny'] = "";
		try {
			$connection = Database::getConnection();
            $sqlInsert = "insert into velemenyek(id, tema, velemeny, userlastname, userfirstname ,datum ) values(0, :tema, :velemeny, :userlastname, :userfirstname ,0)";
			$stmt = $connection->prepare($sqlInsert); 
            $stmt->execute(array(':tema' => $vars['tema'], ':velemeny' => $vars['velemeny'],
                    ':userlastname' => $_SESSION['userlastname'],':userfirstname' => $_SESSION['userfirstname'] ));
            
            $retData['eredmeny'] = "ERROR";
			$retData['uzenet'] = "Sikeres véleményezés";
			
			
		}
		catch (PDOException $e) {
					$retData['eredmény'] = "ERROR";
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}
		return $retData;
	}
}

?>