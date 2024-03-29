<?php
/*
 Outputs the relevant bootstrap markup to display the weather forcast 
 for a single day
*/
function outputForecast($day,$high,$low) {
   echo '<div class="panel panel-default col-lg-3 col-md-3 col-sm-6">';
   echo '<div class="panel-heading">';
   echo '<h3 class="panel-title">' . $day . '</h3>';
   echo '</div>';
   echo '<div class="panel-body">';
   echo '<table class="table table-hover">';
   echo '<tr><td>High:</td><td>' . $high . '</td></tr>';
   echo '<tr><td>Low:</td><td>' . $low . '</td></tr>';
   echo '</table>';
   echo '</div>';
   echo '</div>';
}
?>

<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>Exercise 12-9 Processing file uploads</title>   
   
   <!-- Latest compiled and minified Bootstrap Core CSS -->
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<header>
<h1>File access in PHP</h1>
</header>

<div class='container'>
<?php 
error_reporting(0);
//start by echoing the data in the file
$fileContents = file_get_contents("datafile.txt");
$daysOfWeek = explode("\n",$fileContents);
foreach($daysOfWeek as $day) {
   $elements = explode(",",$day);
  // echo $elements[0] . ' ' . $elements[1] . ' ' . $elements[2] . 'High: ' . $elements[3] . 'Low: ' . $elements[4] . '<br>'; 
   echo '<div class="panel panel-default col-lg-3 col-md-3 col-sm-6">';
   echo '<div class="panel-heading">';
   echo '<h3 class="panel-title">' . $elements[0] . ' ' . $elements[1] . ', ' . $elements[2] . '</h3>';
   echo '</div>';
   echo '<div class="panel-body">';
   echo '<table class="table table-hover">';
   echo '<tr><td>High:</td><td>' . $elements[3] . '</td></tr>';
   echo '<tr><td>Low:</td><td>' . $elements[4] . '</td></tr>';
   echo '</table>';
   echo '</div>';
   echo '</div>';
}

?>
</div>


</body>
</html>
