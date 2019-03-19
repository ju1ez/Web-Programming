<html>
<head>
<title>Exercise 8-3</title>
<style>
   img { float:left; width: 132px; }
   div { margin-left: 140px; }
   h1 { margin: 0; font-size: 1.5em;}
   h2 { margin: 0; font-size: 1.25em;}
</style>
</head>
<body>
<?php
   $thumbnail = '"./images/art/thumbs/120010.jpg"';
   $title = "Portrait of Eleanor of Toledo";
   $artist = "Agnolo Bronzino";
   $year = 1300;
   $width = "115cm x";
   $height = " 96cm";
   $medium = "Oil on Panel";
   $era = "Post Renaissance";   
      if ($year < 1530) {
         $era = "Renaissance";  
      } 
      else if ($year >= 1600) {
          $era = "Baroque";
      } 
      else if ($year < 1530) {
          $era = "International Gothic";
      } 
?> 
<?php echo "<img src=$thumbnail />"; ?>
<div>
   <?php echo "<h1>$title ($year)</h1>"; ?>
   <?php echo "<h2>$artist</h2>"; ?>
   
   <p>
      <?php echo "$width $height"; ?>
   <br/>
      <?php echo "$medium"; ?>
   <br/>
      <?php echo "$era"; ?>
   <br/>
   </p>
</div>
</body>
</html>
