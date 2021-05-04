<%@page import="com.project.dao.StudentDao"%>
<%@page import="com.project.db.DBConnect"%>
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
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '../www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-103026622-1', 'auto');
	ga('send', 'pageview');
</script>
</head>

<body id="page-top" class="index">
	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<div class="navbar-brand page-scroll anim_logo">
				<img src="images/LOGOF.png" alt="Hansraj Placement Cell" PLACEMENT
					CELL>
			</div>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
	<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
      <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt="Hansraj Placement Cell" PLACEMENT CELL></div> </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
        <li class="active"> <a href="StudentHome.jsp">Home</a> </li>
        <li> <a href="studentviewprofile.jsp">View Profile</a> </li>
       <!--  <li> <a href="Studview_comp_details.jsp">View Company</a> </li> -->
 <li> <a href="exam.jsp">Test</a> </li> 
        <li> <a href="index.jsp">Logout</a> </li>

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<form method="post">
		<div class="col-md-12">
			<center>
				<span style='font-weight: bold;'><h2>Eligible students</h2></span>
			</center>
			<table class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead bgcolor="FFA500">
					<!-- 	<TH>No</TH>
							<TH>Company</TH>
							<TH>Criteria</TH> -->
					<TH>Name</TH>
					<TH>Email</TH>
					<TH>Send mail</TH>

				</thead>

				<%
					/* 		 String action = "addcompany_tbl";  */
						int criteriaMarks = Integer.parseInt(request.getParameter("schcriteria"));

						StudentDao sd = new StudentDao();
						ResultSet c = sd.geteligiblestud(criteriaMarks);
					
							while (c.next()) {
				%>
				<TR>
					<%-- 	<TD><%=c.getInt(1)%></TD>
							<TD><%=c.getString(2)%></TD> --%>
					<TD><%=c.getString(2)%></TD>
					<TD><%=c.getString(7)%></TD>
 <TD><a href="https://accounts.google.com/signin/v2/identifier?hl=en&passive=true&continue=http%3A%2F%2Fsupport.google.com%2Fmail%2Fanswer%2F8494%3Fco%3DGENIE.Platform%253DDesktop%26hl%3Den&flowName=GlifWebSignIn&flowEntry=ServiceLogin">sent mail</TD>

					<%-- <TD> <a href="Eligiblestudents.jsp?company=<%=c.getString(2)%>&schcriteria=<%=c.getString(3)%>"><button type="button" class="btn btn-danger">Eligible Students</button></a></TD>

							 <TD> <a href="modifycompschedule.jsp"><button type="button" class="btn btn-danger">Modify</button></a></TD> --%>
					<%} %>
					

					

				</TR>

			</TABLE>



		</div>
	</form>



	<!-- Header end-->
</body>

</html>