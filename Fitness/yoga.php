<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-7mQhpDl5nRA5nY9lr8F1st2NbIly/8WqhjTp+0oFxEA/QUuvlbF6M1KXezGBh3Nb" crossorigin="anonymous">
  <?php include "navbar.php" ?>
  <?php include "partials/_db.connect.php" ?>

  <?php $id2 = $_GET['pose_of']; 
        $id = $_GET['cat_id'];?>

</head>

<body>


  <!-- Poses by -->
  <div class="container">
    <div class="jumbotron jumbotron-fluid">
      <div class="container text-center my-4">
      <?php
      $sql = "SELECT * FROM `pose` WHERE `pose_id` = $id2 AND `cat_id` = $id";
      $result = mysqli_query($conn, $sql);

      while ($row = mysqli_fetch_assoc($result)) {
      echo '<h1 class="display-4">'. $row['pose_name'] .'</h1>
      <p class="lead">' . $row['pose_desc'] . '</p>';
    }
     ?>
     </div>
    </div>
  </div>
  <hr>

  <div class="container my-3 mb-5 py-5">

    <div class="row">
      <!-- Fetch all the pose_by_type -->
      <?php

      $sql = "SELECT * FROM `yoga` WHERE `pose_of` = $id2 AND `cat_id` = $id";
      $result = mysqli_query($conn, $sql);

      $result = mysqli_query($conn, $sql);
      while ($row = mysqli_fetch_assoc($result)) {
        // Use a loop to iterate through the pose_by_type
        echo '<div class="col-md-4 my-2">
              <div class="card" style="width: 25rem;">
                  <img src="img/imgYogaExercise/' . $row['yoga_name'] . '.webp" 
                      class="card-img-top" alt="...">
                  <div class="card-body">
                      <h2 class="card-title"> <b' . $row['yoga_id'] . '>' . $row['yoga_name'] . '</b></h1>
                      <a href="' . $row['yoga_link'] . '" target="_blank" class="btn btn-primary">Walkthrough on YT</a>
                  </div>
              </div>
          </div>';
      }
      ?>
    </div>
  </div>

</body>
<?php include "partials/_footer.php" ?>

</html>