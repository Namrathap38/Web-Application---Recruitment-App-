<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
    String select[] = request.getParameterValues("name1"); 

    if (select != null && select.length != 0) {
        out.println("You have selected: ");
        for (int i = 0; i < select.length; i++) {
        	response.sendRedirect("RecruitmentHome.jsp");
            out.println(select[i]); 
        }
    }

    String selected="";
    StringBuffer sb = new StringBuffer(); 

    for(int i = 0; i < select.length; i++) {
        sb.append(select[i] + ",");
    }

    String vwarnid = sb.toString(); 
    vwarnid = vwarnid.substring(0, vwarnid.length()-1);
    //out.print(vwarnid);

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection c = DriverManager.getConnection("jdbc:oracle:thin:@10.17.3.28:1521:ORCL","hr","hr");
        Statement st = c.createStatement();
        PreparedStatement pst = c.prepareStatement
            ("delete from resumes where email    IN('"+vwarnid +"')");
        int i=pst.executeUpdate();
        out.print(i);
        out.println("deleted");
    } catch(Exception e) {
    }
%>
</body>
</html>