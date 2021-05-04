package com.project.Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.bean.Student;
import com.project.dao.StudentDao;




/**
 * Servlet implementation class StudentLoginController
 */
@WebServlet("/StudentLoginController")
public class StudentLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    RequestDispatcher rd=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
	
	
		
	String Email = request.getParameter("Email");
	String Password = request.getParameter("Password");
	
	Student std=new Student();
	std.setEmail(Email);
	std.setPassword(Password);
	
	HttpSession session=null;
	
	session=request.getSession();
	session.setAttribute("email", std.getEmail());

	StudentDao sfd = new StudentDao();


	try {
		
		if (StudentDao.StudentLogincheck(std))
			
		{
			/* response.sendRedirect("AdminHome.jsp");*/
			out.print("<script type='text/javascript'>");
			out.print("alert('Login Successfully...');");
			out.println("location='StudentHome.jsp';");
			out.print("</script>");
			
		} 
		else {
			/*response.sendRedirect("AdminLogin.jsp");*/
			out.print("<script type=\"text/javascript\">");
			out.print("alert('Email or password incorrect');");
			out.println("location='StudentLogin.jsp';");
			out.print("</script>");
}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 

	}
}
