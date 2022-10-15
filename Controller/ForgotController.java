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
 * Servlet implementation class ForgotController
 */
@WebServlet("/ForgotController")
public class ForgotController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String String = null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		System.out.println("getting"+userid);
		String epassword = request.getParameter("epassword");
		//System.out.println(epassword);
//		String cpassword=request.getParameter("cp");
	//System.out.println(confirmpassword);
		
		Login log = new Login();
		log.setUserid(userid);
		log.setPassword(epassword);
//		HttpSession session=request.getSession();
//		session.setAttribute("Username", username);
	System.out.println("controller"+log.getPassword());
		
		LoginDao dao = new LoginDao();
		int status = dao.forgot(log);
		System.out.println(status);
		if(status > 0){
			String smessage = "Forgot password  Successfull....";
			response.getWriter().write(smessage);
		}else{
			String fmessage = "Forgot password  Failed...";
			response.getWriter().write(fmessage);
	}

}
}
