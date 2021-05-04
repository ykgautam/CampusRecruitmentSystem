package com.project.service;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.bean.Admin;
import com.project.dao.AdminDao;
import com.project.dao.AdminDaoImpl;

public class AdminServiceImpl implements AdminService{
	
	AdminDao adminDao=new AdminDaoImpl();

	@Override
	public Admin selectAdmin(String email, String password) {
		// TODO Auto-generated method stub
		return adminDao.selectAdmin(email, password);
	}
	
	@Override
	public ResultSet viewAllUsers() {
		// TODO Auto-generated method stub
		return adminDao.viewAllUsers();
	}
	
	@Override
	public ResultSet viewAllGmailUsers() {
		// TODO Auto-generated method stub
		return adminDao.viewAllGmailUsers();
	}
	

	@Override
	public ResultSet checkPassword(String email, String old_password) {
		// TODO Auto-generated method stub
		return adminDao.checkPassword(email, old_password);
	}

	@Override
	public boolean changePassword(String email, String confirm_password) {
		// TODO Auto-generated method stub
		return adminDao.changePassword(email, confirm_password);
	}
}