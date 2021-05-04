package com.project.Controller;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Student;
import com.project.dao.StudentDao;
import com.project.service.ForgotPassword;



/**
 * Servlet implementation class StudentForgotPassController
 */
@WebServlet("/StudentForgotPassController")
public class StudentForgotPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String email =null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentForgotPassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
email=request.getParameter("email");
		
		Student student=new Student();
		student.setEmail(email);
		System.out.println(email);
	
	
		try {
			
			StudentDao studDao=new StudentDao();
			ResultSet rs=studDao.studentforgotpass(student);
		/*	AdminService adminService = new AdminServiceImpl();*/
			System.out.println("welcome");
		
			if(rs.next()){
					String password=rs.getString(25);
					ForgotPassword forgotPass=new ForgotPassword();
					forgotPass.sendOnMail(email,password);
					request.setAttribute("sendPass", "Your password is sent successfully");
					System.out.println("Your password is sent successfully!...");
					RequestDispatcher rd=request.getRequestDispatcher("StudentLogin.jsp");
					rd.forward(request, response);
					
				}else{
					
					request.setAttribute("notsend", "Please enter valid email id");
					System.out.println("Your password is not sent");
					RequestDispatcher rd=request.getRequestDispatcher("Studentforgotpass.jsp");
					rd.forward(request, response);

				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
