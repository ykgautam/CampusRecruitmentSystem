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
<body id="page-top" class="index">
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
      <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt=" Placement Cell" PLACEMENT CELL></div> </div>
  
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="hidden"> <a href="#page-top"></a> </li>
        <li class="active"> <a href="index.jsp">Home</a> </li>

        <li> <a href="process.jsp">Process</a> </li>

      </ul>
    </div>

  </div>

</nav><br><br><br><br><br><br><br><br><br><br>

<div class="row" style="text-align:center;">
            <div class="col-md-3">

            </div>
<h3 style="text-align:center;"> Student Registration</h3>
<div class="col-md-3">

            </div>
  <div class="col-md-7" style="text-align:center;">
              <div class="nav-tabs-custom">
              
                <div class="tab-content">
             
                  <div class="active tab-pane" id="settings"><center>
											<form action=StudentRegController method="post" style="text-align:center;"enctype="multipart/form-data">
												<div class="form-group" style="text-align:center;">
												<label class="col-md-2">Name:</label> 
												
													<input type="text" id="username" name="name" class="form-control" placeholder="Enter User Name" required=""/>
										
												</div>
												
												<div class="form-group" >
												<label class="col-md-2">PRN:</label> 
													<input type="text" id="prn" name="PRN" class="form-control" placeholder="Enter User PRN" required=""/>
												</div>
												
												<div class="form-group" >
												<label class="col-md-2">DOB:</label> 
													<input type="text" id="dob" name="dob" class="form-control" placeholder="Enter User DOB" required=""/>
												</div>
												
												<div class="form-group">
												<label class="col-md-2">Branch:</label> 
													<input type="text" class="form-control" name="branch" placeholder="Branch" required="">
												</div>
												
													<div class="form-group">
											 <label class="col-md-2">Mobile Number:</label>  
													<input type="text" id="usermobile" name="phone" pattern="([7-9]{1}[0-9]{9})" 
													title="Enter valid mobile no" required="required" class="form-control" placeholder="Enter your Mobile Number">
												</div>
												
							               <!--  <div class="col span_1_of_3"></div> 	 -->				
											<div class="form-group">
												 <label class="col-md-2">Email:</label>
													
													<input type="text"id="useremail" name="email" pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" 
													title="Enter valid email id" required="required" class="form-control" placeholder="Enter your Email">
												</div> 
												
											
												<!--  <div class="col span_1_of_3"></div> --> 
												 	<div class="form-group">
												<label class="col-md-2">Address:</label> 
													<input type="text" class="form-control" name="address" placeholder="address" required="">
												</div>
												 
												 <div class="form-group">
												 <label class="col-md-2">SSC(Board):</label> 
													<input type="text" class="form-control" name="sscboard" placeholder="SSC Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">SSC(School)</label> 
													<input type="text" class="form-control" name="sscschool" placeholder="SSC school" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">SSC(Percentage):</label> 
													<input type="text" class="form-control" name="sscmarks" placeholder="SSC Marks" required="">
												</div>
												
												 <div class="form-group">
												 <label class="col-md-2">HSC(Board):</label> 
													<input type="text" class="form-control" name="hscboard" placeholder="HSC Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">HSC(College):</label> 
													<input type="text" class="form-control" name="hsccollege" placeholder="HSC college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">HSC(Percentage):</label> 
													<input type="text" class="form-control" name="hscmarks" placeholder="HSC Marks" required="">
												</div>
												
											 <div class="form-group">
												 <label class="col-md-2">Diploma(Board):</label> 
													<input type="text" class="form-control" name="dipboard" placeholder="Diploma Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">Diploma(College):</label> 
													<input type="text" class="form-control" name="dipcollege" placeholder="Diploma college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Diploma(Percentage/CGPA):</label> 
													<input type="text" class="form-control" name="dipmarks" placeholder="Diploma Marks" required="">
												</div>
												
												 <div class="form-group">
												 <label class="col-md-2">BE(Board):</label> 
													<input type="text" class="form-control" name="beboard" placeholder="BE Board" required="">
												</div>
								
												<div class="form-group">
												 <label class="col-md-2">BE(College):</label> 
													<input type="text" class="form-control" name="becollege" placeholder="BE college" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">BE(Percentage/CGPA):</label> 
													<input type="text" class="form-control" name="bemarks" placeholder="BE Marks" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Year:</label> 
													<input type="text" class="form-control" name="year" placeholder="passout year" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Live Backlog:</label> 
													<input type="text" class="form-control" name="liveback" placeholder="Live Backlog" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">DeadBacklog:</label> 
													<input type="text" class="form-control" name="deadback" placeholder="Dead Backlog" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Year Gap:</label> 
													<input type="text" class="form-control" name="yeargap" placeholder="Year Gap" required="">
												</div>
												
												<div class="form-group">
												 <label class="col-md-2">Interested in:</label>
												
                                                   <select  name="interestedin" pattern="required"   class="col-md-6">
         			                                  <option value="Select" selected>Select Course</option>
                                                      <option>Java</option>
                                                      <option>Paython</option>
                                                      <option>.Net</option>
                                                       <option>Testing</option>
         
                                                        </select><br><br><br>
												</div>
												
													<div class="form-group">
													 <label class="col-md-2">Password:</label> 
												    <input type="password" id="userpassword" name="password" pattern="^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$" 
													title="Password must contain 6 characters.In that at least 1 uppercase,1 lowercase,1 special symbol(!,@,#,$,%,^,&,*) and 1 number"
													required="required" class="form-control" placeholder="Enter your Password" >
												</div>
												
												<div class="form-group">
												<h5> <label class="col-md-2">Profile Photo:</label></h5> 
													<div class="col-md-2"></div><input type="file" name="photo"  required="">
												</div>
												<br>
												
												<div class="form-group">
												<h5> <label class="col-md-2">Resume:</label> </h5>
													<div class="col-md-2"></div><input type="file" name="resume"  required="">
											</div>
												
												
												<button type="submit" class="btn btn-primary submit mb-4">Register</button>
												<p class="text-center pb-2"> <div class="col span_1_of_3"></div> 
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="text-white">By clicking Register, I agree to your terms</a>
												<span class="psw">Allready Register<a href="StudentLogin.jsp">Login here</a></span>
												</p>
											</form>
											</center>
									</div></div>
									</div>
									</div>
									</div>
						

</body>
</html>
