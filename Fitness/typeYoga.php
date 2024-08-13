<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-7mQhpDl5nRA5nY9lr8F1st2NbIly/8WqhjTp+0oFxEA/QUuvlbF6M1KXezGBh3Nb" crossorigin="anonymous">
    <title></title>
    <?php include "navbar.php" ?>
    <?php include "partials/_db.connect.php" ?>
    <?php
        $id = $_GET['cat_id']?>
</head>

<body>

<!-- Poses by Type -->
<div class="container">
  <div class="jumbotron jumbotron-fluid">
    <div class="container text-center my-3">
     <?php
     if ($id == 1) {
      echo '<h1 class="display-4">Poses by Anatomy</h1>
      <p class="lead">Find yoga poses for specific parts of your body, from your lower back to your hamstrings and more. Plus, sequences and step-by-step pose instructions to enhance your practice.</p>';
     }
     if ($id == 2) {
      echo '
      <h1 class="display-4">Poses by Benefit</h1>
      <p class="lead">Explore yoga poses to alleviate what ails you—from anxiety to headaches, lower back pain, shoulder pain, insomnia and more. Plus, find sequences and step-by-step pose instruction to enhance your practice.</p>';
     }
     if ($id == 3) {
      echo '<h1 class="display-4">Poses by Type</h1>
      <p class="lead">Explore yoga poses by type, from arm balances to backbends, inversions, twists and more. Plus, find sequences and step-by-step pose instructions for each to enhance your practice.</p>';
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
            $sql = "SELECT * FROM `pose` WHERE `cat_id` = $id";

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
        </div>
    </div>




  </body>
  
  <?php include "partials/_footer.php" ?>
</html>

