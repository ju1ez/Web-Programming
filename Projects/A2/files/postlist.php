<?php include "pdo/postlist.pdo.php" ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Project 2 - Post List</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/myCSS.css" rel="stylesheet">
</head>
<body>
	<?php include 'nav.php'; ?>
	<div class="row">
		<div class="container">
		  <h1>Posts List</h1>
		  <hr>
		  <?php outputLinks(); ?>
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>