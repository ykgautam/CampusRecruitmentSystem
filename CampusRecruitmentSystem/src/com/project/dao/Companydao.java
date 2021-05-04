package com.project.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.bean.Student;
import com.project.bean.company;
import com.project.db.DBConnect;




public class Companydao {
	
	Connection con=DBConnect.getConnection();
	static boolean flag=false;
	static int index=0;
	ResultSet rs=null;
	String query;
	public static boolean addcompany(company add) {
		try
		{
	   String query="insert into addcompany_tbl(post_id,post_title, company,location,salary,industry,designation, employment_type, criteria,skill_set,post_date,rec_email,qualification,passout_year) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=DBConnect.getConnection().prepareStatement(query);
		
		pstmt.setInt(1, 0);
		
		pstmt.setString(2, add.getPost_title());
		pstmt.setString(3, add.getCompany());
		pstmt.setString(4, add.getLocation());
	/*	pstmt.setString(5, add.getFrom_experience());	
		pstmt.setString(6, add.getTo_experience());*/
		pstmt.setString(5, add.getSalary());
		pstmt.setString(6, add.getIndustry());
		pstmt.setString(7, add.getDesignation());
		pstmt.setString(8, add.getEmployment_type());
		pstmt.setString(9, add.getCriteria());
		pstmt.setString(10, add.getSkill_set());
		/*pstmt.setString(13, add.getJob_description());*/
		pstmt.setString(11, add.getPost_date());
	/*	pstmt.setString(12, add.getLast_date());*/
		pstmt.setString(12, add.getRec_email());
		pstmt.setString(13, add.getQualification());
		pstmt.setString(14, add.getPassout_year());
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
	
	public ResultSet getallcompany() {
		try {
			Statement stmt;
			query="select * from addcompany_tbl";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	
	public static boolean schedulecompany(company schedule) {
		try
		{
	   String query="insert into schedulecompany_tbl(id,company,schcriteria, Date,Venu,Time,CTC,profile) values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=DBConnect.getConnection().prepareStatement(query);
		
		pstmt.setInt(1, 0);
		pstmt.setString(2, schedule.getCompany());
		pstmt.setString(3, schedule.getSchcriteria());
		pstmt.setString(4, schedule.getDate());
		pstmt.setString(5, schedule.getVenu());
		pstmt.setString(6, schedule.getTime());
		pstmt.setString(7, schedule.getCtc());
		pstmt.setString(8, schedule.getProfile());

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

	public ResultSet getallschedulecompany() {
		try {
			Statement stmt;
			query="select * from schedulecompany_tbl ORDER BY id DESC";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	
	public ResultSet getschcompdetails(String company,String schcriteria ) {
		try {
			Statement stmt;
			query="select * from schedulecompany_tbl where company ='"+company+"' and schcriteria='"+schcriteria+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	
	public ResultSet selectschedulecompany(int id) {
		try {
			Statement stmt;
			query="select * from schedulecompany_tbl where id ='"+id+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	
	public boolean updatecompanyschedule(company comp) {
		boolean flag=false;
		String sql = "update schedulecompany_tbl set company='"+comp.getCompany()+"', schcriteria='"+comp.getSchcriteria()+"', Date='"+comp.getDate()+"',Venu='"+comp.getVenu()+"',Time='"+comp.getTime()+"',CTC='"+comp.getCtc()+"' where company='"+comp.getCompany()+"'";
		System.out.println("sql "+sql);
		try
		{
			PreparedStatement pstmt = con.prepareStatement(sql);
			int index = pstmt.executeUpdate();
			if(index>0){
				flag=true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	

}
