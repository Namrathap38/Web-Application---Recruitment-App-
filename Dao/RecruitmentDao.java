package Dao;

import java.sql.*;
import JDBC.RecruitmentJDBC;
import Model.RecruitmentResumeModel;
import Service.Recruitment;

public class RecruitmentDao implements Recruitment {

	@Override
	public int register(RecruitmentResumeModel resumes) {
		// TODO Auto-generated method stub
		int status = 0;
		try{
			Connection conn = RecruitmentJDBC.getConnection();
			PreparedStatement ps = null;
			String sql = "insert into resumes values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, resumes.getName());
			ps.setString(2, resumes.getEmail());
			ps.setString(3, resumes.getCategory());
			ps.setString(4, resumes.getMedia());
			ps.setString(5, resumes.getTechnology());
			ps.setString(6, resumes.getContact());
			ps.setString(7, resumes.getYear());
			ps.setString(8, resumes.getMonth());
			ps.setString(9, resumes.getRef());
			ps.setString(10, resumes.getTech1());
			ps.setString(11, resumes.getTech2());
			ps.setString(12, resumes.getTech3());
			ps.setString(13, resumes.getTech4());
			ps.setString(14, resumes.getTech5());
			ps.setString(15, resumes.getTech6());
			ps.setString(16, resumes.getScript1());
			ps.setString(17, resumes.getScript2());
			ps.setString(18, resumes.getScript3());
			ps.setString(19, resumes.getData1());
			ps.setString(20, resumes.getData2());
			ps.setString(21, resumes.getData3());
			ps.setString(22, resumes.getFilename());
			ps.setString(23, resumes.getEventid());
			ps.setString(24, resumes.getEventname());
		    status = ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

}
