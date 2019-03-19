<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>Exercise 13-1 Creating Classes</title>   
   
   <!-- Latest compiled and minified Bootstrap Core CSS -->
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<header>
<h1>Weather forecast using classes</h1>
</header>

<div class='container'>
<?php 

ini_set("display_errors",1);
date_default_timezone_set('GMT');
   
include_once("Forecast.class.php");

$today = time();
$d2 = "1549497600";
$d3 = "1549584000";
$d4 ="1549471206";
$d5 ="1549670400";
$d6 ="1549756800";
$d7 ="1549843200";


$dayOne  = new Forecast (date("d M, Y", $today),53,42,"Rain");
$dayTwo  = new Forecast (date("d M, Y", $d2),61,26,"Rain");
$dayThree  = new Forecast (date("d M, Y", $d3),29,16,"Overcast");
$dayFour  = new Forecast (date("d M, Y", $d4),37,27,"Partly Sunny");
$dayFive  = new Forecast (date("d M, Y", $d5),35,29,"Snow");
$daySix  = new Forecast (date("d M, Y", $d6),40,28,"Overcast");
$daySeven  = new Forecast (date("d M, Y", $d7),32,24,"Moderate Snow");

echo $dayOne;
echo $dayTwo;
echo $dayThree;
echo $dayFour;
echo $dayFive;
echo $daySix;
echo $daySeven;


?>
</div>

<footer>
  <h3>Record High: <?php echo Forecast::$allTimeHigh; ?></h3>
  <h3>Record Low: <?php echo Forecast::$allTimeLow; ?></h3>
</footer>

</body>
</html>
