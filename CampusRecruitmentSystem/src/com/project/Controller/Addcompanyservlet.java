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
 * Servlet implementation class Addcompanyservlet
 */
@WebServlet("/Addcompanyservlet")
public class Addcompanyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcompanyservlet() {
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

	 int post_id=0;
	 String company=null;
	 String post_title=null;
	 String location=null;
	/* String from_experience=null;
	 String to_experience=null;*/
	 String salary=null;
	 String industry=null;
	 String designation=null;
	 String employment_type=null;
	 String skill_set=null;
	/* String job_description=null;*/
	/* String last_date=null;*/
	 String post_date=null; 
	 String qualification=null;
	 String passout_year=null;
	 String criteria=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		/*String action=request.getParameter("action");*/
		
		HttpSession session=request.getSession();
		String rec_email=(String)session.getAttribute("email");
		
		
		  post_title=request.getParameter("post_title");
		  company=request.getParameter("company");
		  location=request.getParameter("location");
		/*  from_experience=request.getParameter("from_experience");
		  to_experience=request.getParameter("to_experience");*/
		  salary=request.getParameter("salary");
		  industry=request.getParameter("industry");
		  designation=request.getParameter("designation");
		  employment_type=request.getParameter("employment_type");
		  criteria=request.getParameter("criteria");
		  skill_set=request.getParameter("skill_set");
	/*	  job_description=request.getParameter("job_description");*/
		/*  last_date=request.getParameter("last_date");*/
		  qualification=request.getParameter("qualification");
		  passout_year=request.getParameter("passout_year");
        
		
		  company company1=new company();
		
		  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		  Date date = new Date();
		  post_date=dateFormat.format(date); 
		  
		  
		  company1.setPost_title(post_title);
		  company1.setCompany(company);
		  company1.setLocation(location);
		/*  company1.setFrom_experience(from_experience);
		  company1.setTo_experience(to_experience);*/
		  company1.setSalary(salary);
		  company1.setIndustry(industry);
		  company1.setDesignation(designation);
		  company1.setEmployment_type(employment_type);
		  company1.setCriteria(criteria);
		  company1.setSkill_set(skill_set);
		 /* company1.setJob_description(job_description);*/
		  company1.setPost_date(post_date);
		 /* company1.setLast_date(last_date);*/
		  company1.setRec_email(rec_email);
		  company1.setQualification(qualification);
		  company1.setPassout_year(passout_year);
		
		  Companydao companydao=new Companydao();
		  if(Companydao.addcompany(company1))
     			 {

     		    	    response.setContentType("text/html");  
     					out.println("<script type=\"text/javascript\">");  
     					out.println("alert('Add Sucessfully');");
     					out.println("location='Tpohome.jsp';");
     					out.println("</script>");
     			 }
     			      else
     			      {

     			    	  response.setContentType("text/html");  
     						out.println("<script type=\"text/javascript\">");  
     						out.println("alert('Sorry,Something Went Wrong');");
     						out.println("location='addcompany.jsp';");
     						out.println("</script>");
     			      }
     			 }

		

		
	/*	PostJob post=new PostJob();
		RecruiterService recruiterService=new RecruiterServiceImpl();*/
		/*company company1=new company();
		Companydao companydao=new Companydao();
		
		if(Companydao.addcompany(company1))
		{
			  companyname=request.getParameter("companyname");
			  post_title=request.getParameter("post_title");
			  location=request.getParameter("location");
			  from_experience=request.getParameter("from_experience");
			  to_experience=request.getParameter("to_experience");
			  salary=request.getParameter("salary");
			  industry=request.getParameter("industry");
			  designation=request.getParameter("designation");
			  employment_type=request.getParameter("employment_type");
			  criteria=request.getParameter("criteria");
			  skill_set=request.getParameter("skill_set");
			  job_description=request.getParameter("job_description");
			  last_date=request.getParameter("last_date");
			  qualification=request.getParameter("qualification");
			  passout_year=request.getParameter("passout_year");
			  
			  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			  Date date = new Date();
			  post_date=dateFormat.format(date); 
			  
			  company1.setCompany(companyname);
			  company1.setPost_title(post_title);
			  company1.setLocation(location);
			  company1.setFrom_experience(from_experience);
			  company1.setTo_experience(to_experience);
			  company1.setSalary(salary);
			  company1.setIndustry(industry);
			  company1.setDesignation(designation);
			  company1.setEmployment_type(employment_type);
			  company1.setCriteria(criteria);
			  company1.setSkill_set(skill_set);
			  company1.setJob_description(job_description);
			  company1.setPost_date(post_date);
			  company1.setLast_date(last_date);
			  company1.setRec_email(rec_email);
			  company1.setQualification(qualification);
			  company1.setPassout_year(passout_year);
			 
			  if(Companydao.addcompany(company1))
			  {
				  	out.println("<script type=\"text/javascript\">");  
					out.println("alert('Successfully...!!!');");
					out.println("location='Tpohome.jsp';");
					out.println("</script>");
			  }
			  else
			  {
				  	out.println("<script type=\"text/javascript\">");  
					out.println("alert('NotSuccessfully...!!!');");
					out.println("location='addcompany.jsp';");
					out.println("</script>");
			  }
			  
			  
		}
		else
		{
			
		}
		
		
	}*/
}
