<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
</head>
<style>
body{
	background:url("images/img1.jpg")no-repeat center fixed;
  background-size:cover;
  font-family:sans-serif;
  text-align:center;
}
* {
  box-sizing: border-box;
}


#regForm {
  background-color:white;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: red;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}

.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
</style>
<body>
  <table bgcolor="#ffffcc"><tr><td><a href="index.htm">
<img src="images/icon.png" alt="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td>
</tr>
</table>

<a href="index.htm"><div class="topright"><h4>login here</h4></div></a>
<form id="regForm" action="register.jsp">
  <h1>User Registration:</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab"><h2>User basic information:</h2>
    <p><input placeholder="User Id" oninput="this.className = ''" name="userid"></p>
    <p><input placeholder="First Name" oninput="this.className = ''" name="fname"></p>
    <p><input placeholder="Last Name" oninput="this.className = ''" name="lname"></p>
    <p><input placeholder="Age" oninput="this.className = ''" name="age" type="number"></p>
    <p>Gender:<input type="radio" value="m" name="gender">Male</p>
    <p><input type="radio" value="f" name="gender">Female</p>           
  </div>
  <div class="tab">Contact Details:
    <p><input placeholder="Mobile Number" oninput="this.className = ''" name="mobile_no" type="number"></p>
    <p><input placeholder="Email" oninput="this.className = ''" name="email" type="email"></p>
    <p><input placeholder="Aadhar Number" oninput="this.className = ''" name="aadhar_no" type="number"></p>
    <p><input placeholder="City" oninput="this.className = ''" name="city" type="text"></p>
	<p><input placeholder="State" oninput="this.className = ''" name="state" type="text"></p>
	<p><input placeholder="Pin Code" oninput="this.className = ''" name="pincode" type="number"></p>  
  </div>
  <div class="tab">Enter Password
 <p> <label>
  <input placeholder="New Password" name="password" oninput="this.className = ''"  id="password" type="password" onkeyup='check();' />
</label>
<br></p>
<p><label>
  <input placeholder="Confirm Password" type="password" oninput="this.className = ''"  name="confirm_password" id="confirm_password"  onkeyup='check();' /> 
  <span id='message'></span>
</label></p> </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  
  </div>
</form>
<br><br><p><h3 style="color:red">USER ALREADY EXISTED</h3></p>
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab


var check = function() {
	  if (document.getElementById('password').value ==
	    document.getElementById('confirm_password').value) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'matching';
	  } else {
	    document.getElementById('message').style.color = 'red';
	    document.getElementById('message').innerHTML = 'not matching';
	  }
	}
function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}

</script>
 
  

</body>
</html>