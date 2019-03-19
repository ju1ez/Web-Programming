<?php include "pdo/singlepost.pdo.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Project 2 - Single Post</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/myCSS.css" rel="stylesheet">
</head>
<body>
<?php include 'nav.php'; ?>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-6">
				 <?php outputTravelImage(); ?>
			</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h3>Travel Images for this post</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<?php outputImages(); ?>
			</div>
		</div>
	</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>