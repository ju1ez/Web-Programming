<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">Project 2</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.php">Home</a></li>
      <li><a href="about.php">About Us</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pages<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="postlist.php">Post List</a></li>
          <li><a href="singlepost.php?id=1">Single Post</a></li>
          <li><a href="travelimage.php?id=1">Single Work</a></li>
          <li><a href="search.php?query=bow">Search</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-right" action="search.php" method="get">
      <div class="form-group">
        <span class="mySpan">Julia Endress </span><input type="text" name="query" class="form-control" placeholder="Search Posts...">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>