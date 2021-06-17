<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://kit.fontawesome.com/c587fc1763.js" crossorigin="anonymous"></script>
    <title>Farmer Registration Portal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../portal_files/bootstrap.min.css">
    <script>
        function province() {
            var a = document.getElementById('provinces').value;
            if (a === 'Southern') {
                var array = ['Galle', 'Matara', 'Hambantota'];
            } else if (a === 'Uva') {
                var array = ['Badulla', 'Monaragala'];
            } else if (a === 'Eastern') {
                var array = ['Trincomalee', 'Batticaloa', 'Ampara'];
            } else if (a === 'Sabaragamuwa') {
                var array = ['Kegalle', 'Ratnapura'];
            } else if (a === 'Central') {
                var array = ['Matale', 'Kandy', 'Nuwara Eliya'];
            } else if (a === 'North Central') {
                var array = ['Anuradhapura', 'Polonnaruwa'];
            } else if (a === 'Western') {
                var array = ['Gampaha', 'Colombo', 'Kalutara'];
            } else if (a === 'North Western') {
                var array = ['Puttalam', 'Kurunegala'];
            } else if (a === 'Northern') {
                var array = ['Jaffna', 'Kilinochchi', 'Mannar', 'Mullaitivu', 'Vavuniya'];
            }


            var string = "";
            for (let i = 0; i < array.length; i++) {
                string = string + "<option>" + array[i] + "</option>";

            }
            string = "<select nmae = 'lol'>" + string + "</select>"
            document.getElementById('district').innerHTML = string;
        }
    </script>
    <style>
    @import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600);
    .myfooter {
        background-color: #292b2c;

        color: goldenrod;
        margin-top: 15px;
    }

    .aligncenter {
        text-align: center;
    }

    a {
        color: goldenrod;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    nav {
        background-color: #292b2c;
    }

    .navbar-custom {
        background-color: #292b2c;
    }

    /* change the brand and text color */
    .navbar-custom .navbar-brand,
    .navbar-custom .navbar-text {
        background-color: #292b2c;
    }

    .navbar-custom .navbar-nav .nav-link {
        background-color: #292b2c;
    }

    .navbar-custom .nav-item.active .nav-link,
    .navbar-custom .nav-item:hover .nav-link {
        background-color: #292b2c;
    }


    .mybtn {
        border-color: green;
        border-style: solid;
    }


    .right {
        display: flex;
    }

    .left {
        display: none;
    }

    .cart {
        /* margin-left:10px; */
        margin-right: -9px;
    }

    .profile {
        margin-right: 2px;

    }

    .login {
        margin-right: -2px;
        margin-top: 12px;
        display: none;
    }

    .searchbox {
        width: 60%;
    }

    .lists {
        display: inline-block;
    }

    .moblists {
        display: none;
    }

    .logins {
        text-align: center;
        margin-right: -30%;
        margin-left: 35%;
    }
  body{
        margin: 0;
        font-size: .9rem;
        font-weight: 400;
        line-height: 1.6;
        color: #212529;
        text-align: left;
        background-color: #f5f8fa;
    }

    .my-form, .login-form
    {
        font-family: Raleway, sans-serif;
    }

    .my-form
    {
        padding-top: 1.5rem;
        padding-bottom: 1.5rem;
    }

    .my-form .row
    {
        margin-left: 0;
        margin-right: 0;
    }

    .login-form
    {
        padding-top: 1.5rem;
        padding-bottom: 1.5rem;
    }

    .login-form .row
    {
        margin-left: 0;
        margin-right: 0;
    }
    @media only screen and (min-device-width:320px) and (max-device-width:480px) {
        /* .mycarousel {
            display: none;
        }

        .firstimage {
            height: auto;
            width: 90%;
        }

        .card {
            width: 80%;
            margin-left: 10%;
            margin-right: 10%;

        }

        .col {
            margin-top: 20px;
        } */

        .right {
            display: none;
            background-color: #ff5500;
        }

        /* 
            .settings{
            margin-left:79%;
        } */
        .left {
            display: flex;
        }

        .moblogo {
            display: none;
        }

        .logins {
            text-align: center;
            margin-right: 35%;
            padding: 15px;
        }

        .searchbox {
            width: 95%;
            margin-right: 5%;
            margin-left: 0%;
        }

        .moblists {
            display: inline-block;
            text-align: center;
            width: 100%;
        }
        /* .pic{
        height:auto;
    } */
    
    /* .mobtext{
        display:none;
    }
    .destext{
        display:inline-block;
        width:90%;
        margin-left: 5%;
        margin-right: 5%;
    } */
    }
    </style>
</head>

<body>
 
<main class="my-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header" style="background-color:#292b2c"><h4 style="font-style:bold;color:goldenrod">Farmer Registration<h4></div>
						<div class="card-body border border-dark">
							<form name="my-form" action="FarmerRegister.php" method="post">
								<div class="form-group row">
									<label for="full_name" class="col-md-4 col-form-label text-md-right"><i class="fas fa-user mr-2"></i><b>Full Name</b></label>
									<div class="col-md-6">
										<input type="text" id="full_name" class="form-control border border-dark" name="name" placeholder="Enter Your Name" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="phone_number" class="col-md-4 col-form-label text-md-right"><i class="fas fa-phone-alt mr-2"></i><b>Phone Number</b></label>
									<div class="col-md-6">
										<input type="text" id="phone_number" class="form-control border border-dark" name="phonenumber" placeholder="Phone Number" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="present_address" class="col-md-4 col-form-label text-md-right"><i class="fas fa-home mr-2"></i><b>Present Address</b></label>
									<div class="col-md-6">
										<textarea type="text" id="present_address" class="form-control border border-dark" rows="4" name="address" placeholder="Address" required></textarea>
									</div>
								</div>	
							
                                <div class="form-group row">
                                    <label for="provinces" class="col-md-4 col-form-label text-md-right"><b><i class="fas fa-globe-americas mr-2"></i>Province</b></label>
                                    <div class="col-md-6">
                                        <select name="provincevalue" id="provinces" onchange="province()" class="form-control border border-dark">
                                            <option value="0">--Select Province--</option>
                                            <option value="Southern">Southern</option>
                                            <option value="Uva">Uva</option>
                                            <option value="Eastern">Eastern</option>
                                            <option value="Sabaragamuwa">Sabaragamuwa</option>
                                            <option value="Central">Central</option>
                                            <option value="North Central">North Central</option>
                                            <option value="Western">Western</option>
                                            <option value="North Western">North Western</option>
                                            <option value="Northern">Northern</option>
                                            
                                        </select>
                                    </div>
                                </div>    
                                <div class="form-group row">
                                    <label for="provinces" class="col-md-4 col-form-label text-md-right"><b><i class="fas fa-globe-americas mr-2"></i>District</b></label>
                                    <div class="col-md-6">
                                        <select name="district" id="district" class="form-control border border-dark">
                                            <option>--Select District--</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
									<label for="account2" class="col-md-4 col-form-label text-md-right"><i class="fas fa-pencil-alt mr-2"></i><b>PAN No.</b></label>
									<div class="col-md-6">
										<input type="text" id="account2" class="form-control border border-dark" name="pan" placeholder="Pan number" required>
									</div>
								</div>

                                <div class="form-group row">
									<label for="account1" class="col-md-4 col-form-label text-md-right"><i class="fas fa-university mr-2"></i><b>Bank Account No.</b></label>
									<div class="col-md-6">
										<input type="text" id="account1" class="form-control border border-dark" name="account" placeholder="Bank Account number" required>
									</div>
								</div>


								<div class="form-group row">
									<label for="p1" class="col-md-4 col-form-label text-md-right"><i class="fas fa-lock mr-2"></i><b>Password</b></label>
									<div class="col-md-6">
										<input id="p1" class="form-control border border-dark" type="password" name="password" placeholder="Password" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="p2" class="col-md-4 col-form-label text-md-right"><i class="fas fa-lock mr-2"></i><b>Confirm Password</b></label>
									<div class="col-md-6">
										<input id="p2" class="form-control border border-dark" type="password" name="confirmpassword" placeholder="Confirm Password" required>
									</div>
								</div>

                                 <style type="text/css">
          #map{ width:700px; height: 500px; }
        </style>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
                                <div id="map"></div>
<br>
                                <div class="form-group row">
                                    <div class="col-md-6">
             <input type="text" id="lat" class="form-control border border-dark" name="lat" readonly="yes" required><br>
</div>
                                </div>
             <div class="form-group row">
                <div class="col-md-6">
             <input type="text" id="lng" class="form-control border border-dark" name="lng" readonly="yes" required>

             </div>
                                </div>
              <script type="text/javascript" src="map.js"></script>
								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary " style="background-color:#292b2c;color:goldenrod"   name="register" value="Register">
										Register
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
   
</body>

</html>


<?php

include("../Includes/db.php");

$ciphering = "AES-128-CTR";
$iv_length = openssl_cipher_iv_length($ciphering);
$options = 0;
$encryption_iv = '2345678910111211';
$encryption_key = "DE";

if (isset($_POST['register'])) {
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $phonenumber = mysqli_real_escape_string($con, $_POST['phonenumber']);
    $address = mysqli_real_escape_string($con, $_POST['address']);
    $account = mysqli_real_escape_string($con, $_POST['account']);
    $pan = mysqli_real_escape_string($con, $_POST['pan']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $confirmpassword = mysqli_real_escape_string($con, $_POST['confirmpassword']);
    $district = mysqli_real_escape_string($con, $_POST['district']);
    $province = mysqli_real_escape_string($con, $_POST['provincevalue']);
    $lat =  mysqli_real_escape_string($con, $_POST['lat']);
    $lng =  mysqli_real_escape_string($con, $_POST['lng']);
    $encryption = openssl_encrypt(
        $password,
        $ciphering,
        $encryption_key,
        $options,
        $encryption_iv
    );
    // echo $encryption;

    if (strcmp($password, $confirmpassword) == 0) {

        $query = "insert into farmerregistration (farmer_name,farmer_phone,
                farmer_address, farmer_province, farmer_district,
                farmer_pan,farmer_bank,farmer_password,farmer_lat,farmer_lng) 
                values ('$name','$phonenumber','$address',
                '$province','$district','$pan','$account',
                '$encryption','$lat','$lng')";

        $run_register_query = mysqli_query($con, $query);
        echo "<script>console.log('SucessFully Inserted');</script>";
        echo "<script>window.open('FarmerLogin.php','_self')</script>";
    } else if (strcmp($password, $confirmpassword) != 0) {
        echo "<script>
				alert('Password and Confirm Password Should be same');
			</script>";
    }
}

?>