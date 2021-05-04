package com.project.dao;


import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.bean.Admin;



public interface AdminDao {

	Admin selectAdmin(String email, String password);

	ResultSet viewAllUsers();
	ResultSet viewAllGmailUsers();

	ResultSet checkPassword(String email, String old_password);
	


	boolean changePassword(String email, String confirm_password);

}