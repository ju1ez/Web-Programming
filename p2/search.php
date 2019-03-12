<!DOCTYPE html>

<?php include "pdo/search.pdo.php"; ?>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Project 2 - Search</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/myCSS.css" rel="stylesheet">
</head>
<body>
	<?php include 'nav.php'; ?>
	<div class="container-fluid">
		<div class="row" id="myRow">
			<div class="col-md-12">
                <?php search(); ?>
			</div>
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>