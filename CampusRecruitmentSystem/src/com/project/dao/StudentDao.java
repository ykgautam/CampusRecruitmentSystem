package com.project.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.project.bean.Student;
import com.project.db.DBConnect;



public class StudentDao {

	
	Connection conn=DBConnect.getConnection();
	boolean flag=false;
	ResultSet rs=null;
	String query;
	

	public boolean createUser(Student create) {
		int index=0;
		query="insert into studenttbl(id,name,PRN,dob,branch,phone,email,address,sscboard,sscschool,sscmarks,hscboard,hsccollege,hscmarks,dipboard,dipcollege,dipmarks,beboard,becollege,bemarks,year,liveback,deadback,yeargap,password,photo,resume,interestedin) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt;
		
		try{
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, 0);
			pstmt.setString(2, create.getName());
			pstmt.setString(3, create.getPRN());
			pstmt.setString(4, create.getDob());
			pstmt.setString(5, create.getBranch());
			pstmt.setString(6, create.getPhone());
			pstmt.setString(7, create.getEmail());
			pstmt.setString(8, create.getAddress());
			pstmt.setString(9, create.getSscboard());
			pstmt.setString(10, create.getSscschool());
			pstmt.setString(11, create.getSscmarks());
			pstmt.setString(12, create.getHscboard());
			pstmt.setString(13, create.getHsccollege());
			pstmt.setString(14, create.getHscmarks());
			pstmt.setString(15, create.getDipboard());
			pstmt.setString(16, create.getDipcollege());
			pstmt.setString(17, create.getDipmarks());
			pstmt.setString(18, create.getBeboard());
			pstmt.setString(19, create.getBecollege());
			pstmt.setInt(20, create.getBemarks());
			pstmt.setString(21, create.getYear());
			pstmt.setString(22, create.getLiveback());
			pstmt.setString(23, create.getDeadback());
			pstmt.setString(24, create.getYeargap());
			pstmt.setString(25, create.getPassword());
			pstmt.setBlob(26,create.getPhoto());
			pstmt.setBlob(27,create.getResume());
			/*pstmt.setLong(26, create.getPhoto());
			pstmt.setLong(27, create.getResume());*/
			pstmt.setString(28, create.getInterestedin());
			
			
			index=pstmt.executeUpdate();
			
			if(index>0)
			{
				flag=true;
			}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return flag;
	}
	
	public boolean updatestudstatus(Student create) {
		int index=0;
		query="update studenttbl set status='"+create.getStatus()+"' where email='"+create.getEmail()+"'";
		PreparedStatement pstmt;
		
		try{
			pstmt=conn.prepareStatement(query);
			/*
			pstmt.setString(1, create.getName());
			pstmt.setString(2, create.getPRN());
			pstmt.setString(3, create.getBranch());
			pstmt.setString(4, create.getPhone());
			pstmt.setString(5, create.getEmail());
			pstmt.setString(6, create.getStatus());
*/
			index=pstmt.executeUpdate();
			
			if(index>0)
			{
				flag=true;
			}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return flag;
	}
	
	

	public static boolean StudentLogincheck(Student student) throws SQLException
	{
		boolean result=false;
		Connection con=DBConnect.getConnection();
		Statement psmt=con.createStatement();
		ResultSet rs=psmt.executeQuery("select * from studenttbl where email='"+student.getEmail()+"' and Password='"+student.getPassword()+"'" );
		
		
		
		while(rs.next())
		{
			result=true;
		}
		
		return result;
	}
	
	
	public ResultSet studentforgotpass(Student student) {
		try {
			Statement stmt;
			//query="select * from registration where emailId='"+user.getEmail()+"'";
			query="select * from  studenttbl where email='"+student.getEmail()+"'";
		
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	
	public ResultSet getallstudents(String email) {
		try {
			Statement stmt;
			query="select * from studenttbl where email='"+email+"'";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	
}
	
	public ResultSet getallstudentsstatus(String email) {
		try {
			Statement stmt;
			query="select * from studenttbl where email='"+email+"'";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	
}
	
	public ResultSet getallstudents1() {
		try {
			Statement stmt;
			query="select * from studenttbl";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	
}
	
	public ResultSet geteligiblestud(int criteriaMarks) {
		try {
			Statement stmt;
			query="select * from studenttbl where bemarks>="+criteriaMarks;
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
		
		
	
}
	
	public boolean updateStudProfile(Student student) {
		boolean flag=false;
		
		String sql = "update studenttbl set name='"+student.getName()+"',PRN='"+student.getPRN()+"',dob='"+student.getDob()+"',branch='"+student.getBranch()+"',phone='"+student.getPhone()+"',email='"+student.getEmail()+"',address='"+student.getAddress()+"',sscboard='"+student.getSscboard()+"',sscschool='"+student.getSscschool()+"',sscmarks='"+student.getSscmarks()+"',hscboard='"+student.getHscboard()+"',hsccollege='"+student.getHsccollege()+"',hscmarks='"+student.getHscmarks()+"',dipboard='"+student.getDipboard()+"',dipcollege='"+student.getDipcollege()+"',dipmarks='"+student.getDipmarks()+"',beboard='"+student.getBeboard()+"',becollege='"+student.getBecollege()+"',bemarks='"+student.getBemarks()+"',year='"+student.getYear()+"',liveback='"+student.getLiveback()+"',deadback='"+student.getDeadback()+"',yeargap='"+student.getYeargap()+"',password='"+student.getPassword()+"',photo=?,resume=?,interestedin='"+student.getInterestedin()+"' where email='"+student.getEmail()+"'";
		System.out.println("sql"+sql);
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setBlob(1, student.getPhoto());
			pstmt.setBlob(2, student.getResume());
			int index = pstmt.executeUpdate();
			if(index>0){
				flag=true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public ResultSet getstudresult2(String email) {
		ResultSet rs = null;
		query="select *  from exams where email='"+email+"'";

		
		try{
			    Statement stmt=conn.createStatement();
			    rs=stmt.executeQuery(query);
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		return rs;
	}

}
