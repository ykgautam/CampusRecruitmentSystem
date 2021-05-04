package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//import connection.ConnectionUtils;
//import bean.Admin;
//import bean.URL;

import com.project.bean.Admin;
import com.project.db.DBConnect;

public class AdminDaoImpl implements AdminDao{

	String query=null;
	ResultSet rs=null;
	Connection conn=DBConnect.getConnection();
	boolean flag=false;
		
	@Override
	public Admin selectAdmin(String email, String password) {
		Admin admin=new Admin();
		try{
			
		query="select * from admintbl where emailid='"+email+"' and password='"+password+"'";

		Statement stmt=DBConnect.getConnection().createStatement();
		rs=stmt.executeQuery(query);
		if(rs.next())
		{
			admin.setId(rs.getInt(1));
			
			admin.setEmail(rs.getString(2));
			admin.setPassword(rs.getString(3));	
			admin.setUname(rs.getString(4));
			
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}

	@Override
	public ResultSet viewAllUsers() {
	try {
		 	Statement stmt;
		 	query="select * from usertbl";
		 	System.out.println(query);
		 	stmt=conn.createStatement();
		 	rs=stmt.executeQuery(query);
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
		
	}
	
	@Override
	public ResultSet viewAllGmailUsers() {
	try {
		 	Statement stmt;
		 	query="select * from gmailusertbl";
		 	System.out.println(query);
		 	stmt=conn.createStatement();
		 	rs=stmt.executeQuery(query);
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
		
	}
	
	@Override
	public ResultSet checkPassword(String email, String old_password) {
		try{
			Statement stmt;
			query="select * from admintbl where emailid='"+email+"' and password='"+old_password+"'";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rs;	
	}

	@Override
	public boolean changePassword(String email, String confirm_password) {
		boolean flag=false;
		String sql = "update admintbl set password='"+confirm_password+"' where emailid='"+email+"'";
		try
		{
			PreparedStatement pstmt=DBConnect.getConnection().prepareStatement(sql);
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