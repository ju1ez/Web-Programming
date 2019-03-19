<aside class="col-md-3">
  <div class="panel panel-default">
    <div class="panel-heading">Search</div>
    <div class="panel-body">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">
          <span class="glyphicon glyphicon-search" aria-hidden="true">
          </span>
        </button>
      </span>
    </div>
  </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">Continents
    </div>
      <ul class="list-group">
        <?php
          foreach ($continents as $c) {
          echo '<li class="list-group-item"><a href="#">';
          echo $c;
          echo '</a></li>';
          }
          ?>
      </ul>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">Countries
    </div>
      <ul class="list-group">
      <?php
/* $keys = array_keys($countries);
for($i=0; $i<count($countries); $i++) {
echo '<li class="list-group-item"><a href="#">';
echo $countries["BS"]["Country Name"];
echo '</a></li>';
} */
        foreach ($countries as $c) {
        echo '<li class="list-group-item"><a href="#">';
        echo $c;
        echo '</a></li>';
        }
      ?>
    </ul>
  </div>
</aside>