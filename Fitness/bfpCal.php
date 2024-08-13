<!doctype html>
<html lang="ar" dir="">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-7mQhpDl5nRA5nY9lr8F1st2NbIly/8WqhjTp+0oFxEA/QUuvlbF6M1KXezGBh3Nb" crossorigin="anonymous">

    <title></title>
    <?php include "navbar.php" ?>
</head>

<body>
    <div class="container py-5">
        <div class="row">
            <div class="col w-50 m-auto">
                <div class="card">
                    <div class="card-header text-center"> BFP Calculator</div>
                    <div class="card-body">
                        <form class="" onsubmit="return false">
                            <div>
                                <label for=""><b> Gender:</b></label><br>
                                <div class="form-check w-25 m-auto">
                                    <input class="form-check-input" type="radio" name="gender" id="gender1" value="m" checked onclick="shHip('m')">
                                    <label class="form-check-label" for="Male">
                                        Male
                                    </label>
                                </div>
                                <div class="form-check w-25 m-auto">
                                    <input class="form-check-input" type="radio" name="gender" id="gender2" value="f" onclick="shHip('f')">
                                    <label class="form-check-label" for="Female">
                                        Female
                                    </label>
                                </div>

                                <div class="mb-3">
                                    <label for="age" class="form-label">Age:</label>
                                    <input type="text" class="form-control" id="age" placeholder="Age" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="weight" class="form-label">Weight:</label>
                                    <input type="text" class="form-control" id="weight" placeholder="Weight in Kg" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="height" class="form-label">Height:</label>
                                    <input type="text" class="form-control" id="height" placeholder="Height in cm" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="neck" class="form-label">Neck:</label>
                                    <input type="text" class="form-control" id="neck" placeholder="Neck in cm" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="waist" class="form-label">Waist:</label>
                                    <input type="text" class="form-control" id="waist" placeholder="Waist in cm" class="form-control">
                                </div>
                                <div class="mb-3" id="hip-form">
                                    <label for="hip" class="form-label">Hip:</label>
                                    <input type="text" class="form-control" id="hip" placeholder="Hip in cm" class="form-control">
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-success" id="submit-m" onclick="getbfivalue1()">Calculate</button>
                                    <button type="submit" class="btn btn-success" id="submit-f" onclick="getbfivalue2()">Calculate</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="container">
                    <div class="card">
                        <div class="card-body">
                            <fieldset disabled>
                                <div class="mb-3 text-center">
                                    <label for="bfiValue" class="form-label text-success">
                                        <h2 >RESULT:</h2>
                                    </label>
                                    <input type="text" class="form-control-plaintext form-control-lg text-success p-3" id="bfiValue" class="form-control">
                                </div>
                            </fieldset>
                        </div>
                        <div class="card-footer">
                            <p class="text-center text-sm">The above value is in Percentage(%). </p>
                        </div>
                    </div>
                </div>
                <div>
                    <h1 class="text-center py-3">Body Fat Categorization</h1>
                </div>
                <table class="table table-bordered">
                    <tr>
                        <th>Description</th>
                        <th>Women</th>
                        <th>Men</th>
                    </tr>
                    <tr>
                        <td>Essential fat</td>
                        <td>10-13%</td>
                        <td>2-5%</td>
                    </tr>
                    <tr>
                        <td>Athletes</td>
                        <td>14-20%</td>
                        <td>6-13%</td>
                    </tr>
                    <tr>
                        <td>Fitness</td>
                        <td>21-24%</td>
                        <td>14-17%</td>
                    </tr>
                    <tr>
                        <td>Average</td>
                        <td>25-31%</td>
                        <td>14-24%</td>
                    </tr>
                    <tr>
                        <td>Obese</td>
                        <td>32+%</td>
                        <td>25+%</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <script>
        function shHip(shGenger) {
            if (shGenger == 'm') {
                document.getElementById("hip-form").style.display = 'none';
                document.getElementById("submit-f").style.display = 'none';
                document.getElementById("submit-m").style.display = 'block';

            } else {
                document.getElementById("hip-form").style.display = 'block';
                document.getElementById("submit-m").style.display = 'none';
                document.getElementById("submit-f").style.display = 'block';
            }
        }
        shHip("m");
    </script>

    <script>
        // For Male
        function getbfivalue1() {
            var waist = document.getElementById('waist').value;
            var neck = document.getElementById('neck').value;
            var height = document.getElementById('height').value;

            // height = height * 30.48; // now height in cm

            var wn = Math.log10(waist - neck);
            var h = Math.log10(height);
            var den = (1.0324 - (0.19077 * wn) + (0.15456 * h));
            var num_den = (495 / den);
            var newbfivalue = num_den - 450;

            newbfivalue = parseFloat(newbfivalue).toFixed(2);

            document.getElementById('bfiValue').value = newbfivalue;
        }
    </script>
    <script>
        // For Female
        function getbfivalue2() {
            var waist = document.getElementById('waist').value;
            var neck = document.getElementById('neck').value;
            var height = document.getElementById('height').value;
            var hip = document.getElementById('hip').value;

            // height = height * 30.48; // now height in cm

            var w = Math.log10(waist);
            var n = Math.log10(neck);
            var h = Math.log10(height);
            var hp = Math.log10(hip);

            var whpn = (w + hp - n);
            // var whpn = Math.log10(waist + hip - neck);
            // var whpn = (waist + hip - neck);
            // var log_whpn = Math.log10(whpn);

            var den = (1.29579 - (0.35004 * whpn) + (0.22100 * h));
            var num_den = (495 / den);
            var newbfivalue = (num_den - 450) / den;

            newbfivalue = parseFloat(newbfivalue).toFixed(2);

            document.getElementById('bfiValue').value = newbfivalue;
        }
    </script>



    <?php include "partials/_footer.php" ?>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    -->

</body>

</html>