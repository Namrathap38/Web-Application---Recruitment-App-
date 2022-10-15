package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Service.LoginService;
import Model.Login;
import JDBC.RecruitmentJDBC;


public class LoginDao implements LoginService {

	public int login(String userid, String password) {
		int status = 0;
		try {

			Connection conn = RecruitmentJDBC.getConnection();
			PreparedStatement ps = null;
			// Statement stmt = conn.createStatement();
			String sql = "select userid,password from login";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				String check_name = rs.getString("userid");
				String check_password = rs.getString("password");
				System.out.println(check_name);
				System.out.println(check_password);
				Login registration = new Login();
				registration.setUserid(check_name);
				registration.setPassword(check_password);
				if ((userid.equals(check_name))
						&& (password.equals(check_password))) {

					status = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;

	}

	@Override
	public int forgot(Login log) {
		// TODO Auto-generated method stub
		int status = 0;
		try {
			Connection conn = RecruitmentJDBC.getConnection();
			PreparedStatement ps = null;
			
			String sql = "update login set password=? where userid=?";
			ps=conn.prepareStatement(sql);
			System.out.println(log.getPassword());
			
			ps.setString(1, log.getPassword());
			ps.setString(2, log.getUserid());
			
			
			
			status=ps.executeUpdate();
//			ps = conn.prepareStatement(sql);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				if (log.getUserid() == rs.getString("userid")) {
//                     System.out.println("equal");
//					String sql1 = "update stud11 set password=? where userid='dev@123'";
//				    ps=conn.prepareStatement(sql1);
//					ps.setString(2, log.getPassword());
//					status = ps.executeUpdate();
//				}
//			}

		} catch (Exception se) {
			se.printStackTrace();
		}
		return status;
	}

	@Override
	public int change(Login log) {
		// TODO Auto-generated method stub
		int status = 0;
		try {
			Connection conn = RecruitmentJDBC.getConnection();
			PreparedStatement ps = null;
			String sql = "update login set password=? where userid=?";
			ps=conn.prepareStatement(sql);
			System.out.println(log.getPassword());
			
			ps.setString(1, log.getPassword());
			ps.setString(2, log.getUserid());
			
			
			
			status=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}
