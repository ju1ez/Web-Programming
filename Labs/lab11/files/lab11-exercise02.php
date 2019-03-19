<html>
<head>
<title>Exercise 8-2</title>
</head>
<body>
<h1>Regular HTML section (outside &lt;?php ... ?&gt; tags)</h1>
<p>You can type regular HTML here and it will show up</p>

<h1>PHP section (inside &lt;?php ... ?&gt; tags)</h1>
<?php
date_default_timezone_set('America/New_York');//or change to whatever timezone you want
   //this is a php comment IN tags (will not appear)
   echo "This was output using PHP";
   echo "<br>"; //notice we must echo tags in php.
   $date = date("M dS, Y h:i:s A");   
	echo "This page was generated: " . $date . "<hr/>";
	$remaining = 365 - date("z") - 0.25; 
	/*The length of a year is (more or less) 365.242196 days. So we have to subtract, more or less, a quarter of a day it it were a leap year, you could also do a function:
		function is_leap_year($year) {return ((($year % 4) == 0) && ((($year % 100) != 0) || (($year % 400) == 0)));} -Julia */
	echo "There are ". $remaining . " days left in the year";

?>
</body>
</html>