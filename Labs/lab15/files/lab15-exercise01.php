<?php

echo "<pre>";
error_reporting(E_ALL);
ini_set('display_errors',1);
ini_set('error_log', 'demo_errors');

//generate warnings
$someString .= "adding to a nondefined string as a warning"; // (warning:notice)

file_get_contents("asdsasdsa.txt"); //file not existant. (warning)

nonexistant_function();//call an undefined function (fatal error)

echo "</pre>";

echo "This is a working echo statement";


?>
