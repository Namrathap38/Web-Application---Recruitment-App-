<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Views/Validate.js"></script>
</head>
<style>
table, td, th {  
 border: 1px solid black;
 border-collapse: collapse;
 
}
.box{
width:300px;
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
.txt1{
width:135px;
}
.txtarea{
border:0;
outline:0;
width:300px;
}
#cn{
margin-left:250px;
 margin-top: 5px;

}
.id
{
box-sizing: border-box;
  width: 500px;
  height: 300px;
  padding: 17px;  
  border: 1px solid black; 
}
.btn a{
 text-decoration: none;
color:black;
}
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:first-child:before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
</style>
<body>
<form action="EventDetailsController" method="post">
<center>
<div class="id">
<button class="btn new butn " id="cn"><a href="Event1.jsp">Resume</a></button>
<button id="sev"  value="Sav">save</button>
<input type="Reset" name="Reset" value="Reset">
<div><br>
<table>
<tr><td bgcolor="LightGray">Event_id</td>
<td class="box"><input type="text" name="eventid" id="eventid" class="txt"></td></tr>
<tr><td bgcolor="LightGray">EventType</td>
<td class="box"><select class="sel" id="eventtype"><option>Select Event Type</option><option>Online</option><option>Offline</option><option>OnCampus</option><option>OffCampus</option></select></td></tr>
<tr><td bgcolor="LightGray">Date</td>
<td class="box"><input type="date" name="date" class="txt1" id ="fromdate"/> ~ <input type="date" name="DATE" class="txt1" id="todate"/></td></tr>
<tr><td bgcolor="LightGray">Technology</td>
<td class="box"><input type="text" name="technology" class="txt" id="technology"/></td></tr>
<tr><td bgcolor="LightGray">Experience</td>
<td class="box"><input type="text" name="experience" class="txt" id="experience"/></td></tr>
<tr><td bgcolor="LightGray">Advantage</td>
<td class="box"><textarea class="txtarea" id="advantage" ></textarea></td></tr>
<tr><td bgcolor="LightGray">Venue</td>
<td class="box"><textarea class="txtarea" id="venue"></textarea></td></tr>
<tr><td bgcolor="LightGray">Details</td>
<td class="box"><textarea class="txtarea" id="details"></textarea></td></tr>
</table>
</div></div>
</center>
</form>
</body>
</html>




