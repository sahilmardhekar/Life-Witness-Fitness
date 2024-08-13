<!doctype html>
<html lang="ar" dir="">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-7mQhpDl5nRA5nY9lr8F1st2NbIly/8WqhjTp+0oFxEA/QUuvlbF6M1KXezGBh3Nb" crossorigin="anonymous">

    <title></title>
    <?php include"navbar.php"?>
</head>

<body>

    <div class="container py-5">
    <div class="row">
        <div class="col">
        <div class="card">
            <div class="card-header text-center"> BMI Calculator</div>
            <div class="card-body">
                <form class="" onsubmit="return false">
                    <div class="mb-3">
                        <label for="weight" class="form-label">Weight:</label>
                        <input type="text" class="form-control" id="weight" placeholder="Weight in Kg" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="height" class="form-label">Height:</label>
                        <input type="text" class="form-control" id="height" placeholder="Height in cm" class="form-control">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-success" onclick="getbmivalue()">Calculate</button>
                    </div>
                    <div class="card-footer mb-3">A healthy BMI ranges between 19 to 25.</div>
                </form>
            </div>
        </div>
        </div>
        <div class="col">
            <div class="container text-center">
                <div class="card">
                    <fieldset disabled>
                        <div class="mb-3">
                            <label for="bmiValue" class="form-label text-success"><h2>BMI Value:</h2></label>
                            <input type="text" class="form-control-plaintext form-control-lg text-success p-3" id="bmiValue"  class="form-control">
                        </div>
                    </fieldset>
                </div>

            </div>
            <h1 class="text-center py-3">BMI Table</h1>
                <table class="table table-bordered">
                    <tr>
                        <th>Category</th>
                        <th>BMI range - kg/m2</th>
                    </tr>
                    <tr>
                        <td>Severe Thinness</td>
                        <td>< 16</td>
                    </tr>
                    <tr>
                        <td>Moderate Thinness</td>
                        <td>16 - 17</td>
                    </tr>
                    <tr>
                        <td>Mild Thinness</td>
                        <td>17 - 18.5</td>
                    </tr>
                    <tr>
                        <td>Normal</td>
                        <td>18.5 - 25</td>
                    </tr>
                    <tr>
                        <td>Overweight</td>
                        <td>25 - 30</td>
                    </tr>
                    <tr>
                        <td>Obese Class I</td>
                        <td>30 - 35</td>
                    </tr>
                    <tr>
                        <td>Obese Class II</td>
                        <td>35 - 40</td>
                    </tr>
                    <tr>
                        <td>Obese Class III</td>
                        <td>> 40</td>
                    </tr>
                </table>
        </div>
    </div>
    </div>

    <script>
        function getbmivalue() {
            var weight = document.getElementById('weight').value;
            var height = document.getElementById('height').value;

            height = height / 100; // now height in inch
            // height = height * 0.025; // now height in meter

            var newbmivalue = weight / (height * height);

            newbmivalue = parseFloat(newbmivalue).toFixed(2);

            document.getElementById('bmiValue').value = newbmivalue;
        }
    </script>


<?php include"partials/_footer.php"?>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    -->
</body>

</html>