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
    <div class="container  ">
        <div class="card">
            <div class="card-header text-center"> BFI Calculator</div>
            <div class="card-body">
                <form class="w-25 m-auto" onsubmit="return false">
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
                        <input type="text" class="form-control" id="height" placeholder="Height in Feet" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="neck" class="form-label">Neck:</label>
                        <input type="text" class="form-control" id="neck" placeholder="Neck in cm" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="waist" class="form-label">Waist:</label>
                        <input type="text" class="form-control" id="waist" placeholder="Waist in cm" class="form-control">
                    </div>
                    <fieldset disabled>
                        <div class="mb-3">
                            <label for="bfiValue" class="form-label">BFI Value:</label>
                            <input type="text" class="form-control" id="bfiValue" class="form-control">
                        </div>
                    </fieldset>
                    <div>
                        <button type="submit" class="btn btn-success" onclick="getbfivalue()">Calculate</button>

                    </div>
                    <div class="card-footer mb-3">A healthy BMI ranges between 19 to 25.</div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function getbfivalue() {
            var waist = document.getElementById('waist').value;
            var neck = document.getElementById('neck').value;
            var height = document.getElementById('height').value;

            height = height * 30.48; // now height in cm

            var wn = Math.log10(waist - neck);
            var h = Math.log10(height);
            var den = (1.0324 - (0.19077 * wn) + (0.15456 * h));
            var num_den = (495 / den)
            var newbfivalue = num_den - 450;

            newbfivalue = parseFloat(newbfivalue).toFixed(2);

            document.getElementById('bfiValue').value = newbfivalue;
        }

        // For Female
        // function getbfivalue2() {
        //     var waist = document.getElementById('waist').value;
        //     var neck = document.getElementById('neck').value;
        //     var height = document.getElementById('height').value;
        //     var hip = document.getElementById('hip').value;

        //     // height = height * 30.48; // now height in cm

        //     // var whn = Math.log10(waist + hip - neck);
        //     var w = Math.log10(waist);
        //     var hp = Math.log10(hip);
        //     var n = Math.log10(neck);
        //     var h = Math.log10(height);

        //     // var whpn = (wn + hp);
        //     // var whpn = Math.log10(waist + hip - neck);
        //     // var whpn = (waist + hip - neck);
        //     // var log_whpn = Math.log10(whpn);

        //     var den = (1.29579 - (0.35004 * (w + hp - n)) + (0.22100 * h));
        //     var num_den = (495 / den);
        //     var newbfivalue = num_den - 450;

        //     newbfivalue = parseFloat(newbfivalue).toFixed(2);

        //     document.getElementById('bfiValue').value = newbfivalue;
        // }

        // For Female
        // function getbfivalue2() {
        //     var waist = document.getElementById('waist').value;
        //     var neck = document.getElementById('neck').value;
        //     var height = document.getElementById('height').value;
        //     var hip = document.getElementById('hip').value;

        //     // height = height * 30.48; // now height in cm

        //     var w = Math.log10(waist);
        //     var hp = Math.log10(hip);
        //     var n = Math.log10(neck);
        //     var h = Math.log10(height);

        //     var whpn = (w + hp - n);
        //     // var whpn = Math.log10(waist + hip - neck);
        //     // var whpn = (waist + hip - neck);
        //     // var log_whpn = Math.log10(whpn);

        //     var den = (1.29579 - (0.35004 * whpn) + (0.22100 * h));
        //     var num_den = (495 / den);
        //     var newbfivalue = num_den - 450;

        //     newbfivalue = parseFloat(newbfivalue).toFixed(2);

        //     document.getElementById('bfiValue').value = newbfivalue;
        // }
    </script>



    <?php include "partials/_footer.php" ?>

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