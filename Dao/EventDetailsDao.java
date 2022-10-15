package Dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.xml.ws.Response;

import JDBC.RecruitmentJDBC;
import Model.EventDetailsModel;

public class EventDetailsDao {
	public int Event(EventDetailsModel ed) {
	
		int status = 0;
		try {
			Connection conn = RecruitmentJDBC.getConnection();

			PreparedStatement ps = null;

			String sql = "insert into event(eventid,eventtype,fromdate,todate,technology,experience,advantage,venue,details) values(?,?,?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, ed.getEventid());
			ps.setString(2, ed.getEventtype());
			ps.setString(3, ed.getFromdate());
			ps.setString(4, ed.getTodate());
			ps.setString(5, ed.getTechnology());
			ps.setString(6, ed.getExperience());
			ps.setString(7, ed.getAdvantage());
			ps.setString(8, ed.getVenue());
			ps.setString(9, ed.getDetails());

			status = ps.executeUpdate();
			if (status > 0) {

				conn.close();
			}
			
           
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return status;
	}

}
