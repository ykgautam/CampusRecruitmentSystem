package com.project.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.bean.company;
import com.project.dao.Companydao;


/**
 * Servlet implementation class UpdateSchcompanyController
 */
@WebServlet("/UpdateSchcompanyController")
public class UpdateSchcompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	boolean flag;
	RequestDispatcher rd=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSchcompanyController() {
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
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
	/*	String action=request.getParameter("action");*/
		
		HttpSession session=request.getSession();
		String user_email=(String)session.getAttribute("email");
		
			String company=request.getParameter("company");
			String	schcriteria=request.getParameter("schcriteria");
			String date=request.getParameter("date");
			 String time=request.getParameter("time");
			 String venu=request.getParameter("venu");
			 String ctc=request.getParameter("ctc");
			
				company comp=new company();
				comp.setCompany(company);
				comp.setSchcriteria(schcriteria);
				comp.setDate(date);
				comp.setTime(time);
				comp.setVenu(venu);
				comp.setCtc(ctc);
			
				  Companydao companydao=new Companydao();
				 if(companydao.updatecompanyschedule(comp))
				 {			
					  out.println("<script type=\"text/javascript\">");  
						out.println("alert(' Details updated Successfully...!!!');");
						out.println("location='Tpohome.jsp';");
						out.println("</script>");
				 }
			     else
			     {
			    	  out.println("<script type=\"text/javascript\">");  
						out.println("alert('Not Updated...Try again..!!!');");
						out.println("location='modifycompschedule.jsp';");
						out.println("</script>");
			     }
			}

	}

