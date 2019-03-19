    <?php
        include 'travel-data.php';
        asort($countries);
        asort($continents);
        $defaultId = 2;
        // first find out which image was requested
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
        if (! array_key_exists($id, $images)) {
            $id = $defaultId; }
        }
        else {
            $id = $defaultId; }

        $requested = $images[$id];     
    ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Travel</title>
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
                    <p class="navbar-text"><a href="#">Home  </a> /</p>
                    <p class="navbar-text"><a href="#">Favorites  </a>/</p>
                    <p class="navbar-text"><a href="#"><?php echo $requested['title']; ?></a></p>
                  </div>
                </div>
              </div>
            </nav>
        </div>
        </div>
          <div class="row">
            <div class="col-md-8">
              <h2>
                <?php echo $requested['title']; ?>
              </h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-8">
              <img class="img-responsive" src="images/medium/<?php echo $requested['path']; ?>" alt="<?php echo $requested['title']; ?>">
            </div>
            <div class="col-md-4">
              <div class="panel panel-info">
                <div class="panel-body">
                  <ul class="details-list">
                    <li>By: 
                      <a href="#">
                        <?php echo $requested['user']; ?>
                      </a>
                    </li>
                    <li>Taken in: 
                      <a href="#">
                        <?php echo $requested['country']; ?>
                      </a>
                    </li>
                    <li>City: 
                        <?php echo $requested['description']; ?>
                    </li>
                  </ul>
                </div>
              </div>
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