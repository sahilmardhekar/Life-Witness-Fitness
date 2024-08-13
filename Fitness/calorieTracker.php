<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <?php include "navbar.php";   ?>
    <?php include "partials/_db.connect.php";   ?>

</head>

<body>
<?php
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method =='POST') {
            $showAlert = false;
    
            // Insert the thread into the database.
            $calorie_burnt = $_POST['calorie_burnt'];

            // $sno = $_POST['serial_no '];
            $sql = "INSERT INTO `calorie_tracker` (`calorie_burnt`, `time`, `user_sno`) VALUES ('$calorie_burnt', CURRENT_TIMESTAMP(), '1')";
            $result = mysqli_query($conn, $sql);
            $showAlert = true;
            if ($showAlert) {
                
                echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!!!</strong> Your Data have been saved!!!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>';
            }
        }
        ?>



    <div class="container py-5">
        <div class="jumbotron">
            <h1 class="display-4">Track daily Calories burnt</h1>
            <p class="lead">This will track your daily calories burned in a day.</p>
            <hr class="my-4">
        </div>
        <form action="calorieTracker.php" method="post">
            <div class="mb-3">
                <label for="calorie_burnt" class="form-label"><h4>Calories burnt</h4></label>
                <input type="text" class="form-control w-50" id="calorie_burnt" name="calorie_burnt" placeholder="Enter Calories burnt">
                <p class="text-secondary">This helps us maintain your data for better recommendations.</p>
                <button type="submit" class="btn btn-success" id="submit-f" onclick="getbfivalue2()">Submit</button>
            </div>
        </form>
    </div>
    <hr>
    <div class="container py-2">
        <?php

          $id= '1';
                $sql = "SELECT * FROM `calorie_tracker` WHERE `user_sno`";
                  $result = mysqli_query($conn, $sql);
                  echo  '<table class="table">
                  <thead>
                  <tr>
                  <th scope="col">#</th>
                  <th scope="col">Date</th>
                  <th scope="col">Calorie burnt</th>
                  </tr>
                  </thead>';
                  while ($row = mysqli_fetch_assoc($result)) {
                  echo '<tbody>
                      <tr>
                        <th scope="row">'. $row['serial_no'].'</th>
                        <td>'. $row['time'].'</td>
                        <td>'. $row['calorie_burnt'].'</td>
                      </tr>
                    </tbody>';
                  }
                  echo '</table>';
        ?>
      </div>

    <!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['2004',  1222,      400],
        ]);
        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="curve_chart" style="width: 900px; height: 500px"></div> -->




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>


    <?php include "partials/_footer.php";   ?>
</body>

</html>