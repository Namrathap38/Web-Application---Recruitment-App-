<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="Logincss">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/Login.js"></script>
<style type="text/css">

.pho{
 margin-top:50px;
	margin-left:440px;
	border:1px solid black;
   padding:15px;
 margin-right:500px;
}

.sum1
{
margin-right:63px;
	margin-top:15px;
	margin-bottom:20px;
}
.sum{
	
	margin-right:50px;
	margin-top:15px;
	margin-bottom:20px;
	
	
}
#ins
{
margin-left:140px;
background-color:#ddd;
}
#res{
background-color:#ddd;
}
.fg a
{
	margin-top:20px;
	margin-right:10px;
	margin-left:50px;
	text-decoration: none;
}
.ui
{
	margin-left:15px;
}
</style>
</head>
<body>
<div class="pho">
<img src="logo.gif">
<hr>
<h4 align="center">SCII RECRUITMENT LOGIN</h4>

<form action="LoginController"  name="myname" method="POST" >
<label class="sum1">User ID</label>
<input type="text" name="usename" id="userid" class="ui" ><br>
<label class="sum">Password</label>
<input type="password" name="password" id="password" class="ui"><br>

<input align="center" type="submit" value="Login" class="btn" id="ins"name="stu" />
<input type="reset" value="Reset" class="btn" id="res"  name="stu"/><br> 

 <span  class="fg"><a href="Forgot.jsp">Forgot password?</a></span>
 <span  class="fg"><a href="Change_Password.jsp">Change password?</a></span>
</form>
</div>
</body>
</html>