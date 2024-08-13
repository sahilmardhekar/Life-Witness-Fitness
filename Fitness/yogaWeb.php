<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-7mQhpDl5nRA5nY9lr8F1st2NbIly/8WqhjTp+0oFxEA/QUuvlbF6M1KXezGBh3Nb" crossorigin="anonymous">
  <title></title>
  <?php include "partials/_db.connect.php" ?>
  <?php include "navbar.php" ?>
</head>

<body>
  <div class="container">
    <div class="jumbotron jumbotron-fluid">
      <div class="container text-center my-3">
        <h1 class="display-4">YOGA POSES</h1>
        <p class="lead">Browse our extensive yoga pose library, with a vast collection of everything from basic to advanced poses, seated and standing poses, twists, challenge poses, and bandha techniques.</p>
      </div>
    </div>
  </div>
  <hr>


  <!-- Poses by Anatomy -->
  <div class="container my-3 mb-5 py-5">
    <div class="row">
      <h2 class="text-center">Poses by Anatomy</h2>
      <?php
      $sql = "SELECT * FROM `pose` WHERE `cat_id` = 1 LIMIT 3";

      $result = mysqli_query($conn, $sql);
      while ($row = mysqli_fetch_assoc($result)) {
        // Use a loop to iterate through the pose_by_type
        echo '<div class="col-md-4 my-2">
              <div class="card" style="width: 25rem;">
                  <img src="img/img_yoga/' . $row['serial_no'] . '.webp" 
                      class="card-img-top" alt="...">
                  <div class="card-body">
                      <h2 class="card-title"> <b' . $row['pose_id'] . '>' . $row['pose_name'] . '</b></h1>
                      <p class="card-text">' . substr($row['pose_desc'], 0, 120) . '...</p>
                      <a href="yoga.php?cat_id=' . $row['cat_id'] . '&&pose_of=' . $row['pose_id'] . '" class="btn btn-primary">View Related Yoga</a>
                  </div>
              </div>
          </div>';
      }
      ?>
      <div class="container py-4">
        <div class="d-grid gap-2 col-4 mx-auto">
          <a href="typeYoga.php?cat_id= 1 " class="btn btn-secondary" type="button">
            <h5>Browse all Poses by Anatomy</h5>
          </a>
        </div>
      </div>
    </div>

    <hr>

    <!-- Poses by Benefit -->
    <div class="container my-3 mb-5 py-5">
      <div class="row">
        <h2 class="text-center">Poses by Benefit</h2>
        <?php
        $sql = "SELECT * FROM `pose` WHERE `cat_id` = 2 LIMIT 3";

        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
          // Use a loop to iterate through the pose_by_type
          echo '<div class="col-md-4 my-2">
              <div class="card" style="width: 25rem;">
                  <img src="img/img_yoga/' . $row['serial_no'] . '.webp" 
                      class="card-img-top" alt="...">
                  <div class="card-body">
                      <h2 class="card-title"> <b' . $row['pose_id'] . '>' . $row['pose_name'] . '</b></h1>
                      <p class="card-text">' . substr($row['pose_desc'], 0, 120) . '...</p>
                      <a href="yoga.php?cat_id=' . $row['cat_id'] . '&&pose_of=' . $row['pose_id'] . '" class="btn btn-primary">View Related Yoga</a>
                  </div>
              </div>
          </div>';
        }
        ?>
        <div class="container py-4">
          <div class="d-grid gap-2 col-4 mx-auto">
            <a href="typeYoga.php?cat_id= 2 " class="btn btn-secondary" type="button">
              <h5>Browse all Poses by Benefit</h5>
            </a>
          </div>
        </div>
      </div>

      <hr>

      <!-- Poses by Type -->
      <div class="container my-3 mb-5 py-5">
        <div class="row">
          <h2 class="text-center">Pose by Type</h2>
          <?php

          $sql = "SELECT * FROM `pose` WHERE `cat_id` = 3 LIMIT 3";

          $result = mysqli_query($conn, $sql);
          while ($row = mysqli_fetch_assoc($result)) {
            echo '<div class="col-md-4 my-2">
              <div class="card" style="width: 25rem;">
                  <img src="img/img_yoga/' . $row['serial_no'] . '.webp" 
                      class="card-img-top" alt="...">
                  <div class="card-body">
                      <h2 class="card-title"> <b' . $row['pose_id'] . '>' . $row['pose_name'] . '</b></h1>
                      <p class="card-text">' . substr($row['pose_desc'], 0, 120) . '...</p>
                      <a href="yoga.php?cat_id=' . $row['cat_id'] . '&&pose_of=' . $row['pose_id'] . '" class="btn btn-primary">View Related Yoga</a>
                  </div>
              </div>
          </div>';
          }
          ?>
          <div class="container py-4">
            <div class="d-grid gap-2 col-4 mx-auto">
              <a href="typeYoga.php?cat_id= 3 " class="btn btn-secondary" type="button">
                <h5>Browse all Poses by Type</h5>
              </a>
            </div>
          </div>
          <hr>
        </div>
      </div>
    </div>
  </div>
    <?php include "partials/_footer.php" ?>
</body>

</html>