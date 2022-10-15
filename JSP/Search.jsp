<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center">

<%

List details=new ArrayList();

details=(ArrayList)request.getAttribute("details");

if(details!=null && details.size()>0 ){

%>

<h2 align="center">Details</h2>

<tr>

<th>Name</th>
<th>Category</th>
<th>Technology</th>
<th>Years</th>
<th>Months</th>
<th>Join_team</th>
<th>Join_date</th>

</tr>

<%

for(int i=0;i<details.size();i++){

List list=(List)details.get(i);

%>

<tr>

<td><%=list.get(1) %></td>
<td><%=list.get(3) %></td>
<td><%=list.get(4) %></td>
<td><%=list.get(6) %></td>
<td><%=list.get(7) %></td>
<td><%=list.get(8) %></td>
</tr>

<%

}

}else{

%>

Not Found!

<%}%>

</table>
</body>
</html>