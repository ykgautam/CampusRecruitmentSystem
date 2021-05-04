<%@page import="com.project.dao.Companydao"%>
<%@ page import="java.sql.*,java.io.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>D.Y. Patil College of Engineering Placement Cell</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/media.css" rel="stylesheet">
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-103026622-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<%
	String email=(String)session.getAttribute("email");
	if(email!=null && email!="")
	{
		String userName=(String)session.getAttribute("uname");

%> 
<body id="page-top" class="index">
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
      <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt="Hansraj Placement Cell" PLACEMENT CELL></div> </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
        <li class="active"> <a href="Tpohome.jsp">Home</a> </li>
      <!--   <li> <a href="addcompany.jsp">Add Company</a> </li> -->
        <li> <a href="schedulecompany.jsp">Schedule Drive</a> </li>
  <!--  <li> <a href="company_details.jsp">Company Details</a> </li> -->
    <li> <a href="viewstud_status.jsp">Student status</a> </li>
   <li> <a href="viewstuddetails.jsp">Student Details</a> </li>
        <li> <a href="LogoutController">Logout</a> </li>

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br>
  
  
     <%/* Companydao companydao=new Companydao();
                   ResultSet rs=companydao.getschcompdetails(company);
                	while(rs.next()){
                		String fname=rs.getString(2);
                		int id=rs.getInt(1);
                	ResultSet rs1=companydao.selectschedulecompany(id);
       			 while(rs1.next()) */
       			  String company=request.getParameter("company");
       			 String schcriteria=request.getParameter("schcriteria");
       			Companydao cd=new Companydao();
     			ResultSet c= cd.getschcompdetails(company,schcriteria);
     	
     				while (c.next()) {
       			 
                		     %>
                	
                    <form class="form-horizontal" action="UpdateSchcompanyController"  method="post">
                      
                 <!--      <input type="hidden" name="action" value="experience"> -->
                   <div class="col-sm-1">
                    </div>
         				<div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Company Name</label>
                        <div class="col-sm-6">
                          <input type="text" name="company" class="form-control" id="inputName" value="<%=c.getString(2) %>"  placeholder="Company Name">
                        </div>
                      </div>	
                        <div class="col-sm-1">
                    </div>
                      <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Company Criteria</label>
                        <div class="col-sm-6">
                          <input type="text" name="schcriteria" class="form-control" id="inputName" value="<%=c.getString(3) %>"  placeholder="Criteria">
                        </div>
                      </div>
                        <div class="col-sm-1">
                    </div>
                      <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Drive Date</label>
                        <div class="col-sm-6">
                          <input type="date" name="date" class="form-control" id="inputdate" value="<%=c.getString(4) %>"  placeholder="Date">
                        </div>
                      </div>
                      
                        <div class="col-sm-1">
                    </div>            
                       <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label"> Venu :</label>
                        <div class="col-sm-6">
                        <input type="text" name="venu" class="form-control" value="<%=c.getString(5) %>"  placeholder=" Venu">
                        </div>
                      </div>
                      
                      <div class="col-sm-1">
                    </div>            
                       <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label"> Time :</label>
                        <div class="col-sm-6">
                        <input type="text" name="time" class="form-control" value="<%=c.getString(6) %>"  placeholder=" Time">
                        </div>
                      </div>
                      
                      <div class="col-sm-1">
                    </div>            
                       <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label"> CTC :</label>
                        <div class="col-sm-6">
                        <input type="text" name="ctc" class="form-control" value="<%=c.getString(7) %>"  placeholder=" ctc">
                        </div>
                      </div>
                 
                        <div class="col-sm-2">
                    </div>
                     <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-6">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                      </div>
                    </form><%} %>
  
  
</body>
<%}
	
	else
	{
		response.sendRedirect("index.jsp");
	}
%>
</html>