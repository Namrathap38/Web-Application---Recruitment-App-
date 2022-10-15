<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import= "JDBC.RecruitmentJDBC"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/gif" href="favicon.gif">
<title>Join Details Home Screen</title>
<style>
#maindiv{
border:1px solid black;
margin:15px;
}
table {border-collapse: collapse;}
         table, td, th { border: 1px solid black;}  
        
.pagination {
  display: inline-block;
  text-align: right;
  margin-left:600px;
 margin-top: 5px;
}
.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}
.pagination a:hover{
background-color:grey;
}

.butt{
background-color:#ddd;
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
}
.side:hover{
background-color:#ddd;
}
.main{
margin-left:190px;
margin-top:70px;
}
.side1{
height:460px;
} 
.topnav{
margin-left:128px;
display:flex;

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
.sel{
border:0;
outline:0;
width:30px;
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
margin-top:none;
margin-bottom:50px;
margin-left:270px;
width:90px;
background-color:grey;
}
.sear{
margin-top:none;
margin-bottom:50px;
margin-left:10px;
width:90px;
background-color:grey;
}
.save{
margin-top:none;
margin-bottom:50px;
margin-left:300px;
width:90px;
background-color:grey;
}
.del{
margin-left:10px;
margin-top:none;
margin-bottom:50px;
width:90px;
background-color:grey;
}
.del a{
text-decoration:none;
color:black;
}
.new{
margin-left:10px;
margin-top:none;
margin-bottom:50px;
width:90px;
background-color:grey;

}
.new a{
text-decoration:none;
color:black;
}
.butn:hover{
background-color: #ddd;
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
.hd{
background-color: #ddd;
width:140px;
}
.cb{
margin-right:10px;
}
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:nth-child(2):before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
#printusername{
margin-left:950px;
font-weight: bold;
}
 </style>
</head>
<body>
<div class="maindiv">
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
    </form>
  </div>
</nav>

<div class="sidenav">
<table>
<tr>
<td id="sideblank"></td>
</tr>
<tr>
<td class="side1"></td>
</tr>
</table>
</div>
<div>
<ul class="topnav" >
<li><a href="RecruitmentHome.jsp">Resumes</a></li>
<li><a href="Recruitment_JoinDetails_Home.jsp">Join Details</a></li>
<li><a href="Event.jsp">Events</a></li>
</ul>
</div>
<div  id="myrow">


<label class="searchtag">Name &nbsp;</label>
<input type="text" class="searchtxt" name="nm">
<label class="searchtag searchleft">Category &nbsp; </label>
<select class="searchtxt"  onchange="showState(this.value)" name="cat">
<option value="none"></option>
<%
Connection connect = RecruitmentJDBC.getConnection();
	PreparedStatement ps =null;
    	String sql="select * from joindetails order by name";
		ps=connect.prepareStatement(sql);
		ResultSet result = ps.executeQuery(sql);
		while (result.next())
    {
    	%>
    	<option value="<%= result.getString(3) %>"><%= result.getString(3) %></option>

    	<% }
    
    ps.close(); 
    result.close();
    %>
    </select>
<label class="searchtag searchleft">Technology &nbsp;</label>
<select class="searchtxt" onchange="showState(this.value)" type="tech">
<option value="none"></option>
<%
Connection connection = RecruitmentJDBC.getConnection();
	PreparedStatement pss =null;
    	String query="select * from joindetails order by name";
		pss=connect.prepareStatement(query);
		ResultSet rs = pss.executeQuery(query);
		while (rs.next())
    {
    	%>
    	<option value="<%= rs.getString(4) %>"><%= rs.getString(4) %></option>

    	<% }
    
    ps.close(); 
    rs.close();
    %>

</select><br>


</div>

<div class="main">
<form action="DeleteController" method="post">
<button type="reset" class="btn clr butn" id="reset">Clear</button>
<button type="submit" class="btn sear butn" id="search">Search</button>
<button class="btn save butn" id="save">Save</button>
<button class="btn del butn" id="delete" type="submit" name="submit">Delete</button>
<button class="btn new butn" id ="new"><a href=Recruitment_JOINRegister_Update.jsp>New</a></button>
<table  class="css-serial">
<tr>
<th class="no-border"></th>
<th  class="hd">SL NO</th>
<th  class="hd">Name</th>
<th  class="hd">Category</th>
<th  class="hd">Year(YYYY)</th>
<th  class="hd">Month(MM)</th>
<th  class="hd">Technology</th>
<th  class="hd">Join Date</th>
<th  class="hd">Join Team</th>
</tr>
 <%
try
{
Connection conn = RecruitmentJDBC.getConnection();
String query2="select * from joindetails";
Statement stmt=conn.createStatement();
ResultSet rs2=stmt.executeQuery(query2);
while(rs2.next())
{

%>
<tr>

<td class="no-border-right"><input type="checkbox"  class="cb" name="name1" onchange="showState(this.value)" value="<%=rs2.getString("email") %>"></td>
<td></td>
<td class="box"><%=rs2.getString("name") %></td>
<td class="box"><%=rs2.getString("category") %></td>
<td class="box"><%=rs2.getString("years") %></td>
<td class="box"><%=rs2.getString("months") %></td>
<td class="box"><%=rs2.getString("technology") %></td>
<td class="box"><%=rs2.getString("join_date") %></td>
<td class="box"><%=rs2.getString("join_team") %></td>
</tr>


 <%

}
%>
</table>


<%
rs.close();
stmt.close();
conn.close();
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
</body>
</html>