<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Project 2 - Home</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/myCSS.css" rel="stylesheet">
</head>
<body>
	<?php include 'nav.php'; ?>
	<div class="row">
		<div class="container-fluid">
		  <div class="jumbotron">
		    <h1>Welcome to Project 2</h1> 
		    <p>This is the second project for <span class="myBold">Julia Endress</span> for CS44106</p> 
		  </div>
		</div>
	</div>
	<div class="container-fluid" id="myLinks">
		<div class="row" id="myRow">
			<div class="col-md-2">
				<h4><span class="glyphicon glyphicon-info-sign"></span> About Us</h4>
				<p>What this is about and stuff</p>
				<a href="about.php" class="linkButton"><button type="button" class="btn btn-labeled btn-default"><span class="btn-label"><i class="glyphicon glyphicon glyphicon-link"></i></span>Visit</button></a>
			</div>
			<div class="col-md-2">
				<h4><span class="glyphicon glyphicon-list"></span> Post List</h4>
				<p>Displays a list or posts as links</p>
				<a href="postlist.php" class="linkButton"><button type="button" class="btn btn-labeled btn-default"><span class="btn-label"><i class="glyphicon glyphicon glyphicon-link"></i></span>Visit</button></a>
			</div>
			<div class="col-md-2">
				<h4><span class="glyphicon glyphicon-user"></span> Single Post</h4>
				<p>Displays information for a single post</p>
				<a href="singlepost.php?id=1" class="linkButton"><button type="button" class="btn btn-labeled btn-default"><span class="btn-label"><i class="glyphicon glyphicon glyphicon-link"></i></span>Visit</button></a>
			</div>
			<div class="col-md-3">
				<h4><span class="glyphicon glyphicon-picture"></span> Single Travel Image</h4>
				<p>Displays information for a single travel image</p>
				<a href="travelimage.php?id=1" class="linkButton"><button type="button" class="btn btn-labeled btn-default"><span class="btn-label"><i class="glyphicon glyphicon glyphicon-link"></i></span>Visit</button></a>
			</div>
			<div class="col-md-2">
				<h4><span class="glyphicon glyphicon-search"></span> Search</h4>
				<p>Perform search on posts</p>
				<a href="search.php?query=rome" class="linkButton"><button type="button" class="btn btn-labeled btn-default"><span class="btn-label"><i class="glyphicon glyphicon glyphicon-link"></i></span>Visit</button></a>
			</div>
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>