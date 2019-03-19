<?php
require_once "config.pdo.php";
function outputLinks() {
   try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $sql = "SELECT * FROM travelpost ORDER BY Title";
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            echo '<a href=singlepost' . '?id=' . $row['PostID']  . '>' . $row['Title'] . '</a> <br />';
         }
         $pdo = null;
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}
?>