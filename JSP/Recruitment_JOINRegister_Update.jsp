<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/gif" href="Recruitment.jsp/favicon.gif">
<title>Register/update page</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/JoinDetails.js"></script>
   <script type="text/javascript"></script>
<style>
#maindiv{
border:1px solid black;
margin:15px;
}
#regback{
background-color:#ddd;
}
.btn{
margin-right:5px;
}
.butt{
background-color:#ddd;
}
.butt a{
text-decoration:none;
color:black;
}
.btn:hover{
background-color:gray;
}
table,th,td{
border:1px solid black;
border-collapse:collapse;
}
.box{
width:300px;
}
.txt{
border:0;
outline:0;
width:300px;
}
.head{
background-color:#ddd;
}
.txt1{
border:0;
outline:0;
width:125px;
}
.sel{
border:0;
outline:0;
width:300px;
}
.sel2{
border:0;
outline:0;
width:125px;
text-align:right;

</style>

</head>
<body>
<div id="maindiv">
<form action="Recruitment_JOINRegister_Update" method="post">

<nav class="navbar navbar-expand-lg navbar-light ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" id="regback">JOIN REGISTER/UPDATE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <button class="btn butt"><a href=Recruitment_Resume.jsp>DETAILS</a></button>
        </li>
        <li class="nav-item">
        <button type="reset" class="btn butt" id="reset">CLEAR</button>
        </li>
        <li class="nav-item">
          <button type="submit" class="btn butt" id="submit">SAVE</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
<div class="row mt-4">
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Name &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="name"></td>
</tr>
<tr>
<td class="head">Email Id &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="email_id"></td>
</tr>
<tr>
<td class="head">Category  &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="category"></td>
</tr>
</table>
</div>
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Technology &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="technology"></td>
</tr>
<tr>
<td class="head">Contact Number &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="contact_no"></td>
</tr>
<tr>
<td class="head">Yrs Of Exp &nbsp; &nbsp; &nbsp;</td>

<td class="box"><select class="sel2 1-60" id="years"><option></option></select>YY<select class="sel2 1-12" id="months"><option></option></select>MM</td>
</tr>
</table>
</div>
</div>
<div class="row mt-4">
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Join Team &nbsp; &nbsp; &nbsp;</td>
<td class="box"><select class="sel" id="join_team">
<option ></option>
<option >Software Developing</option>
<option >Sales Management</option>
<option >Product management</option>
<option >Network management</option>
</select></td>
</tr>
<tr>
<td class="head">Join Date &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="date" class="txt" id="join_date"></td>
</tr>
</table>
</div>
</div>
</div>
</form>
</div>                
</body>
</html>