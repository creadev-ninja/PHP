<?php
include("_connexion-pdo.php");

$rows='';
$response = $bdd->query("SELECT * FROM `signes`");
while($datas = $response->fetch()){
	$rows .= "\t<li>".$datas['name']." - [".$datas['element']."]</li>\r\n";
}
echo "<ul>\r\n".$rows."</ul>";

$response->closeCursor(); // Termine le traitement de la requête (fetch / execute)
?>