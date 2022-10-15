<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/Forgot.js"></script>
<style type="text/css">
body
{
 
}

div
{
    margin-top:50px;
	margin-left:400px;
	border:1px solid black;
   padding:15px;
 margin-right:540px;
 
}

.sub
{
	margin-left:78px;
}
.sub1
{
	margin-left:22px;
}
.sub2
{
	margin-left:3px;
}
#sub
{
	margin-left:135px;
	background-color:#ddd;
}
#rt
{
	margin-left:50px;
	background-color:#ddd;
}

</style>
</head>
<link rel="stylesheet" href="Forgotcss">
<body>
<div>

<img src="logo.gif">
<hr>

<h3 align="center"> Forgot password Here </h3>
<form action="ForgotController" name="myname" method="POST" >

<label id="lb">User ID:</label> 
<input type="text" name="userid" id="userid" class="sub">
<br><br>
<label id="lb">Enter Password: </label>
<input type = "password" name = "epassword" id="epassword" class="sub1"> 
<br><br>    
<label id="lb">Confirm Password: </label>
<input type = "password" name = "confirmpassword" id="cpassword" class="sub2">
 <br><br>   

<button type="submit" class="btn" id="sub">Submit</button>   
<button type = "reset" class="btn" value = "Reset" id="rt">Reset</button>  
</form>
</div>  
</body>  
</html>  


 

