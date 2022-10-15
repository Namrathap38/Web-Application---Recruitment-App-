package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JDBC.RecruitmentJDBC;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
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
	    int status = 0;
	    try {
	    	Connection c = RecruitmentJDBC.getConnection();
	        Statement st = c.createStatement();
	        PreparedStatement pst = c.prepareStatement
	            ("delete from resumes where email    IN('"+vwarnid +"')");
	        status=pst.executeUpdate();
	        System.out.println(status);
	        if(status > 0){
	        	String smessage = "Deleted";
	        	response.getWriter().write(smessage);
	        }else{
	        	String fmessage = "Not";
	        	response.getWriter().write(fmessage);
	        }
	        System.out.println("deleted");
	    } catch(Exception e) {
	    }
	}

}
