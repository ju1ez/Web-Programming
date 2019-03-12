<?php
require_once "config.pdo.php";
function search() {
   try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $search = $_GET['query']; 
         $sql = "SELECT * FROM travelpostimages tp INNER JOIN travelimage ti ON tp.ImageID=ti.ImageID INNER JOIN travelimagerating ir ON ir.ImageID=ti.ImageID INNER JOIN travelimagedetails td ON td.ImageID=ti.ImageID INNER JOIN traveluserdetails tu ON tu.UID=ti.UID INNER JOIN travelimagelocations ttd ON ttd.ImageID=ti.ImageID WHERE (`Description` LIKE '%".$search."%') OR (`FirstName` LIKE '%".$search."%') OR (`LastName` LIKE '%".$search."%')";
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            output($row);
            
         }
         $pdo = null;
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}
function output($row) {
   echo '<div class="col-md-3">
   <p><h3>'. $row['Title']. '</h3>' .$row['Description']. '</p>
   <div class="panel panel-default">
   <div class="panel-body">
   <a href="images/' . $row['Path'] . '"><img class="img-thumbnail" src="images/' . $row['Path'] . '"></a>
   <a href="images/' . $row['Path'] . '"><p style = "margin: 2pt;" class="text-center">' . $row['Title'] . '</p></a>
   <p class="text-center"><button type="button" class="btn btn-labeled btn-primary btn-sm">
               <span class="btn-label"><i class="glyphicon glyphicon glyphicon-info-sign"></i></span>
               <a href="#" class="myAnchor">View</a>
   </button>
   <button type="button" class="btn btn-labeled btn-success btn-sm">
               <span class="btn-label"><i class="glyphicon glyphicon glyphicon-heart"></i></span>
               <a href="#" class="myAnchor">Favorite</a>
   </button></p>
   </div></div></div>';
}
?>