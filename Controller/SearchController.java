package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		HttpSession session = request.getSession(true);
		List list=new ArrayList();
		Connection con = null;

		String url = "jdbc:oracle:thin:@10.17.3.30:1521:orcl";
     	String user = "hr";
	    String pass = "hr";

		String name="";
		String category="";
		String technology="";
		name=request.getParameter("name");
		category=request.getParameter("category");
		String sql="select * from join where name like '%"+name+"' or category like '%"+category+"' or technology like '%"+technology+"'";
		
		if(name!=null && !(name.equals(""))){
		sql+=" and name='"+name+"'";
		}
		if(category!=null && !(category.equals("-1"))){
		sql+=" and category='"+category+"'";
		}
		if(technology!=null && !(technology.equals("-1"))){
			sql+=" and technology='"+technology+"'";
			}
		
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, user, pass);
		try{
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
		List li=new ArrayList();
		li.add(rs.getString(1));
		li.add(rs.getString(3));
		li.add(rs.getString(4));
		li.add(rs.getString(6));
		li.add(rs.getString(7));
		li.add(rs.getString(8));
		li.add(rs.getString(9));
		list.add(li);
		}
		}catch (SQLException s){
		System.out.println("SQL statement is not executed!");
		}
		}
		catch (Exception e){
		e.printStackTrace();
		}
		request.setAttribute("list",list); 
		request.getRequestDispatcher("Recruitment.jsp/Search.jsp").forward(request, response);
		
		}

		
	}


