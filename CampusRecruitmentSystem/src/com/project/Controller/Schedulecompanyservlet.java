package com.project.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.bean.company;
import com.project.dao.Companydao;

/**
 * Servlet implementation class Schedulecompanyservlet
 */
@WebServlet("/Schedulecompanyservlet")
public class Schedulecompanyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Schedulecompanyservlet() {
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

    int id=0;
	 String company=null;
	 String Date=null;
	 String schcriteria=null;
	 String time=null;
	 String venu=null;
	 String ctc=null;
	 String profile=null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String action=request.getParameter("action");
		
		HttpSession session=request.getSession();
		String rec_email=(String)session.getAttribute("email");
		
	/*	PostJob post=new PostJob();
		RecruiterService recruiterService=new RecruiterServiceImpl();*/
		company company1=new company();
		Companydao companydao=new Companydao();
		
		if(action.equalsIgnoreCase("PostJobs"))
		{
			  company=request.getParameter("company");
			  Date=request.getParameter("date");
			  schcriteria=request.getParameter("schcriteria");
			  time=request.getParameter("time");
			  venu=request.getParameter("venu");
			  ctc=request.getParameter("ctc");
			  profile=request.getParameter("profile");
		
			  
			  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			  Date date = new Date();
			  Date=dateFormat.format(date); 
			  
			  company1.setCompany(company);
			  company1.setDate(Date);
			  company1.setSchcriteria(schcriteria);
			  company1.setTime(time);
			  company1.setVenu(venu);
			  company1.setCtc(ctc);
			  company1.setProfile(profile);
			
		
			 
			  if(Companydao.schedulecompany(company1))
			  {
				  	out.println("<script type=\"text/javascript\">");  
					out.println("alert('Successfully...!!!');");
					out.println("location='Tpohome.jsp';");
					out.println("</script>");
			  }
			  else
			  {
				  	out.println("<script type=\"text/javascript\">");  
					out.println("alert(' Not  Successfully...!!!');");
					out.println("location='schedulecompany.jsp';");
					out.println("</script>");
			  }
			  
			  
		}
		else
		{
			
		}
		
		
	}
}
