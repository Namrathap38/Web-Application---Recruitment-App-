package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Recruitment_Register1;
import JDBC.RecruitmentJDBC;
import Model.Recruitment_JoinDetails;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//Recruitment_JoinDetails joindetails = new Recruitment_JoinDetails();
		PrintWriter out = response.getWriter();
		String select[] = request.getParameterValues("name1"); 
		
	    if (select != null && select.length != 0) {
	        out.println("You have selected: ");
	        for (int i = 0; i < select.length; i++) {
	    			response.sendRedirect("Recruitment_JoinDetails_Home.jsp");
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
	    out.print(vwarnid);
	    
	    try {
	    	Connection c = RecruitmentJDBC.getConnection();
	        Statement st = c.createStatement();
	        PreparedStatement pst = c.prepareStatement
	            ("delete from joindetails where email    IN('"+vwarnid +"')");
	        int i=pst.executeUpdate();
	        //out.print(i);
	        out.println("deleted");
	    } catch(Exception e) {
	    }
	}

}
