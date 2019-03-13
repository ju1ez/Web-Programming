<?php
require_once "config.pdo.php";
function searchHeader() {
  $newURL = "error.php";
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $search = $_GET['query'];   
         if (empty($search)) {       
            header('Location: '. $newURL);        
          } else {
         output1($search);  
      }
         $pdo = null;
  
}
function output1($search) {
   echo '<div class="col-md-12">
   <p>
      <h2>Search Results for "' . $search .'"</h2>
      <hr>
   </div>';
}
function search() {
   try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $search = $_GET['query']; 
         $sql = "SELECT DISTINCT tid.ImageID, tp.Title, tp.Message, tp.PostTime, td.FirstName, td.LastName, tid.Description FROM traveluserdetails td INNER JOIN travelpost tp ON td.UID = tp.UID INNER JOIN travelimagedetails tid ON tid.ImageID = tp.PostID WHERE (`Description` LIKE '%".$search."%') OR (`FirstName` LIKE '%".$search."%') OR (`LastName` LIKE '%".$search."%') OR (`Message` LIKE '%".$search."%')";
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
   $date = date_create($row["PostTime"]);
   echo '<div class="col-md-12">
      <h3><a href="travelimage.php?id=' . $row['ImageID'] . '">' . $row['Title']. '</a></h3><h5><b>' . date_format($date,"F j Y") . '</b></h5>' . $row['Message']. '</div>';
}
?>