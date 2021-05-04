package com.project.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String user_email=null;
       String email=null;
       HttpSession session;
       
    public LogoutController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user_email=request.getParameter("user_email");
		email=request.getParameter("email");
		
		if(user_email!=null)
		{
			session=request.getSession();
			session.invalidate();
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else
		{
			if(email!=null)
			session=request.getSession();
			session.invalidate();
			RequestDispatcher rd=request.getRequestDispatcher("adminLogin.jsp");
			rd.forward(request, response);
		}
	}

}
