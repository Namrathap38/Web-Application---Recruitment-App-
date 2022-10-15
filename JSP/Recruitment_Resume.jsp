<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.btn{
margin-right:5px;
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
.sel{
border:0;
outline:0;
width:300px;
}
.sel1{
border:0;
outline:0;
width:125px;
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
#browse{
margin-left:180px;
width:150px;
}
#view{
margin-right:30px;
width:150px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Register/Update New Resume</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>
<div class="container">
<div class="row mt-3">
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Name <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" disabled></td>
</tr>
<tr>
<td class="head">Email Id <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="email" class="txt" disabled></td>
</tr>
<tr>
<td class="head">Category <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input class="sel" disabled></td>
</tr>
<tr>
<td class="head">Media: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input class="sel" disabled></td>
</tr>
</table>
</div>
<div class="col-md mb-3">
<table>
<tr>
<td class="head">Technology(M): &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" disabled></td>
</tr>
<tr>
<td class="head">Contact Num <sup>*</sup>: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" disabled></td>
</tr>
<tr>
<td class="head">Yrs Of Exp: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="sel1" disabled>YY<input type="text" class="sel1" disabled>MM</td>
</tr>
<tr>
<td class="head">Reference: &nbsp; &nbsp; &nbsp;</td>
<td class="box"><input type="text" class="txt" disabled></td>
</tr>
</table>
</div>
</div>
<h5>Technologies</h5>
<div class="row" id="row-order">
<div class="col-md-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mb-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4  mb-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mb-4 mt-4">
<input class="select" disabled>
</div>
</div>
<h5 class="mt-4">Scripting Languages</h5>
<div class="row" id="row-order">
<div class="col-md-4  mb-4 mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mb-4  mt-4">
<input class="select" disabled>
</div>
<div class="col-md-4  mb-4 mt-4">
<input class="select" disabled>
</div>
</div>
<h5 class="mt-4">Databases</h5>
<div class="row" id="row-order">
<div class="col-md-4 mt-4 mb-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mt-4 mb-4">
<input class="select" disabled>
</div>
<div class="col-md-4 mt-4 mb-4">
<input class="select" disabled>
</div>
</div>
<div class="row mt-4">
<div class="col-md">
<table>
<tr>
<td class="head">Resume: </td>
<td class="box1"><input type="text" class="txt" disabled></td>
</tr>
</table>
</div>
<div class="col-md">
<button class="btn button" id="view" >View</button>
</div>
</div>
<div class="row mt-4">
<div class="col-md">
<table>

</table>
</div>
</div>
</div>                  
</body>
</html>