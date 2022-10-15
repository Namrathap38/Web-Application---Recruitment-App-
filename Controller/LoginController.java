package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.LoginDao;
import Model.Login;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.setContentType("text/html");
				HttpSession session = request.getSession();
				//PrintWriter out = response.getWriter();
				String userid = request.getParameter("userid");
				//System.out.println(username);
				String password = request.getParameter("password");
				//System.out.println(password);
				
				
				Login log = new Login();
				log.setUserid(userid);
				log.setPassword(password);
//				HttpSession session=request.getSession();
//				session.setAttribute("Username", username);
			
				
				

				LoginDao dao = new LoginDao();
				int status = dao.login(userid, password);
				System.out.println(status);
				if(status > 0){
					String smessage = "Login Successfull....";
					response.getWriter().write(smessage);
					session.setAttribute("loggedInUser_userName", userid);
				}else{
					String fmessage = "Login Failure....!";
					response.getWriter().write(fmessage);
				}
			}

			

		}

	


