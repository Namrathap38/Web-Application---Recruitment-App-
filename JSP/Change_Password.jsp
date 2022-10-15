<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/gif" href="favicon.gif" id="favimg">
<title>Change Password</title>
<style>

.con
{
	 margin-top:50px;
	margin-left:400px;
	border:1px solid black;
   padding:15px;
 margin-right:550px;
}
#cofm
{
margin-left:150px;
background-color:#ddd;
}
#lb
{
margin-left:22px;
}
.ui
{
margin-left:65px;
}
.op
{
margin-left:22px
}
.np
{
margin-left:17px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/Change.js"></script>
</head>
<link rel="stylesheet" href="Change_Password.css.">
<body>

<div class="con">  
<img src="logo.gif">
<hr>
<h3 align="center"> Change password Here</h3>
<form action="ChangeController"  method="post" >
<label id="lb">User ID:</label> 
<input type="text" name="userid" id="userid" class="ui">
<br><br>
<label id="lb">Old Password: </label>
<input type = "password" name = "oldpassword" id="oldpass" class="op"> 
<br><br>    
<label id="lb">New Password: </label>
<input type = "password" name = "newpassword" id="newpass" class="np">
 <br><br>   
<button type="submit" class="btn" value ="Confirm" id="cofm">Confirm</button>    
</form>
</div>  
</body>  
</html>  


 

