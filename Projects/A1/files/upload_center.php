<?php
  include 'travel-data.php';
    function getFileUploadForm(){
       return '<form class="form-horizontal" enctype="multipart/form-data" method="post">
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="title">Title</label>
                    <input type="text" name="title" id="title" />
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="title">Description</label>
                    <input type="Description" name="Description" id="title" />
                  </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="file1">File(s):</label>
                    <input type="file" name="file1[]" id="file1" multiple/>
                  </div>
                  <div class="form-group"> 
                    <div class="col-sm-offset-12">
                      <button style="float: right; margin-right: 5px;" type="reset" class="btn btn-info">Clear</button>
                      <button type="submit" class="btn btn-info">Submit</button>
                  </div>
                </form>';
    }
      function moveFile($fileToMove, $destination, $fileType) {
         $validExt = array("jpg", "png");
         $validMime = array("image/jpeg","image/png");
         $title = $_REQUEST['title'];
         $description = $_REQUEST['Description'];
         // make an array of two elements, first=filename before extension, 
         // and the second=extension
         $components = explode(".", $destination);
         // retrieve just the end component (i.e., the extension)
         $extension = end($components);
         // check to see if file type is a valid one
         if (in_array($fileType,$validMime) && in_array($extension, $validExt)) {
            echo "<span class='myBold'>" . $destination . "</span> was uploaded successfully!<br/><br />";
            echo "Title: <span class='myBold'>" . $title . "</span><br />";
            echo "Description: <span class='myBold'>" . $description . "</span><br />";
            move_uploaded_file($fileToMove, "user-uploads/" . $destination) or die("error");
         }
         else
            echo 'Invalid file type=' . $fileType . '  Extension=' . $extension .
                 '<br/>';
      }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Upload Center</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/myCSS.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </head>
  <body>
    <?php include 'header.php'; ?>
    <main class="container">
      <div class="row">
        <?php include 'left-panel.php'; ?>
        <div class="col-md-9">
        <div class="row">
            <div class="col-md-12">
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <div class="navbar-header">
                    <div class="nav_items">
                      <p class="navbar-text"><a href="index.php">Home  </a> /</p>
                      <p class="navbar-text"><a href="#">User  </a>/</p>
                      <p class="navbar-text"><a href="upload_center.php">Upload Center</a></p>
                  </div>
                </div>
              </div>
            </nav>
        </div>
        </div>
      <div class="row">
        <div class="col-md-9">
            <h2>Upload your images here!</h2>
              <?php 
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                 // check if user uploaded multiple files
                 if (is_array($_FILES["file1"]["error"])) {
                    $count=0;
                    foreach ($_FILES["file1"]["error"]  as $error) {
                       if ($error == UPLOAD_ERR_OK) {            
                          $clientName = $_FILES["file1"]["name"][$count];
                          $serverName = $_FILES["file1"]["tmp_name"][$count];
                          $fileType = $_FILES["file1"]["type"][$count];
                          moveFile($serverName, $clientName, $fileType);
                          $count++;
                       }
                    }
                 }
                 else {
                    // user only uploaded a single file
                    if ($_FILES["file1"]["error"] == UPLOAD_ERR_OK) {
                       $clientName = $_FILES["file1"]["name"];
                       $serverName = $_FILES["file1"]["tmp_name"];
                       $fileType = $_FILES["file1"]["type"];
                       moveFile($serverName, $clientName, $fileType);
                    }
                 }
              }
              else {
                 echo getFileUploadForm();
              }              
          ?>
            </div>
          </div>
        </div>  
      </div>
    </main>
    <footer>
    </footer>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous">
    </script>
  </body>
</html>
