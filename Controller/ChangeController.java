package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Login;
import Dao.LoginDao;


/**
 * Servlet implementation class ChangeController
 */
@WebServlet("/ChangeController")
public class ChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		//System.out.println(password);
		String newpass = request.getParameter("newpass");
		//System.out.println(newpassword);
		//String retypepassword=request.getParameter("newpass");
	//System.out.println(retypepassword);
			Login log = new Login();
			log.setUserid(userid);
            log.setPassword(newpass);
		
	
		LoginDao dao = new LoginDao();
		int status = dao.change(log);
		System.out.println(status);
		if(status == 1){
			String smessage = "Changing password  Successfull....";
			response.getWriter().write(smessage);
		}else{
			String fmessage = "Changing password  Failed...";
			response.getWriter().write(fmessage);
	}

}
}
