<?php 
require_once "pdo/config.pdo.php";
function outputTravelImage() {
   try {
      if (isset($_GET['id']) && $_GET['id'] > 0) {   
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                  
         $sql = 'SELECT * FROM traveluserdetails INNER JOIN travelpost ON traveluserdetails.UID=travelpost.UID WHERE PostID=:id';
         $id =  $_GET['id'];
         $statement = $pdo->prepare($sql);
         $statement->bindValue(':id', $id);
         $statement->execute();

         while ($row = $statement->fetch()) {
            output($row);         
         }
         $pdo = null;
      }
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}
function output($row) {
   $date = date_create($row["PostTime"]);

   echo '<h2>' . $row["Title"] . '</h2>';
   echo $row["Message"];
   echo '</div>
         <div class="col-md-2">
            <button type="button" class="btn btn-labeled btn-default">
               <span class="btn-label"><i class="glyphicon glyphicon glyphicon-heart"></i></span>
               <a href="singlelist.php" class="linkButton">Add to Favorites List</a>
            </button>
            <br /><br />
            <div class="panel-group">
                <div class="panel panel-default">
                  <div class="panel-heading">Post Details</div>
                  <div class="panel-body">
                     <p class="myBold">Date: ' . date_format($date,"M-d-y") . '</p>
                     <p class="myBold">Posted by: ' . $row["FirstName"] . ' ' .  $row["LastName"] . '</p>
                  </div>
                </div>
            </div>      
         </div>';
}
function outputImages() {
try {
      if (isset($_GET['id']) && $_GET['id'] > 0) {   
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);    
         $sql = 'SELECT * FROM travelpostimages INNER JOIN travelimage ON travelpostimages.ImageID=travelimage.ImageID INNER JOIN travelimagedetails ON travelimagedetails.ImageID=travelimage.ImageID WHERE PostID=' . $_GET['id'];
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            outputImage($row);         
         }
         $pdo = null;
      }
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}
function outputImage($row) {
   echo '<div class="col-md-4">
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