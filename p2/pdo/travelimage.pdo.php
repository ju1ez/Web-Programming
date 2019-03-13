<?php 
require_once "pdo/config.pdo.php";
function outputImage() {
try {
      if (isset($_GET['id']) && $_GET['id'] > 0) {   
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);    
         $sql = 'SELECT * FROM travelpostimages tp INNER JOIN travelimage ti ON tp.ImageID=ti.ImageID INNER JOIN travelimagerating ir ON ir.ImageID=ti.ImageID INNER JOIN travelimagedetails td ON td.ImageID=ti.ImageID INNER JOIN traveluserdetails tu ON tu.UID=ti.UID INNER JOIN travelimagelocations ttd ON ttd.ImageID=ti.ImageID WHERE ti.ImageID=' . $_GET['id'];
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            output1($row);         
         }
         $pdo = null;
      }
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}
function output1($row) {
   echo '<div class="col-md-6">
   <h2>' . $row["Title"] . '</h2>
   <p>By: ' . $row["FirstName"] . ' ' . $row["LastName"] . '</p>
   </div></div>
   <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-6">
         <img id="myImg" src="images/' . $row['Path'] . '"alt="'. $row["Description"] .'" style="width:100%">
         <!-- The Modal -->
         <div id="myModal" class="modal">
           <span class="close">&times;</span>
           <img class="modal-content" id="img01">
           <div id="caption"></div>
         </div>
      </div>
    <div class="col-md-2">
      <button type="button" class="btn btn-labeled btn-default">
         <span class="btn-label"><i class="glyphicon glyphicon glyphicon-gift"></i></span>
         <span class="linkButton">Add to Favorites</span>
      </button>
      <br /><br />
   <div class="panel-group">
      <div class="panel panel-info">
         <div class="panel-heading">Rating</div>
            <div class="panel-body">
               <p class="rating">' . $row['Rating'] . ' [2 votes]</p>
            </div>
         </div>
      </div>
      <div class="panel-group">
      <div class="panel panel-default">
         <div class="panel-heading">Image Details</div>
            <div class="panel-body">
               <p class="myBold">Country: ' . $row['Country'] . '</p>
               <p class="myBold">City: ' . $row['City'] . '</p>
               <p class="myBold">Latitude: ' . $row['Latitude'] . ' </p>
               <p class="myBold">Longitude: ' . $row['Longitude'] . ' </p>
            </div>
         </div>
      </div>    
   </div>';
}
?>