<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>D.Y. Patil College of Engineering Placement Cell</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/media.css" rel="stylesheet">
<!--slider-->
<script src="js/modernizr.js"></script>
 <!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 5px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 6px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

select {
  width: 50%;
  padding: 12px 20px;
  margin: 6px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 6px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 100%;
}

.container {

/*   padding-right: 150px; */
  padding-left: 350px;
}

span.psw {
  float: none;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 200px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 50%;
  }
}
</style>
</head>
<%
	String email=(String)session.getAttribute("email");
    System.out.println("email"+email);
	if(email!=null && email!="")
	{
		String userName=(String)session.getAttribute("uname");

%> 
<body>
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
											<form action=UpdateProfileController method="post" style="text-align:center;" enctype="multipart/form-data"> 
											
											   <% 
       StudentDao sd= new StudentDao();
         ResultSet rs=sd.getallstudents(email);
      
                        if(rs.next())
                        {
                        %>
											<%--     <input type="hidden" name="email" value="<%=rs.getString("email") %>"> --%>
												
												
												
												
												<div class="form-group" style="text-align:center;">
												<label class="col-md-2">Name:</label> 
												
													<input type="text" id="username" name="name" class="form-control" value="<%=rs.getString(2) %> "placeholder="Enter User Name" required=""/>
										
												</div>
												
												<div class="form-group" >
												<label class="col-md-2">PRN:</label> 
													<input type="text" id="prn" name="PRN" class="form-control" value="<%=rs.getString(3) %>"placeholder="Enter User PRN" required=""/>
												</div>
												
												<div class="form-group" >
												<label class="col-md-2">DOB:</label> 
													<input type="text" id="dob" name="dob" class="form-control" value="<%=rs.getString(4) %>"placeholder="Enter User DOB" required=""/>
												</div>
												
												<div class="form-group">
												<label class="col-md-2">Branch:</label> 
													<input type="text" class="form-control" name="branch" value="<%=rs.getString(5) %>"placeholder="Branch" required="">
												</div>
												
													<div class="form-group">
											 <label class="col-md-2">Mobile Number:</label>  
													<input type="text" id="usermobile" name="phone" pattern="([7-9]{1}[0-9]{9})" 
													title="Enter valid mobile no" required="required" class="form-control" value="<%=rs.getString(6) %>"placeholder="Enter your Mobile Number">
												</div>
												
							               <!--  <div class="col span_1_of_3"></div> 	 -->				
											<div class="form-group">
												 <label class="col-md-2">Email:</label>
													
													<input type="text"id="useremail" name="email" pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" 
													title="Enter valid email id" required="required" class="form-control" value="<%=rs.getString(7) %>"placeholder="Enter your Email">
												</div> 
												
											
												<!--  <div class="col span_1_of_3"></div> --> 
												 	<div class="form-group">
												<label class="col-md-2">Address:</label> 
													<input type="text" class="form-control" name="address" value="<%=rs.getString(8) %>"placeholder="address" required="">
												</div>
												 
												 <div class="form-group">
												 <label class="col-md-2">SSC(Board):</label> 
													<input type="text" class="form-control" name="sscboard" value="<%=rs.getString(9) %>"placeholder="SSC Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">SSC(School)</label> 
													<input type="text" class="form-control" name="sscschool" value="<%=rs.getString(10) %>"placeholder="SSC school" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">SSC(Percentage):</label> 
													<input type="text" class="form-control" name="sscmarks" value="<%=rs.getString(11) %>"placeholder="SSC Marks" required="">
												</div>
												
												 <div class="form-group">
												 <label class="col-md-2">HSC(Board):</label> 
													<input type="text" class="form-control" name="hscboard" value="<%=rs.getString(12) %>"placeholder="HSC Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">HSC(College):</label> 
													<input type="text" class="form-control" name="hsccollege" value="<%=rs.getString(13) %>"placeholder="HSC college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">HSC(Percentage):</label> 
													<input type="text" class="form-control" name="hscmarks" value="<%=rs.getString(14) %>"placeholder="HSC Marks" required="">
												</div>
												
											 <div class="form-group">
												 <label class="col-md-2">Diploma(Board):</label> 
													<input type="text" class="form-control" name="dipboard" value="<%=rs.getString(15) %>"placeholder="Diploma Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">Diploma(College):</label> 
													<input type="text" class="form-control" name="dipcollege" value="<%=rs.getString(16) %>"placeholder="Diploma college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Diploma(Percentage/CGPA):</label> 
													<input type="text" class="form-control" name="dipmarks" value="<%=rs.getString(17) %>"placeholder="Diploma Marks" required="">
												</div>
												
												 <div class="form-group">
												 <label class="col-md-2">BE(Board):</label> 
													<input type="text" class="form-control" name="beboard" value="<%=rs.getString(18) %>"placeholder="BE Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">BE(College):</label> 
													<input type="text" class="form-control" name="becollege" value="<%=rs.getString(19) %>"placeholder="BE college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">BE(Percentage/CGPA):</label> 
													<input type="text" class="form-control" name="bemarks" value="<%=rs.getString(20) %>"placeholder="BE Marks" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Passout Year:</label> 
													<input type="text" class="form-control" name="year" value="<%=rs.getString(21) %>"placeholder="passout year" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Live Backlog:</label> 
													<input type="text" class="form-control" name="liveback" value="<%=rs.getString(22) %>"placeholder="Live Backlog" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">DeadBacklog:</label> 
													<input type="text" class="form-control" name="deadback" value="<%=rs.getString(23) %>"placeholder="Dead Backlog" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Year Gap:</label> 
													<input type="text" class="form-control" name="yeargap" value="<%=rs.getString(24) %>"placeholder="Year Gap" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Interested in:</label>
												
                                                   <select  name="interestedin"  pattern="required" value="<%=rs.getString(28) %>">
         			                           <option value="Select" selected>Select Course</option>
                                                      <option>Java</option>
                                                      <option>Paython</option>
                                                      <option>.Net</option>
                                                       <option>Testing</option>
         
                                                        </select><br><br><br>
												</div>
												
													<div class="form-group">
													 <label class="col-md-2">Password:</label> 
												    <input type="password" id="userpassword" name="password" value="<%=rs.getString(25) %>" pattern="^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$" 
													title="Password must contain 6 characters.In that at least 1 uppercase,1 lowercase,1 special symbol(!,@,#,$,%,^,&,*) and 1 number"
													required="required" class="form-control" placeholder="Enter your Password" >
												</div>
												
												 <div class="form-group">
												 <h5> <label class="col-md-2">Profile Photo:</label> </h5> <img src="profilePic.jsp?email=<%=email %>" style="border-radius: 75%" width="200" height="200">
												<center>	<div class="col-md-2"></div><input type="file"  name="photo"   required=""></div></center>
												
												<br>
												
												<div class="form-group">
												<h5> <label class="col-md-2">Resume:</label> </h5>
													<div class="col-md-2"></div><input type="file" name="resume"  required="">
											</div> 
												
												    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                      </div>
												
										     <% }%>	</form>
											</center>
									</div></div>
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