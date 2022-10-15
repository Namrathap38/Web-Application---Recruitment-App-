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
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/delete.js"></script>
<style>
#mydiv{
border:1px solid black;
margin:15px;
margin-top:1px; 
}
table,thead,tbody,td,th{
border:1px solid black;
border-collapse:collapse;
margin-bottom:70px; 
margin-top:-150px; 
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
width:150px;
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
height:70px;
width:160px;
background-color:#95C8D8;
cursor: pointer;
}
.side:hover{
background-color:#ddd;
}
.side a{
text-decoration:none;
color:black;

}
.main{
margin-left:180px;
margin-top:70px;
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
margin-left:150px;
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
margin-top:5px;
margin-left:270px;
margin-bottom:200px; 
width:90px;
background-color:grey;
}
.sear{
margin-top:10px;
margin-left:10px;
margin-bottom:200px; 
width:90px;
background-color:grey;
}
.save{
margin-top:10px;
margin-left:60px;
margin-bottom:200px; 
width:90px;
background-color:grey;
}
.del{
margin-left:10px;
margin-top:10px;
margin-bottom:200px; 
width:90px;
background-color:grey;
}
.new{

margin-left:10px;
margin-top:10px;
margin-bottom:200px; 
width:90px;
background-color:grey;
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
<form action="LogoutController" method="post">
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
<div>
<ul class="topnav" >
<li><a href="RecruitmentHome.jsp">Resumes</a></li>
<li><a href="Recruitment_JoinDetails_Home.jsp">Join Details</a></li>
<li><a href="Event.jsp">Events</a></li>
</ul>
</div>
<div class="" id="myrow">


<label class="searchtag searchleft">EventType &nbsp; </label>
<select class="searchtxt"  onchange="showState(this.value)">
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
    </select>
<label class="searchtag searchleft">Technology &nbsp;</label>
<select class="searchtxt" onchange="showState(this.value)">
<option value="none" ></option>
<%
Connection connect1 = RecruitmentJDBC.getConnection();
PreparedStatement ps1 =null;
    	String sql1="select * from event";
		ps1=connect1.prepareStatement(sql1);
		ResultSet result1 = ps1.executeQuery(sql1);
		while (result1.next())
    {
    	%>
<option value="<%= result1.getString(5) %>"><%= result1.getString(5) %></option>

    	<% }
    
    ps1.close(); 
    result1.close();
    %>
</select>
<label class="searchtag searchleft">Status &nbsp;</label>
<select class="searchtxt" onchange="showState(this.value)">
<option  value="none"></option>
<%
Connection connect2 = RecruitmentJDBC.getConnection();
PreparedStatement ps2 =null;
    	String sql2="select * from event";
		ps2=connect2.prepareStatement(sql2);
		ResultSet result2 = ps2.executeQuery(sql2);
		while (result2.next())
    {
    	%>
<option value="<%= result2.getString(3) %>"><%= result2.getString(3) %></option>

    	<% }
    
    ps2.close(); 
    result2.close();
    %>
</select><br>

</div>
<div class="main">
<form action="DeleteEvents" method="post">
<button type="reset" class="btn clr butn">Clear</button>
<button type="search" class="btn sear butn" id="serc">Search</button>
<button class="btn save butn" id="sev">Save</button>
<button class="btn del butn" type="submit" id="del" name="submit"> Delete</button>
<button class="btn new butn"><a href="EventDetails.jsp">New</a></button>
<table class="css-serial">
<thead>
<tr>
<th>&nbsp;</th>
<th class="tdclass">SL No</th>

<th class="tdclass">EventType</th>
<th class="tdclass">Location</th>
<th class="tdclass">Technology</th>
<th class="tdclass">Details</th>
<th class="tdclass">status</th>

</tr>
</thead>

<tbody>
<%
try
{
/* Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@10.17.3.30:1521:ORCL";
String username="scii";
String password="scii"; */
Connection con = RecruitmentJDBC.getConnection();
String query="select * from event";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr>
<td>&nbsp;<input type="checkbox" name="name"  value="<%=rs.getString("eventid") %>"/>&nbsp;</td>
<td></td>
<td class="box"><%=rs.getString("eventtype") %></td>
<td class="box"><%=rs.getString("venue") %></td>
<td class="box"><%=rs.getString("technology") %></td>
<td class="box"><%=rs.getString("details") %></td>
<td class="box"><select class="sel">
<option></option>
<option>planned</option>
</select></td>

</tr>

 <%

}
%>
</tbody>
</table>

<%
rs.close();
stmt.close();
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
