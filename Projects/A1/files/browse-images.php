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
    <title>Browse</title>
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
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <div class="navbar-header">
                  <div class="nav_items">
                    <p class="navbar-text"><a href="index.php">Home  </a> /</p>
                    <p class="navbar-text"><a href="#">Favorites  </a>/</p>
                    <p class="navbar-text"><a id="my_active" href="browse-images.php">Images</a></p>
                  </div>
                </div>
              </div>
            </nav>
        </div>
          <div class="col-md-9">
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <div class="navbar-header">
                  <div class="nav_items">
                  	<div class="btn-group">
						<p>
           					<div class="container">
								<div class="btn-group">
							    <button type="button" class="btn btn-default">Filter by City</button>
							    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							      <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu">
							      <li><a href="#">Fira</a></li>
							      <li><a href="#">Athens</a></li>
							      <li><a href="#">Tablet</a></li>
							      <li><a href="#">Cape Coast</a></li>
							      <li><a href="#">Accra</a></li>
							      <li><a href="#">Oxford</a></li>
							      <li><a href="#">London</a></li>
							      <li><a href="#">Lewes</a></li>
							      <li><a href="#">Battle</a></li>
							      <li><a href="#">Koeln</a></li>
							      <li><a href="#">Frankfurt am Main</a></li>
							      <li><a href="#">Darmstadt</a></li>
							      <li><a href="#">Berlin</a></li>
							      <li><a href="#">Budapest</a></li>
							      <li><a href="#">Madrid</a></li>
							      <li><a href="#">Verona</a></li>
							      <li><a href="#">Venezia</a></li>
							      <li><a href="#">Smartphone</a></li>
							      <li><a href="#">Berlin</a></li>
							      <li><a href="#">Roma</a></li>
							      <li><a href="#">Pisa</a></li>
							      <li><a href="#">Padova</a></li>
							      <li><a href="#">Berlin</a></li>
							      <li><a href="#">Montepulciano</a></li>
							      <li><a href="#">Berlin</a></li>
							      <li><a href="#">Milano</a></li>
							      <li><a href="#">Lucca</a></li>
							      <li><a href="#">Firenze</a></li>
							      <li><a href="#">Nassau</a></li>
							      <li><a href="#">Orlando</a></li>
							      <li><a href="#">Lunenburg</a></li>
							      <li><a href="#">New York City</a></li>
							      <li><a href="#">Banff</a></li>
							      <li><a href="#">Calgary</a></li>							      							   
							    </ul>
							  </div>
							  <div class="btn-group">
							    <button type="button" class="btn btn-info">Filter by Country</button>
							    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
							      <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu">
							      <li><a href="#">Bahamas</a></li>
							      <li><a href="#">Canada</a></li>
							      <li><a href="#">Germany</a></li>
							      <li><a href="#">Ghana</a></li>
							      <li><a href="#">Greece</a></li>
							      <li><a href="#">Hungary</a></li>
							      <li><a href="#">Oceania</a></li>
							      <li><a href="#">Italy</a></li>
							      <li><a href="#">Spain</a></li>
							      <li><a href="#">United Kingdom</a></li>
							      <li><a href="#">United States</a></li>
							    </ul>
							  </div>
							  <div class="btn-group">
							    <button type="button" class="btn btn-primary">Filter by Continent</button>
							    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
							      <span class="caret"></span>
							    </button>
							    <ul class="dropdown-menu" role="menu">
							      <li><a href="#">Africa</a></li>
							      <li><a href="#">Asia</a></li>
							      <li><a href="#">Europe</a></li>
							      <li><a href="#">North America</a></li>
							      <li><a href="#">Oceania</a></li>
							      <li><a href="#">South America</a></li>
							    </ul>
							  </div>
							</div>
                    	</p>
                  	</div> 
                  </div>                      
                </div>
            </div>
          </nav>
        </div>
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/6592902825.jpg"><img class="img-responsive" src="images/medium/6592902825.jpg" title="Edworthy Park" alt="Edworthy Park"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6592914823.jpg"><img class="img-responsive" src="images/medium/6592914823.jpg" title="Calgary Downtown" alt="Calgary Downtown"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6592317633.jpg"><img class="img-responsive" src="images/medium/6592317633.jpg" title="Grace Presbyterian Church" alt="Grace Presbyterian Church"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6592294487.jpg"><img class="img-responsive" src="images/medium/6592294487.jpg" title="Along the Bow River" alt="Along the Bow River"></a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/6114904363.jpg"><img class="img-responsive" src="images/medium/6114904363.jpg" title="Ascending Sulpher Mountain" alt="Ascending Sulpher Mountain"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6114907897.jpg"><img class="img-responsive" src="images/medium/6114907897.jpg" title="At top of Sulpher Mountain" alt="At top of Sulpher Mountain"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5856697109.jpg"><img class="img-responsive" src="images/medium/5856697109.jpg" title="Lunenburg Port" alt="Lunenburg Port"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5856658791.jpg"><img class="img-responsive" src="images/medium/5856658791.jpg" title="Central United Church" alt="Central United Church"></a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/6596048341.jpg"><img class="img-responsive" src="images/medium/6596048341.jpg" title="Central Park" alt="Central Park"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6596046267.jpg"><img class="img-responsive" src="images/medium/6596046267.jpg" title="Rockefeller Center" alt="Rockefeller Center"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5855174537.jpg"><img class="img-responsive" src="images/medium/5855174537.jpg" title="Albert Hall" alt="Albert Hall"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5855735700.jpg"><img class="img-responsive" src="images/medium/5855735700.jpg" title="Emirates Stadium" alt="Emirates Stadium"></a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/5855191275.jpg"><img class="img-responsive" src="images/medium/5855191275.jpg" title="Westminister Abbey" alt="Westminister Abbey"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5855752464.jpg"><img class="img-responsive" src="images/medium/5855752464.jpg" title="Westminister Abbey" alt="Westminister Abbey"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5855729828.jpg"><img class="img-responsive" src="images/medium/5855729828.jpg" title="British Museum" alt="British Museum"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/5855774224.jpg"><img class="img-responsive" src="images/medium/5855774224.jpg" title="Castle at Battle" alt="Castle at Battle"></a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/5855221959.jpg"><img class="img-responsive" src="images/medium/5855221959.jpg" title="Lewes Castle" alt="Lewes Castle"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6114850721.jpg"><img class="img-responsive" src="images/medium/6114850721.jpg" title="View of Cologne" alt="View of Cologne"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6114859969.jpg"><img class="img-responsive" src="images/medium/6114859969.jpg" title="Prinz-Georg Garten" alt="Prinz-Georg Garten"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6114960821.jpg"><img class="img-responsive" src="images/medium/6114960821.jpg" title="Downtown Frankfurt" alt="Downtown Frankfurt"></a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="img-thumbnail">
                  <a href="images/medium/6114881215.jpg"><img class="img-responsive" src="images/medium/6114881215.jpg" title="Brandenburg Gate" alt="Brandenburg Gate"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6115603234.jpg"><img class="img-responsive" src="images/medium/6115603234.jpg" title="Outside the Berliner Dom" alt="Outside the Berliner Dom"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6114867983.jpg"><img class="img-responsive" src="images/medium/6114867983.jpg" title="New National Gallery" alt="New National Gallery"></a>
                </div>
              </div>
              <div class="col-md-3"> 
                <div class="img-thumbnail">
                  <a href="images/medium/6115548152.jpg"><img class="img-responsive" src="images/medium/6115548152.jpg" title="Checkpoint Charlie" alt="Checkpoint Charlie"></a>
                </div>
              </div>
            </div>
          </div>   
        </div>
    </main>
    <footer>
    </footer>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
  </body>
</html>