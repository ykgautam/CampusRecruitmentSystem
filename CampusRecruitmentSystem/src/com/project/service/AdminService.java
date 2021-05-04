package com.project.service;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.bean.Admin;

public interface AdminService {

	Admin selectAdmin(String email, String password);
	
	public ResultSet viewAllUsers();
	public ResultSet viewAllGmailUsers();

	ResultSet checkPassword(String email, String old_password);

	boolean changePassword(String email, String confirm_password);
}
