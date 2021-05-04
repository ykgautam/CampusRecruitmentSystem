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
 * Servlet implementation class StudentRegController
 */
@WebServlet("/StudentRegController")
@MultipartConfig(maxFileSize = 1024 * 1024 * 50)


public class StudentRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
	}

	 String name=null;
	 String PRN=null;
	 String dob=null;
	 String branch=null;
	 String phone=null;
	 String email= null;
	 String address=null;
	 String sscboard=null;
	 String sscschool=null;
	 String sscmarks=null;
	 String hscboard=null;
	 String hsccollege=null;
	 String hscmarks=null;
	 String dipboard=null;
	 String dipcollege=null;
	 String dipmarks=null;
	 String beboard=null;
	 String becollege=null;
	int bemarks=0;
	 String year=null;
	 String liveback=null;
	 String deadback=null;
	 String yeargap=null;
	 String password=null;
	 InputStream photo=null;
	 InputStream resume=null;
	/* String photo=null;
	 String resume=null;*/
	 String interestedin=null;

	 Student student=new Student();
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 HttpSession session=request.getSession();
		
	PrintWriter out=response.getWriter();
	
		System.out.println("in servlet");
		name=request.getParameter("name");
		PRN=request.getParameter("PRN");
		dob=request.getParameter("dob");
		branch=request.getParameter("branch");
		phone=request.getParameter("phone");
		email=request.getParameter("email");
		address=request.getParameter("address");
		sscboard=request.getParameter("sscboard");
		sscschool=request.getParameter("sscschool");
		sscmarks=request.getParameter("sscmarks");
		hscboard=request.getParameter("hscboard");
		hsccollege=request.getParameter("hsccollege");
		hscmarks=request.getParameter("hscmarks");
		dipboard=request.getParameter("dipboard");
		dipcollege=request.getParameter("dipcollege");
		dipmarks=request.getParameter("dipmarks");
		beboard=request.getParameter("beboard");
		becollege=request.getParameter("becollege");
		bemarks=Integer.parseInt(request.getParameter("bemarks"));
		year=request.getParameter("year");
		liveback=request.getParameter("liveback");
		deadback=request.getParameter("deadback");
		yeargap=request.getParameter("yeargap");
		password=request.getParameter("password");
		Part filePart = request.getPart("photo");
		Part filePart1 = request.getPart("resume");
		interestedin=request.getParameter("interestedin");
		
		 if (filePart != null)
		 {
			 photo=filePart.getInputStream();
			 System.out.println("Size is:"+photo.available());
			 /*profileName=extractFileName(part);
			 System.out.println("Name is:"+profileName);*/
			 resume=filePart1.getInputStream();
			 System.out.println("Size is:"+resume.available());
			
		 }
		 

			/* student.setPhoto(filePart.getInputStream());
				student.setResume(filePart.getInputStream());	*/
		
			
			student.setName(name);
			student.setPRN(PRN);
			student.setDob(dob);
			student.setBranch(branch);
			student.setPhone(phone);
			student.setEmail(email);
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
			student.setInterestedin(interestedin);
			student.setPhoto(photo);
			student.setResume(resume);
			
			/*InputStream photo=null;*/
			
			String photo = extractFileName(filePart);
			String resume = extractFileName(filePart);
			
			InputStream inputStream = null;
		
			
		    photo = extractFileName(filePart);
			student.setFileName(photo);
			System.out.println("photo," + photo);
			
			resume = extractFileName(filePart1);
			student.setFileName1(resume);
			System.out.println("resume," + resume);
	
     
			StudentDao sd=new StudentDao();
     
    boolean b=sd.createUser(student);
    System.out.println("b: "+b);
   if(b)
			 {
				

		    	    response.setContentType("text/html");  
					out.println("<script type=\"text/javascript\">");  
					out.println("alert('Sucessfully Register...!!!');");
					out.println("location='StudentLogin.jsp';");
					out.println("</script>");
			 }
			      else
			      {

			    	  response.setContentType("text/html");  
						out.println("<script type=\"text/javascript\">");  
						out.println("alert('Sorry,Not Sucessfully Register');");
						out.println("location='StudentReg.jsp';");
						out.println("</script>");
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
