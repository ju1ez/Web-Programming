<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>Exercise 12-3 Sorting Arrays</title>   
   
   <!-- Latest compiled and minified Bootstrap Core CSS -->
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<header>
</header>

 <div class="container theme-showcase" role="main">  
      <div class="jumbotron">
        <h1>Division Leaderboard</h1>
	<p>Sports League</p>
      </div>



<table class="table table-striped"> 
<?php
$players = array(
	array("Player"=>"Jhan Belig", "Score"=> 189),
    array("Player"=>"Yemenev Baltroy", "Score"=> 367),
    array("Player"=>"Ilroy Malvi", "Score"=> 210),
    array("Player"=>"James John" , "Score"=> 121),
    array("Player"=>"Walton Ling" , "Score"=> 368),
    array("Player"=>"Mitch Moore" , "Score"=> 382),
    array("Player"=>"Urslaw Whig" , "Score"=>422),
    array("Player"=>"Leo M. Toalde" , "Score"=> 192),
    array("Player"=>"Richard Bee" , "Score"=> 281),
    array("Player"=>"Travis Wise" , "Score"=>182));
//echo "<pre>";
asort($players);
$players =array_reverse($players);
//print_r($players);
//echo "</pre>";

echo "<table class='table table-striped'>";
echo "<tr><th>Player</th><th>Score</th></tr>";
foreach($players as $player) {
    echo "<tr> <td>$player[Player]</td> <td>$player[Score]</td> </tr>";
}
echo "</table>";
?>
</div>
</table>
 </div>
</body>
</html>
