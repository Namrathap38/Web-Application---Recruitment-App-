package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import JDBC.RecruitmentJDBC;
import Model.Recruitment_JoinDetails;
import Service.Recruitment_Register;

public class Recruitment_Register1 implements Recruitment_Register {

	@Override
	public int join(Recruitment_JoinDetails joindetails) {
	  
		int status=0;
		try{
		Connection connect = RecruitmentJDBC.getConnection();
		
		PreparedStatement ps =null;
		
		  
	    	String sql="insert into joindetails values(?,?,?,?,?,?,?,?,?)";
	    	ps = connect.prepareStatement(sql);
	    	ps.setString(1, joindetails.getName());
	    	ps.setString(2, joindetails.getEmail_id());
	    	ps.setString(3, joindetails.getCategory());
	    	ps.setString(4, joindetails.getTechnology());
	    	ps.setString(5, joindetails.getContact_no());
	    	ps.setString(6, joindetails.getYears());
	    	ps.setString(7, joindetails.getMonths());
	    	ps.setString(8, joindetails.getJoin_team());
	    	ps.setString(9, joindetails.getJoin_date());            
	    				
System.out.println("dao"+joindetails.getName());
	    				
				status= ps.executeUpdate();
				} catch (SQLException e) {
					System.out.println(e);
		}
	    
			
	    
	    return status;
	}

	@Override
	public int delete(Recruitment_JoinDetails joindetails) {
		// TODO Auto-generated method stub
		int status=0;
		
		
           String sql="delete from joindetails where email=?";
           try{
        	   Connection connect = RecruitmentJDBC.getConnection();
        	   PreparedStatement ps=connect.prepareStatement(sql);
						
						ps.setString(2, joindetails.getEmail_id());
						
						ps.executeUpdate();
						
						} catch (Exception e) {
						e.printStackTrace();
					
						}
           return status;
						}
}  
					
					
			    

