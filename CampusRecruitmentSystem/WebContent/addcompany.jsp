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
      
        <li> <a href="Tpohome.jsp">Home</a> </li>
        <li class="active"> <a href="addcompany.jsp">Add Company</a> </li>
        <li> <a href="schedulecompany.jsp">Schedule Drive</a> </li>
   <li> <a href="company_details.jsp">Company Details</a> </li>
    <li> <a href="viewstud_status.jsp">Student status</a> </li>
   <li> <a href="viewstuddetails.jsp">Student Details</a> </li>
        <li> <a href="index.jsp">Logout</a> </li>

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%-- <div class="topnav" >
   <ul class="nav navbar-nav navbar-center">
      
         <a  href="Tpohome.jsp">Home</a> 
         <a class="active" href="addcompany.jsp">Add Company</a> 
          <li> <a href="schedulecompany.jsp">Schedule Company</a> </li>
    <a href="company_details.jsp">Company Details</a> 
    <a href="viewstuddetails.jsp">Student Details</a> 
       <a href="href="LogoutController?admin_email=<%=email%>">Logout</a> 

      </ul>
</div> --%>
<div class="row">
            <div class="col-md-3">

            </div>
      
            <div class="col-md-6">
              <div class="nav-tabs-custom">
              
                <div class="tab-content">
                   <h1 align="center">Add Company Details</h1><br>
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="Addcompanyservlet"  method="post">
                   <!--  <input type="hidden" name="action" value="addcompany"> -->
                     
                    <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Post Title</label>
                        <div class="col-sm-10">
                          <input type="text" name="post_title" class="form-control" id="inputName" value=""  placeholder="Post title">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Company Name</label>
                        <div class="col-sm-10">
                          <input type="text" name="company" class="form-control" id="inputName" value=""  placeholder="Company name">
                        </div>
                       </div>
                      <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Location</label>
                        <div class="col-sm-10">
                          <input type="text" name="location" class="form-control" id="inputName" value=""  placeholder="Location">
                        </div>
                       </div>
                     <div class="form-group">
                      <!--   <label for="inputEmail" class="col-sm-2 control-label">Experience</label> -->
                        <div class="row">
                   <!--      <div class="col-sm-4">
                         <select class="form-control" id="sel1" name="from_experience">
    						<option>Exp(From)</option>
    						<option>0 </option>
    						<option>1 </option>
    						<option>2</option>
    						<option>3 </option>
    						<option>4 </option>
    						<option>5 </option>
  						</select>
                        </div> --> 
                     <!--    <div class="col-sm-4">
                         <select class="form-control" id="sel1" name="to_experience">
    						<option>Exp(To)</option>
    						<option>0 </option>
    						<option>1 </option>
    						<option>2</option>
    						<option>3 </option>
    						<option>4 </option>
    						<option>5 </option>
  						</select>
                        </div> -->
                        </div>
                      </div>
                      <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Salary</label>
                        <div class="col-sm-10">
                         <!--  <input type="text" name="salary" class="form-control" id="inputName" value=""  placeholder="Salary"> -->
                        <select class="form-control" id="sel1" name="salary">
    						<option>Salary(Lakh)</option>
    						<option>0 </option>
    						<option>1 </option>
    						<option>2 </option>
    						<option>3 </option>
    						<option>4 </option>
    						<option>5 </option>
    						<option>6 </option>
  						</select>
                        </div>
                       </div>
                       <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Industry</label>
                        <div class="col-sm-10">
                          <input type="text" name="industry" class="form-control" id="inputName" value=""  placeholder="Industry">
                        </div>
                       </div>
                       <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Role/Designation</label>
                        <div class="col-sm-10">
                          <!-- <input type="text" name="designation" class="form-control" id="inputName" value=""  placeholder="Role/Designation"> -->
                        <select class="form-control" id="sel1" name="designation">
    						<option>Select Role/Designation</option>
    						<option>Java Developer</option>
    						<option>PHP Developer </option>
    						<option>.Net Developer</option>
    						<option>Analysist</option>
    						<option>Manager</option>
    						<option>Software Testing</option>
    						<option>Database Developer</option>
  						</select>
                        </div>
                       </div>
                       <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Employment Type</label>
                        <div class="col-sm-10">
                          <select class="form-control" id="sel1" name="employment_type">
    						<option>Select Employment Type</option>
    						<option>Full Time</option>
    						<option>Part Time </option>
    						<option>Permant</option>
  						</select>
                        </div>
                       </div>
                       <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Qualification</label>
                        <div class="col-sm-10">
                        <textarea rows="2" cols="2" name="qualification" class="form-control" id="inputName" value=""  placeholder="Qualification"></textarea>
                        </div>
                       </div>
                       <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Passout Year</label>
                        <div class="col-sm-10">
                        <textarea rows="2" cols="2" name="passout_year" class="form-control" id="inputName" value=""  placeholder="Passout Year"></textarea>
                        </div>
                       </div>
                           <div class="form-group">
                       <label for="inputName" class="col-sm-2 control-label">Criteria</label>
                        <div class="col-sm-10">
                        <textarea rows="2" cols="2" name="criteria" class="form-control" id="inputName" value=""  placeholder="criteria"></textarea>
                        </div>
                       </div>
                       <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Skills</label>
                        <div class="col-sm-10">
                        <textarea rows="4" cols="4" name="skill_set" class="form-control" id="inputName" value=""  placeholder="Skill Set"></textarea>
                        </div>
                      </div>
               <!--        <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Job Description</label>
                        <div class="col-sm-10">
                        <textarea rows="5" cols="4" name="job_description" class="form-control" id="inputName" value=""  placeholder="Job Description"></textarea>
                        </div>-->
                      </div> 
                      <!-- <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Drive Date</label>
                        <div class="col-sm-10">
                        <input type="date" name="last_date" class="form-control" id="inputName" value=""  placeholder="Last Date">
                        </div>
                      </div> -->
                       <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-primary">Post</button>
                           <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                      </div>
                    </form>
                   
                     
                    <!-- <ul class="nav nav-tabs">
                     <li><a href="#settings" data-toggle="tab" style="color: black"></a></li>
                   </ul><br>
                   
                      </div> -->
                    
                   
                  </div><!-- /.tab-pane -->
                </div><!-- /.tab-content -->
                </div>
              </div><!-- /.nav-tabs-custom -->
               <div class="col-md-3">
            </div>
            </div><!-- /.col -->

</body>
<%
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>
</html>