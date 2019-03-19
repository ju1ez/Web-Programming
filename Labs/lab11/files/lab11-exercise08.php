<?php
   // function definition can go here
?>
<html>
<head>
<title>Exercise 8-8</title>
</head>
<body>
<h1>Making and using functions</h1>


<table border=1>
<tr>
  <th>milliliters</th><th>Cups</th><th>Ounces</th>
<?php
function convertUnitsOz($startVal, $startUnits, $endUnits) {
	$mlToOz = 0.033814;
	$calcOz = $startVal * $mlToOz;
	$endUnits = "oz";

   return $calcOz . $endUnits;
}
function convertUnitsCup($startVal, $startUnits, $endUnits) {

	$mlToCup = 0.00422675;
	$calcCups = $startVal * $mlToCup;
	$endUnits = "cups";

   return round($calcCups, 2) . $endUnits;
}
for($i=50;$i<=1000;$i+=50){
   echo "<tr>";
   echo "<td>$i</td>";
   // replace the ??? with the calls to convertUnits function
   echo "<td>" . round(convertUnitsCup($i,"ml","cups"), 2) . "</td>";
   echo "<td>" . round(convertUnitsOz($i,"ml","oz"), 2) . "</td>";
   echo "</tr>";
}
?>
</tr>
</table>


</body>
</html>
