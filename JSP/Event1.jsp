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

<style>
#mydiv{
border:1px solid black;
margin:15px;
}
table, td, th {  
 border: 1px solid black;
 border-collapse: collapse;
 
}
.box{
width:10px;
}
.txt{
border:0;
outline:0;
width:100px;
}
.sel{
border:0;
outline:0;
width:100px;
}
.txt1{
width:255px;
}
.txtarea{
border:0;
outline:0;
width:200px;
}
#cn{
margin-left:400px;
margin-top: 7px;
}
.id
{
box-sizing: border-box;
  width: 60px;
  height: 330px;
  padding: 17px;  
  border: 1px solid black; 
}
.pagination{
display:inline-block;
margin-left:30px;
}
.pagination a{
color:black;
float:left;
padding:4px 16px;
text-decoration:none;
}
.pagination{
display:inline-block;
}
#val
{
border:1px solid black;
}
.brd{
box-sizing: border-box;
width: 700px;
height: 100%;
padding: 50px;  
border: 1px solid black;
}
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:nth-child(2):before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
</style>
</head>
<body>
<center>
<div class="brd">
<input type="button" value="SEND MAIL" id="cn">
<input type="button" value="close">

<div><br>
<table class="css-serial">
<thead>
<tr>
<th>&nbsp;</th>
<th class="tdclass">SL No</th>
<th class="tdclass">Name</th>
<th class="tdclass">Category</th>
<th class="tdclass">Year</th>
<th class="tdclass">Month</th>
<th class="tdclass">Technology</th>
<th class="tdclass">Mail Send Status</th>
</tr>
</thead>
<%
try
{
Connection conn = RecruitmentJDBC.getConnection();
String query="select * from resumes";
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tbody>
<tr>
<td>&nbsp;<input type="checkbox" name="name1" />&nbsp;</td>
<td></td>
<td class="box"><%=rs.getString("name") %></td>
<td class="box"><%=rs.getString("category") %></td>
<td class="box"><%=rs.getString("year") %></td>
<td class="box"><%=rs.getString("month") %></td>
<td class="box"><%=rs.getString("technology") %></td>
<td class="box"><%=rs.getString("email") %></td>
</tr>
 <%

}
%>
</tbody>
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
</center>
</body>
</html>