<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>  
    <link rel="stylesheet" href="css/bootstrap-theme.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/myCSS.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </head>
  <body>
    <header>
        <nav class="navbar navbar-default ">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php">CS44106 | Assignment One</a>
                </div>
            </div>
        </nav>
    </header>
    <main class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="carousel slide" data-interval="3000" data-ride="carousel" id="myCarousel">
                      <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                        <li data-slide-to="1" data-target="#myCarousel"></li>
                        <li data-slide-to="2" data-target="#myCarousel"></li>
                        <li data-slide-to="3" data-target="#myCarousel"></li>
                        <li data-slide-to="4" data-target="#myCarousel"></li>
                        <li data-slide-to="5" data-target="#myCarousel"></li>
                      </ol>
                    <div class="carousel-inner">
                        <div class="active item">
                        <img alt="First Slide" src="images/index/1.jpg">
                            <div class="carousel-caption">
                                <h3>Index</h3>
                                <p class ="myLink"><a href="index.php" >Click here to be directed to the homepage!</a></p>
                            </div>
                        </div>
                        <div class="item">
                        <img alt="Second Slide" src="images/index/2.jpg">
                            <div class="carousel-caption">
                                <h3>About</h3>
                                <p class ="myLink"><a href="about.php" >Click here to be directed to the about page!</a></p>
                            </div>
                        </div>
                        <div class="item">
                        <img alt="Second Slide" src="images/index/3.jpg">
                            <div class="carousel-caption">
                                <h3>Travel</h3>
                                <p class ="myLink"><a href="travel-image.php?id=1" >Click here to learn more about the destinations!</a></p>
                            </div>
                        </div>
                        <div class="item">
                        <img alt="Second Slide" src="images/index/4.jpg">
                            <div class="carousel-caption">
                                <h3>Browse</h3>
                                <p class ="myLink"><a href="browse-images.php" >Click here to browse images!</a></p>
                            </div>
                        </div>
                        <div class="item">
                        <img alt="Second Slide" src="images/index/5.jpg">
                            <div class="carousel-caption">
                                <h3>Countries</h3>
                                <p class ="myLink"><a href="country.php" >Click here to discover the Countries!</a></p>
                            </div>
                        </div>
                        <div class="item">
                        <img alt="Second Slide" src="images/index/6.jpg">
                            <div class="carousel-caption">
                                <h3>Upload</h3>
                                <p class ="myLink"><a href="upload_center.php" >Click here to go to the Upload Center!</a></p>
                            </div>
                        </div>
                    </div>
                        <a class="carousel-control left" data-slide="prev" href="#myCarousel"><span class="glyphicon glyphicon-chevron-left"></span></a> 
                        <a class="carousel-control right" data-slide="next" href="#myCarousel"><span class="glyphicon glyphicon-chevron-right"></span></a>
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