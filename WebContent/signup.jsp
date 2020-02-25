<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUP</title>
<script>
	function validate() {
		var fname = document.form.fname.value;
		var lname = document.form.lname.value;
		var email = document.form.email.value;
		var pass = document.form.pass.value;
		var conpassword = document.form.conpassword.value;
		var number = document.form.number.value;
		
		if (fname == null || fname == "") {
			alert("First Name can't be blank");
			return false;
		}
		else if (lname == null || lname == "") {
			alert("Last Name can't be blank");
			return false;
		}
		else if (email == null || email == "") {
			alert("Email Id can't be blank");
			return false;
		}
		else if (pass.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		} else if (pass != conpassword) {
			alert("Confirm Password should match with the Password");
			return false;
		}
		else if (number.length < 10 || number.length > 10) {
			alert("Mobile Number Must be 10 Digit");
			return false;
		}
		
		
		ErrorText= "";
		if ( ( form.gender[0].checked == false ) && ( form.gender[1].checked == false ) && ( form.gender[2].checked == false ) )
		{
		alert ( "Please choose your Gender: Male or Female or Others" );
		return false;
		}
		if (ErrorText= "") 
		{ 
			form.submit() 
		}
		
		
		document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
	}
</script>

<link rel="stylesheet" href="./signup.css">
</head>
<body>
    <h1>Deep It Solution SignUp Form</h1><br>
    <div class="registration">
       <form name="form" action="fs" id="registration" method="post" onsubmit="return validate()">
            <h2 style="font-style:italic;">SignUp Form</h2><br><br>
            <input type="text" name="fname" id="name" 
            placeholder="Enter first name"/><br><br>
            <input type="text" name="lname" id="name" 
            placeholder="Enter last name"/><br><br>
            <input type="email" name="email" id="name" 
            placeholder="Enter Gmail"/><br><br>
            <input type="password" name="pass" id="name" 
            placeholder="Enter password"/><br><br>
            <input type="password" name="conpassword" id="name" 
            placeholder="Re-Enter password"/><br><br>
                <select name="" id="num">
                    <option>+91</option>
                    <option>+92</option>
                    <option>+100</option>
                    <option>+101</option>
                    <option>+123</option>
                </select>
            <input type="tel" name="number" id="number" 
            placeholder="Mobile Number"/><br><br>
            <input type="radio" id="" name="gender" value="male"/>&nbsp;Male
            <input type="radio" id="" name="gender" value="female"/>&nbsp;Female
            <input type="radio" id="" name="gender" value="other"/>&nbsp;Others<br>
            <input id="field_terms" onchange="this.setCustomValidity
            (validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');
             " type="checkbox" required name="terms"><span id="field_terms">
                I agree all the terms and conditions.</span><br><br>
                
        	<tr>
				<td><span style="color: red; font-size: 25px; font-weight: bold;">
				<%=(request.getAttribute("errMessage") == null) ? "" 
						: request.getAttribute("errMessage")%></span></td>
			</tr>
								<br><br>
                
                <button type="reset" id="sub">Reset</button>
                <button type="submit" id="sub">Submit</button>
        </form>

    </div>
</body>
</html>