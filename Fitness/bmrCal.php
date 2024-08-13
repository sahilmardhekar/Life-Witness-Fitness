<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <?php include "navbar.php";   ?>
</head>

<body>
    <div class="container py-5">
        <div class="row">
            <div class="col w-50 m-auto">
                <div class="card">
                    <div class="card-header text-center">BMR Calculator</div>
                    <div class="card-body">
                        <label for=""><b> Gender:</b></label><br>
                        <div class="form-check w-25 m-auto">
                            <input class="form-check-input" type="radio" name="gender" id="gender1" value="m" checked
                                onclick="shHip('m')">
                            <label class="form-check-label" for="Male">
                                Male
                            </label>
                        </div>
                        <div class="form-check w-25 m-auto">
                            <input class="form-check-input" type="radio" name="gender" id="gender2" value="f"
                                onclick="shHip('f')">
                            <label class="form-check-label" for="Female">
                                Female
                            </label>
                        </div>
                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <input type="text" class="form-control" id="age" placeholder="age between 15 - 80">
                        </div>
                        <div class="mb-3">
                            <label for="height" class="form-label">Height</label>
                            <input type="text" class="form-control" id="height" placeholder="Height in cm">
                        </div>
                        <div class="mb-3">
                            <label for="weight" class="form-label">Weight</label>
                            <input type="text" class="form-control" id="weight" placeholder="Weight in Kg">
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-success" id="submit-m"
                                onclick="getbmrvalue1()">Calculate</button>
                            <button type="submit" class="btn btn-success" id="submit-f"
                                onclick="getbmrvalue2()">Calculate</button>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col">
                <div class="container">
                    <div class="card">
                        <div class="card-body">
                            <fieldset disabled>
                                <div class="mb-3 text-center">
                                    <label for="bmrValue" class="form-label text-success">
                                        <h2>RESULT:</h2>
                                    </label>
                                    <input type="text" class="form-control-plaintext form-control-lg text-success p-3"
                                        id="bmrValue" class="form-control">
                                </div>
                            </fieldset>
                        </div>
                        <div class="card-footer">
                            <p class="text-center text-sm">This estimates your basal metabolic rate—the amount of energy expended while at rest in a neutrally temperate environment, and in a post-absorptive state. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    function shHip(shGenger) {
        if (shGenger == 'm') {
            document.getElementById("submit-f").style.display = 'none';
            document.getElementById("submit-m").style.display = 'block';

        } else {
            document.getElementById("submit-m").style.display = 'none';
            document.getElementById("submit-f").style.display = 'block';
        }
    }
    shHip("m");
    </script>

    <script>
    //for male
    function getbmrvalue1() {
        var age = document.getElementById('age').value;
        var height = document.getElementById('height').value;
        var weight = document.getElementById('weight').value;

        var newbmrValue = (10 * weight) + (6.25 * height) - (5 * age) + 5;

        newbmrValue = parseFloat(newbmrValue).toFixed(2);

        document.getElementById('bmrValue').value = newbmrValue;
    }

    //for female
    function getbmrvalue2() {
        var age = document.getElementById('age').value;
        var height = document.getElementById('height').value;
        var weight = document.getElementById('weight').value;

        var newbmrValue = (10 * weight) + (6.25 * height) - (5 * age) - 161;

        newbmrValue = parseFloat(newbmrValue).toFixed(2);

        document.getElementById('bmrValue').value = newbmrValue;
    }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

    <?php include "partials/_footer.php";   ?>
</body>

</html>