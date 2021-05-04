<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.project.dao.StudentDao"%>
<%@ page import="java.sql.*,java.io.*,java.util.*"%>
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
    System.out.println("email"+email);
	if(email!=null && email!="")
	{
		String userName=(String)session.getAttribute("uname");

%> 
<body id="page-top" class="index">
<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
      <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt="Hansraj Placement Cell" PLACEMENT CELL></div> </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
        <li> <a href="StudentHome.jsp">Home</a> </li>
        <li class="active"> <a href="studentviewprofile.jsp">View Profile</a> </li>
       <!--  <li> <a href="Studview_comp_details.jsp">View Company</a> </li> -->
 <li> <a href="exam.jsp">Test</a> </li>
        <li> <a href="index.jsp">Logout</a> </li>
          

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br>
  

	<div class="col-md-3"></div>
	<div class="col-md-6">
		<!-- 	<div  style="width: 40%" > -->
    <div class="panel panel-primary">
		<div class="panel-heading" align="center" > Profile</div>
		<div class="panel-body">
     <form action="userRegisterController" method="post" autocomplete="off" enctype="multipart/form-data">
        <div class="modal-body">
         <% 
       StudentDao sd= new StudentDao();
         ResultSet rs=sd.getallstudents(email);
      
                        if(rs.next())
                        {
                        %>
                      
                        <table>
                        <%-- <tr><th><h4>Id:</h4></th><td style="padding-left: 50px"> <%=rs.getInt(1) %></td></tr><br> --%>
                        <tr><th><h4>Name:</h4></th><td style="padding-left: 50px"> <h4> <%=rs.getString(2) %></h4><br></td></tr>
                        <tr><th><h4>PRN:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(3) %></h4><br></td></tr>
                        <tr><th><h4>DOB:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(4) %></h4><br></td></tr>
                        <tr><th><h4>Branch:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(5) %></h4><br></td></tr>
                        <tr><th><h4>Phone:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(6) %></h4><br></td></tr>
                         <tr><th><h4>Email:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(7) %></h4><br></td></tr>
                          <tr><th><h4>Address:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(8) %></h4><br></td></tr>
                           <tr><th><h4>SSC Board:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(9) %></h4><br></td></tr>
                        <tr><th><h4>SSC College:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(10) %></h4><br></td></tr>
                        <tr><th><h4>SSC Marks:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(11) %></h4><br></td></tr>
                        <tr><th><h4>HSC Board:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(12) %></h4><br></td></tr>
                        <tr><th><h4>HSC College:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(13) %></h4><br></td></tr>
                        <tr><th><h4>HSC Marks:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(14) %></h4><br></td></tr>
                        <tr><th><h4>Diploma Board:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(15) %></h4><br></td></tr>
                        <tr><th><h4>Diploma College:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(16) %></h4><br></td></tr>
                        <tr><th><h4>Diploma Marks:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(17) %></h4><br></td></tr>
                        <tr><th><h4>BE Board:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(18) %></h4><br></td></tr>
                        <tr><th><h4>BE College:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(19) %></h4><br></td></tr>
                        <tr><th><h4>BE Marks:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(20) %></h4><br></td></tr>
                        <tr><th><h4>Passout Year:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(21) %></h4><br></td></tr>
                        <tr><th><h4>Live Backlog:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(22) %></h4><br></td></tr>
                        <tr><th><h4>Dead Backlog:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(23) %></h4><br></td></tr>
                        <tr><th><h4>Year Gap:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(24) %></h4><br></td></tr>
                        <tr><th><h4>Profile Photo:</h4></th><td style="padding-left: 50px"><img src="profilePic.jsp?email=<%=email %>"style="border-radius: 75%" width="200" height="200"><br></td></tr>
                     <%--    <tr><th><h4>Resume:</h4></th><td style="padding-left: 50px"><h4> <%=rs.getString(27) %></h4> <br></td></tr> --%>
                        
                   <!--     <tr><th><h4>Profile Pic:</h4></th><td style="padding-left: 50px"><img src="profilePic.jsp" class="img-circle" width="150px" height="125px"></td></tr> -->
                     </table>
                        <% }%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="updateProfile.jsp"><button type="button" class="btn btn-danger">Update</button></a>
                        
                      
        </div>
    </form>
    </div>
    </div>
    </div>

</body>
 <%
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%> 

</html>