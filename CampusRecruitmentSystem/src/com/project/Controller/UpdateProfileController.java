package com.project.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.project.bean.Student;
import com.project.dao.StudentDao;

/**
 * Servlet implementation class UpdateProfileController
 */
@WebServlet("/UpdateProfileController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class UpdateProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateProfileController() {
		super();
		// TODO Auto-generated constructor stub
	}

	InputStream photo = null;
	InputStream resume = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * 
	 * 
	 *      /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		/* String email=request.getParameter("email"); */

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		System.out.println("email" + email);

		if (email != null) {
			email = request.getParameter("email");
			System.out.println("email:" + email);
			String name = request.getParameter("name");
			System.out.println("name" + name);
			String PRN = request.getParameter("PRN");
			String dob = request.getParameter("dob");
			String branch = request.getParameter("branch");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String sscboard = request.getParameter("sscboard");
			String sscschool = request.getParameter("sscschool");
			String sscmarks = request.getParameter("sscmarks");
			String hscboard = request.getParameter("hscboard");
			String hsccollege = request.getParameter("hsccollege");
			String hscmarks = request.getParameter("hscmarks");
			String dipboard = request.getParameter("dipboard");
			String dipcollege = request.getParameter("dipcollege");
			String dipmarks = request.getParameter("dipmarks");
			String beboard = request.getParameter("beboard");
			String becollege = request.getParameter("becollege");
			int bemarks = Integer.parseInt(request.getParameter("bemarks"));
			String year = request.getParameter("year");
			String liveback = request.getParameter("liveback");
			String deadback = request.getParameter("deadback");
			String yeargap = request.getParameter("yeargap");
			String password = request.getParameter("password");
			String interestedin = request.getParameter("interestedin");
			Part filePart = request.getPart("photo");
			Part filePart1 = request.getPart("resume");
			if (filePart != null) {
				photo = filePart.getInputStream();
				System.out.println("Size is:" + photo.available());

				if (filePart1 != null)
					resume = filePart1.getInputStream();
				System.out.println("Size is:" + resume.available());

			}
			Student student = new Student();
			student.setEmail(email);
			student.setName(name);
			student.setPRN(PRN);
			student.setDob(dob);
			student.setBranch(branch);
			student.setPhone(phone);
			student.setAddress(address);
			student.setSscboard(sscboard);
			student.setSscschool(sscschool);
			student.setSscmarks(sscmarks);
			student.setHscboard(hscboard);
			student.setHsccollege(hsccollege);
			student.setHscmarks(hscmarks);
			student.setDipboard(dipboard);
			student.setDipcollege(dipcollege);
			student.setDipmarks(dipmarks);
			student.setBeboard(beboard);
			student.setBecollege(becollege);
			student.setBemarks(bemarks);
			student.setYear(year);
			student.setLiveback(liveback);
			student.setDeadback(deadback);
			student.setYeargap(yeargap);
			student.setPassword(password);
			student.setPhoto(photo);
			student.setResume(resume);
			student.setInterestedin(interestedin);

			String photo = extractFileName(filePart);
			String resume = extractFileName(filePart);

			InputStream inputStream = null;

			photo = extractFileName(filePart);
			student.setFileName(photo);
			System.out.println("photo," + photo);

			resume = extractFileName(filePart1);
			student.setFileName1(resume);
			System.out.println("resume," + resume);

			StudentDao std = new StudentDao();

			if (std.updateStudProfile(student)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Personal Details updated Successfully...!!!');");
				out.println("location='studentviewprofile.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Not Updated...Try again..!!!');");
				out.println("location='updateProfile.jsp';");
				out.println("</script>");
			}
		}
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}
