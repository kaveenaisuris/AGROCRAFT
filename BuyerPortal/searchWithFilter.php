<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
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
     <script>
          var a;

          function display() {
               if (a == 0) {
                    document.getElementById("majic").style.visibility = "hidden";
                    document.getElementById("show").style.visibility = "visible";
                    return a = 1;
               } else {
                    document.getElementById("majic").style.visibility = "visible";
                    document.getElementById("show").style.visibility = "hidden";
                    // document.getElementById("show").style. visibility= "hidden";

                    return a = 0;
               }

          }
     </script>
 
<label>State</label>
                <table>
                    <select id="provinces" onchange="province()" tabindex="1">
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


                    <select name="" id="district">
                         <option>Select District</option>
                    </select>


               </table>

</body>
</html>