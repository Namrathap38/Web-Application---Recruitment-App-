<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import= "JDBC.RecruitmentJDBC"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
        <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/RecruitmentResume.js"></script>
<link rel="shortcut icon" type="image/gif" href="favicon.gif">
<title>Register Resume</title>
<style>
#maindiv{
border:1px solid black;
margin:15px;
}
#regback{
background-color:#ddd;
width:380px;
}
.btn{
margin-right:5px;
}
.butt{
background-color:#ddd;
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
.box1{
width:500px;
}
.txt{
border:0;
outline:0;
width:300px;
}
.txt1{
width:300px;
}
.sel{
border:0;
outline:0;
width:300px;
}
.sel1{
border:0;
outline:0;
width:125px;

text-align:right;
}
#mydiv{
border:1px solid black;
}
#rr{
border:1px solid black;
}
.select{
width:300px;
}
#row-order{
width:1030px;
border:1px solid black;
}
.head{
background-color:#ddd;
}
.button{
background-color:#ddd;
}
.btnbr{
margin-left:220px;
width:150px;
}
#browse{
margin-left:180px;
width:150px;
}
#view{
margin-right:30px;
width:150px;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
</style>
</head>
<body>
<div id="maindiv">
<form action="RecruitmentResume" method="post">
<nav class="navbar navbar-expand-lg navbar-light ">
  <div class="container-fluid">
    <a class="navbar-brand" id="regback">REGISTER/UPDATE NEW RESUME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <button class="btn butt mt-1 mb-1">SEND MAIL</button>
        </li>
        <li class="nav-item">
        <button type="reset" class="btn butt mt-1 mb-1">CLEAR</button>
        </li>
        <li class="nav-item">
          <button type="submit" class="btn butt mt-1 mb-1" id="save">SAVE</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
<div class="row mt-3">
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Name <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="name"></td>
</tr>
<tr>
<td class="head">Email Id <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="email" class="txt" id="email"></td>
</tr>
<tr>
<td class="head">Category <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="category"></td>
</tr>
<tr>
<td class="head">Media: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><select class="sel" id="media"  onchange="showState(this.value)">
<option value="none"></option>
<%
Connection connect = RecruitmentJDBC.getConnection();
PreparedStatement ps =null;
    	String sql="select * from event";
		ps=connect.prepareStatement(sql);
		ResultSet result = ps.executeQuery(sql);
		while (result.next())
    {
    	%>
<option value="<%= result.getString(2) %>"><%= result.getString(2) %></option>

    	<% }
    
    ps.close(); 
    result.close();
    %>
    </select></td>
</tr>
</table>
</div>
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Technology(M): &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="technology"></td>
</tr>
<tr>
<td class="head">Contact Num <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="number" class="txt" id="contact"></td>
</tr>
<tr>
<td class="head">Yrs Of Exp: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><select class="sel1 1-60" id="year"><option></option></select>YY<select class="sel1 1-12" id="month"><option></option></select>MM</td>
</tr>
<tr>
<td class="head">Reference: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" id="ref"></td>
</tr>
</table>
</div>
</div>
<h5>Technologies</h5>
<div class="row" id="row-order">
<div class="col-md-4 mt-4">
<input type="text" class="txt1" id="tech1">
</div>
<div class="col-md-4 mt-4">
<input type="text" class="txt1" id="tech2">
</div>
<div class="col-md-4 mt-4">
<input type="text" class="txt1" id="tech3">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="tech4">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="tech5">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="tech6">
</div>
</div>
<h5 class="mt-4">Scripting Languages</h5>
<div class="row" id="row-order">
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="script1">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="script2">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="script3">
</div>
</div>
<h5 class="mt-4">Databases</h5>
<div class="row" id="row-order">
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="data1">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="data2">
</div>
<div class="col-md-4 mt-4 mb-4">
<input type="text" class="txt1" id="data3">
</div>
</div>
<div class="row mt-4">
<div class="col-md">
<table>
<tr>
<td class="head">Resume: </td>
<td class="box1"><input type="text" class="txt" id="filename"></td>
</tr>
</table>
</div>
<div class="col-md">

<input type="file" multiple="multiple"  id="file" name="file" onchange="setfilename(this.value);">
</div>
<div class="col-md">
<button class="btn button" id="view">View</button>
</div>
</div>
<div class="row mt-4">
<div class="col-md mb-4">
<table>
<tr>
<td class="head">Event Id: &nbsp;&nbsp;&nbsp;</td>
<td class="box"><input type="text" class="txt" id="eventid"></td>
</tr>
</table>
</div>
<div class="col-md mb-4">
<table>
<tr>
<td class="head">Event Name: &nbsp;&nbsp;&nbsp;</td>
<td class="box"><input type="text" class="txt" id="eventname"></td>
</tr>
</table>
</div>
</div>
</div>
</form>
</div>                  
</body>
</html>