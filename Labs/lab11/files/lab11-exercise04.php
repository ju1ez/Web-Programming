<html>
<head>
<title>Exercise 8-4</title>
</head>
<body>
<h1>Age calculator</h1>
<?php
date_default_timezone_set('America/New_York');
$birthday = mktime(0,0,0,3,27,1995); // Using my birthday because I'm curious :) - Julia
$today = time(); // current time in seconds since 1970.
$secondsOld = $today - $birthday;

?>
<?php echo "<p>Time elapsed since " . date("M d, Y",$birthday) . ":</p>"; ?>
<ul>

   <li><?php echo $secondsOld; ?> seconds, or </li>
   <li><?php  echo round($secondsOld/(86400), PHP_ROUND_HALF_DOWN); ?> days, or </li> <!-- ~86400s in a day-->
   <li><?php  echo round($secondsOld/(86400 * 30), PHP_ROUND_HALF_DOWN);?> months, or </li> <!-- ~30 days in a month-->
   <li><?php  echo round($secondsOld/(86400 * 365), PHP_ROUND_HALF_DOWN); ?> years</li> <!-- ~365 days in a year-->
   <!-- This wouldn't take in account time variables such as leap years, etc-->
</body>
</html>
