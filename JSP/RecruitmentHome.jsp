<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import= "JDBC.RecruitmentJDBC"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Model.RecruitmentResumeModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/gif" href="favicon.gif">
<title>Home</title>
<style>
#mydiv{
border:1px solid black;
margin-top:15px;
margin-left:15px;
margin-right:15px;
}
table,thead,tbody,td,th{
border:1px solid black;
border-collapse:collapse;
}
.tdclass{
background-color:#D1D9D9;
text-align:center;
}
.pagination{
display:inline-block;
margin-left:490px;
}
.pagination a{
color:black;
float:left;
padding:8px 16px;
text-decoration:none;
}
.pagination a:hover{
background-color:grey;
}
.box{
width:130px;
}
.txt{
border:0;
outline:0;
width:150px;
}
.sel{
border:0;
outline:0;
width:162px;
}
.butt{
background-color:#ddd;
}
.btn:hover{
background-color:gray;
}
.sidenav{
hieght:100%;
width:160px;
position:absolute;
}
#sideblank{
height:50px;
width:160px;
}
.side{
height:60px;
width:160px;
background-color:#95C8D8;
cursor: pointer;
}
.side:hover{
background-color:#ddd;
}
.main{
margin-left:180px;
margin-top:40px;
}
.side1{
height:263px;
}
.topnav{
margin-left:128px;
display:flex;
cursor: pointer;
}
.topnav li{
padding:12px;
background-color:#95C8D8;
border:1px solid black;
width:180px;
list-style-type: none;
}
.topnav li:hover{
background-color:#ddd;
}
.topnav li a{
color:black;
text-decoration: none;
}
#myrow{
margin-left:180px;

}
.searchtag{
background-color:#ddd;
}
.searchbox{
width:180px;
}
.searchtxt{
width:180px;
}
.searchsel{
border:0;
outline:0;
width:180px;
}
.searchleft{
margin-left:10px;
}
.clr{
margin-top:10px;
margin-left:270px;
width:90px;
background-color:grey;
}
.sear{
margin-top:10px;
margin-left:10px;
width:90px;
background-color:grey;
}
.save{
margin-top:10px;
margin-left:110px;
width:90px;
background-color:grey;
}
.del{
margin-left:10px;
margin-top:10px;
width:90px;
background-color:grey;
}
.new{
margin-left:10px;
margin-top:10px;
width:90px;
background-color:grey;
}
.butn{
margin-bottom:85px;
}
.butn:hover{
background-color: #ddd;
}
.butn a{
text-decoration: none;
color:black;
}
.main table td.no-border-right{
border-left: solid 1px #FFF;
border-top: solid 1px #FFF;
border-bottom: solid 1px #FFF;
        color: red;
}
.main table th.no-border{
border-left: solid 1px #FFF;
border-top: solid 1px #FFF;
border-bottom: solid 1px #FFF;
        color: red;
}
.td-right{
text-align:right;
}
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:nth-child(2):before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
#printusername{
margin-left:920px;
font-weight: bold;
}
</style>
</head>   
<body>
<div id="mydiv">
<form action="LogoutController" method ="post">
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <img src="logo.gif">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <span id="printusername">Welcome, ${loggedInUser_userName}</span>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto  mb-lg-0">
        <li class="nav-item">
          <button type="submit" class="btn butt">LOGOUT</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
</form>
<div class="sidenav">
<table>
<tr>
<td id="sideblank"></td>
</tr>
<tr>
<td class="side">NEW RESUMES</td>
</tr>
<tr>
<td class="side">CONTACTED RESUMES</td>
</tr>
<tr>
<td class="side">SCHEDULED RESUMES</td>
</tr>
<tr>
<td class="side1"></td>
</tr>
</table>
</div>
<div>
<ul class="topnav" >
<li><a href="RecruitmentHome.jsp">RESUMES</a></li>
<li><a href="Recruitment_JoinDetails_Home.jsp">JOIN DETAILS</a></li>
<li><a href="Event.jsp">EVENTS</a></li>
</ul>
</div>
<div id="myrow">
<label class="searchtag" id="namesearch" onkeyup='searchTable()'>Name &nbsp;</label>
<input type="text" name="search" class="searchtxt">
<label class="searchtag searchleft">Category &nbsp;</label>
<select class="searchtxt" onchange="showState(this.value)"><option value="none">--SELECT CATEGORY--</option>
<%
Connection connect = RecruitmentJDBC.getConnection();
	PreparedStatement ps =null;
    	String sql="select * from resumes order by name";
		ps=connect.prepareStatement(sql);
		ResultSet result = ps.executeQuery(sql);
		while (result.next())
    {
    	%>
    	<option value="<%= result.getString(3) %>"><%= result.getString(3) %></option>

    	<% }
    
    ps.close(); 
    result.close();
    %></select>
<label class="searchtag searchleft">Technology &nbsp;</label>
<select class="searchtxt" onchange="showState(this.value)"><option value="none">--SELECT Technology--</option>
<%
Connection connection = RecruitmentJDBC.getConnection();
	PreparedStatement pst =null;
    	String sql1="select * from resumes order by name";
		pst=connection.prepareStatement(sql1);
		ResultSet result1 = pst.executeQuery(sql1);
		while (result1.next())
    {
    	%>
    	<option value="<%= result1.getString(5) %>"><%= result1.getString(5) %></option>

    	<% }
    
    ps.close(); 
    result.close();
    %>
</select><br>

</div>
<div class="main">
<form action="Delete" method="post">
<button type="reset" class="btn clr butn">Clear</button>
<button type="search" class="btn sear butn">Search</button>
<button class="btn save butn">Save</button>
<button type="submit" class="btn del butn" name="submit">Delete</button>
<button class="btn new butn" ><a href="RecruitmentResume.jsp">New</a></button>
<table class="css-serial" id="table">
<thead>
<tr>
<th class="no-border">&nbsp;</th>
<th class="tdclass">SL No</th>
<th class="tdclass">Name</th>
<th class="tdclass">Category</th>
<th class="tdclass">Year(YY)</th>
<th class="tdclass">Month(MM)</th>
<th class="tdclass">Technology</th>
<th class="tdclass">Media</th>
<th class="tdclass">Contact Status</th>
</tr>
</thead>
<%
try
{
/* Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@10.17.3.28:1521:ORCL";
String username="hr";
String password="hr";*/
Connection con = RecruitmentJDBC.getConnection();
String query="select * from resumes";
PreparedStatement smt = con.prepareStatement(query);
ResultSet rs = smt.executeQuery();
while(rs.next())
{

%>
<tbody>
<tr>
<td class="no-border-right">&nbsp;<input type="checkbox" name="name1" value="<%=rs.getString("email") %>" id="check"/>&nbsp;</td> 
<td></td>
<td class="box"><%=rs.getString("name") %></td>
<td class="box"><%=rs.getString("category") %></td>
<td class="box"><%=rs.getString("year") %></td>
<td class="box"><%=rs.getString("month") %></td>
<td class="box"><%=rs.getString("technology") %></td>
<td class="box"><%=rs.getString("media") %></td>
<td class="box"><select class="sel">
<option></option>
<option>Contact in Progress</option>
<option>Not Contacted</option>
</select></td>
</tr>

 <%

}

%>
</tbody>
</table>
<%
rs.close();
smt.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
</div>
<div class="pagination">
<a href="#">&laquo;</a>
<a href="#">1</a>
<a href="#">2</a>
<a href="#">3</a>
<a href="#">4</a>
<a href="#">5</a>
<a href="#">&raquo;</a>
</div>
</div>
</body>
</html>