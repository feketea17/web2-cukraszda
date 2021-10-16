<?php

session_start();
if(! isset($_SESSION['userid'])) $_SESSION['userid'] = 0;
if(! isset($_SESSION['userfirstname'])) $_SESSION['userfirstname'] = "";
if(! isset($_SESSION['userlastname'])) $_SESSION['userlastname'] = "";
if(! isset($_SESSION['userlevel'])) $_SESSION['userlevel'] = "1__";

include(SERVER_ROOT . 'includes/database.inc.php');
include(SERVER_ROOT . 'includes/menu.inc.php');

// Felbontjuk a param�tereket. Az & elv�laszt� jellel v�gzett felbont�s
// megfelel� lesz, els� eleme a megtekinteni k�v�nt oldal neve.

$page = "nyitolap";
$subpage = "";
$vars = array();

$request = $_SERVER['QUERY_STRING'];

if($request != "")
{
	$params = explode('/', $request);
	$page = array_shift($params); // a k�rt oldal neve
	
	if(array_key_exists($page, Menu::$menu) && count($params)>0) // Az oldal egy men�pont oldala �s van m�g adat az url-ben
	{
		$subpage = array_shift($params); // a k�rt aloldal
		if(! (array_key_exists($subpage, Menu::$menu) && Menu::$menu[$subpage][1] == $page)) // ha nem egy alolal
		{
			$vars[] = $subpage; // akkor ez egy parameter
			$subpage = ""; // �s nincs aloldal
		}
		
	}
	$vars += $_POST;
	
	foreach($params as $p) // a param�terek t�mbje felt�lt�se
	{
		$vars[] = $p;
	}
}

// Meghat�rozzuk a k�rt oldalhoz tartoz� vez�rl�t. Ha megtal�ltuk
// a f�jlt �s a hozz� tartoz� vez�rl� oldalt is, akkor bet�ltj�k az
// el�bbiekben lek�rdezett param�tereket tov�bbadva. 

$controllerfile = $page.($subpage != "" ? "_".$subpage : "");
$target = SERVER_ROOT.'controllers/'.$controllerfile.'.php';
if(! file_exists($target))
{
	$controllerfile = "error404";
	$target = SERVER_ROOT.'controllers/error404.php';
}

include_once($target);
$class = ucfirst($controllerfile).'_Controller';
if(class_exists($class))
	{ $controller = new $class; }
else
	{ die('class does not exists!'); }

$controller->main($vars);

// __autoload f�ggv�ny, amely ismeretlen oszt�ly h�v�sokkor,
// megpr�b�lja automatikusan bet�lteni a megfelel� f�jlt. 
// A modellekhez haszn�ljuk, egys�gesen nevezz�k el f�jljainkat
// (oszt�ly nev�vel megegyez�, csupa kisbet�s .php)

function __autoload($className)
{
	$file = SERVER_ROOT.'models/'.strtolower($className).'.php';
	if(file_exists($file))
	{ include_once($file); }
	else
	{ die("File '$file' containing class '$className' not found."); }
}

?>