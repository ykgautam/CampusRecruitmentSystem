<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <title>D.Y. Patil College of Engineering Placement Cell</title> -->

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
<%-- <%
	String email=(String)session.getAttribute("email");
System.out.println(email);
%> --%>
<body>
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
     <!--  <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt="Hansraj Placement Cell" PLACEMENT CELL></div> </div> -->
 <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt=" Placement Cell" PLACEMENT CELL></div> </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
        <li> <a href="Tpohome.jsp">Home</a> </li>
      <!--   <li> <a href="addcompany.jsp">Add Company</a> </li> -->
        <li> <a href="schedulecompany.jsp">Schedule Drive</a> </li>
 <!--   <li> <a href="company_details.jsp">Company Details</a> </li> -->
    <li> <a href="viewstud_status.jsp">Student status</a> </li>
   <li  class="active"> <a href="viewstuddetails.jsp">Student Details</a> </li>
        <li> <a href="index.jsp">Logout</a> </li>

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <div class="row" style="text-align:center;">
            <div class="col-md-3">

            </div>
<center><h3 style="text-align:center;">Update Profile</h3></center>
<div class="col-md-3">

            </div>
  <div class="col-md-7" style="text-align:center;">
              <div class="nav-tabs-custom">
              
                <div class="tab-content">
        <div class="active tab-pane" id="settings"><center>
											<form action=UpdatestudstatusController method="get" style="text-align:center;" enctype="multipart/form-data"> 
											
											   <% 
       StudentDao sd= new StudentDao();
											   session.setAttribute("studdentemail", request.getParameter("email"));
         ResultSet rs=sd.getallstudentsstatus(request.getParameter("email"));
         
      
                        if(rs.next())
                        {
                        %>
                        
                                               <%--  <div class="form-group" style="text-align:center;">
												<label class="col-md-2">Id:</label> 
												
													<input type="text" id="id" name="id" class="form-control" value="<%=rs.getString(1) %> "placeholder="Enter User Name" required=""/>
										
												</div> --%>
                                                
                        
												<div class="form-group" style="text-align:center;">
												<label class="col-md-2">Name:</label> 
												
													<input type="text"  name="name" class="form-control" value="<%=rs.getString(2) %> "placeholder="Enter User Name" required=""/>
										
												</div>
												
												<div class="form-group" >
												<label class="col-md-2">PRN:</label> 
													<input type="text"  name="PRN" class="form-control" value="<%=rs.getString(3) %>"placeholder="Enter User PRN" required=""/>
												</div>
												
									
												
												<div class="form-group">
												<label class="col-md-2">Branch:</label> 
													<input type="text" class="form-control" name="branch" value="<%=rs.getString(5) %>"placeholder="Branch" required="">
												</div>
												
													<div class="form-group">
											 <label class="col-md-2">Mobile Number:</label>  
													<input type="text"  name="phone" pattern="([7-9]{1}[0-9]{9})" 
													title="Enter valid mobile no" required="required" class="form-control" value="<%=rs.getString(6) %>"placeholder="Enter your Mobile Number">
												</div>
												
							               <!--  <div class="col span_1_of_3"></div> 	 -->				
											<div class="form-group">
												 <label class="col-md-2">Email:</label>
													
													<input type="text" name="email" pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" 
													title="Enter valid email id" required="required" class="form-control" value="<%=rs.getString(7) %>"placeholder="Enter your Email">
												</div> 
												
												<div class="form-group">
												 <label class="col-md-2">Status:</label>
													
													<input type="text"  name="status" 
													 required="required"  value="Unplace" class="form-control">
												</div> 
											
												
												    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                      </div>
												
										     <% }%>	</form>
											</center>
									</div>
									</div>
									</div>
									</div>
									</div>
									
  
  
</body>

</html>