package com.project.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.project.bean.Student;
import com.project.dao.StudentDao;

/**
 * Servlet implementation class UpdatestudstatusController
 */
@WebServlet("/UpdatestudstatusController")
public class UpdatestudstatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdatestudstatusController() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		/* String email=request.getParameter("email"); */
		HttpSession session = request.getSession(true);
		String email=(String) session.getAttribute("studdentemail");
	
		System.out.println("email:" + email);

		if (email != null) {

			String name = request.getParameter("name");
			System.out.println("name" + name);
			String PRN = request.getParameter("PRN");

			String branch = request.getParameter("branch");
			String phone = request.getParameter("phone");
			String status = request.getParameter("status");

			Student student = new Student();
			student.setEmail(email);
			student.setName(name);
			student.setPRN(PRN);
			student.setBranch(branch);
			student.setPhone(phone);
			student.setStatus(status);

			StudentDao std = new StudentDao();

			if (std.updatestudstatus(student)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('updated Successfully...!!!');");
				out.println("location='viewstuddetails.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Not Updated...Try again..!!!');");
				out.println("location='updatestudstatus.jsp';");
				out.println("</script>");
			}
		}

	}
}
