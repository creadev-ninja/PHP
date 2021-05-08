<?php
// Fichier de test pour Xdebug pour PHP 7.4
$a = 25;
$b = "25";
$c = array(25);
$d = array('25');

var_dump($a);
var_dump($b);
var_dump($c);
var_dump($d);
// Là il va y avoir une notice pour la variable non déclaré
var_dump($var);


$e =(string) $a.$b;
// Encore une notice.
echo $var;

// un test d'erreur récursive :-)

set_time_limit(5);
function recursive_error($param){
        if(!$param) return 1;
        return $param * recursive_error($param + 1);  //au lieu de $param - 1
}
recursive_error(10);
?>