package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Recruitment_Register1;
import Model.Recruitment_JoinDetails;


/**
 * Servlet implementation class Recruitment_JOINRegister_Update
 */
@WebServlet("/Recruitment_JOINRegister_Update")
public class Recruitment_JOINRegister_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		System.out.println("aaaaaaaaa"+name);
		String email_id=request.getParameter("email_id");
		System.out.println(email_id);
		String category=request.getParameter("category");
		System.out.println(category);
		String technology=request.getParameter("technology");
		System.out.println(technology);
		String contact_no=request.getParameter("contact_no");
		System.out.println(contact_no);
		String years=request.getParameter("years");
		System.out.println(years);
		String months=request.getParameter("months");
		System.out.println(months);
		String join_team=request.getParameter("join_team");
		System.out.println(join_team);
		String join_date=request.getParameter("join_date");
		System.out.println(join_date);
		
		
		Recruitment_JoinDetails joindetails = new Recruitment_JoinDetails();
		joindetails.setName(name);
		joindetails.setEmail_id(email_id);
		joindetails.setCategory(category);
		joindetails.setTechnology(technology);
		joindetails.setContact_no(contact_no);
		joindetails.setYears(years);
		joindetails.setMonths(months);
		joindetails.setJoin_team(join_team);
		joindetails.setJoin_date(join_date);
		
		Recruitment_Register1  reg = new Recruitment_Register1();
		int status=reg.join(joindetails);
		if(status==1){
			String smessage="Details Registered Successfully!";
			response.getWriter().write(smessage);
	             
	    }
		         else
		         {
		        	     String fmessage="Details not Registered Properly!";
			 			response.getWriter().write(fmessage);
			            
			         
					
			         }
		         
		    }
	
		
	


	}

