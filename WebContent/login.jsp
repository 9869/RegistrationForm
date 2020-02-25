<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="login.css">

<script>
	function validate() {
		var email = document.form.email.value;
		var pass = document.form.pass.value;
		if (email == null || email == "") {
			alert("Username cannot be blank");
			return false;
		} else if (pass == null || pass == "") {
			alert("Password cannot be blank");
			return false;
		}
	}
</script>
</head>
<body>
    <div class="loginbox">
    <img src="images.jpg" class="avatar">
        <h1>Login Here</h1>
        <form name="form" action="LoginServlet" method="post"
               onsubmit="return validate()">
            <p>Username</p>
            <input type="text" name="email" id="name" placeholder="Enter @Email">
            <p>Password</p>
            <input type="password" name="pass" id="name" placeholder="Enter Password">
            
            <tr>
				<!-- refer to the request.getAttribute() -->
				<td><span style="color: red; font-size: 25px; font-weight: bold;"><%=(request.getAttribute("errMessage") == null) ? "" 
						: request.getAttribute("errMessage")%></span></td>
			</tr>
            
            <input type="submit" name="" value="Login">
            <a href="#">Lost your password?</a><br>
            <a href="./signup.jsp">Don't have an account?</a>
        </form>
        
    </div>

</body>
</head>
</html>