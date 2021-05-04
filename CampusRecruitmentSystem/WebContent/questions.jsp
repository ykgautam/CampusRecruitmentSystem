
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>D.Y. Patil College of Engineering Placement Cell</title>
<link href="WebContent/style.css">
<link href="WebContent/web1.css">
<link href="WebContent/style-front.css">
<link href="WebContent/style-backend.css">
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
<!-- SIDEBAR -->
<div class="menu-bg">
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top affix-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i> </button>
      <div class="navbar-brand page-scroll anim_logo"><img src="images/LOGOF.png" alt=" Placement Cell" PLACEMENT CELL></div> </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      
        <li > <a href="Tpohome.jsp">Home</a> </li>
       <!--  <li> <a href="addcompany.jsp">Add Company</a> </li> -->
        <li> <a href="schedulecompany.jsp">Schedule Drive</a> </li>
  <!--  <li> <a href="company_details.jsp">Company Details</a> </li> -->
    <li> <a href="viewstud_status.jsp">Student status</a> </li>
   <li> <a href="viewstuddetails.jsp">Student Details</a> </li>
   <li class="active"> <a href="questions.jsp">Add questions</a> </li>
        <li> <a href="index.jsp">Logout</a> </li>

      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div></nav><br><br><br><br><br><br><br><br><br><br><br><br>
</div><br><br><br>
            <!-- CONTENT AREA -->
      
        <center>
        <div class="panel form-style-12" >   
               <form action="controller.jsp" >
                  <h2> <div class="title">Add New Question</div></h2>
                   <table >
                       <tr>
                           <td><label>Type</label></td>
                           <td colspan="6" style="height: 30px; width:350px;"> 
                               <select name="testtype" class="text">
                                <option>Aptitude</option>
                                <option>Verbal</option>
                                <option>Technical</option>
                                <option>Mixed</option>
                               </select>
                           </td>
                       </tr> 
                       <tr>
                           <td><label>Your Question: </label></td>
                           <td colspan="6"><input type="text" name="question" class="text" placeholder="Type your question here" style="width:350px;" ></td>
                       </tr><br>
                       <tr>
                           <td><label>Options: </label></td>
                           <td><input type="text" name="opt1" class="text" placeholder="First Option"></td>
                           <td><input type="text" name="opt2" class="text" placeholder="Second Option"></td>
                           <td><input type="text" name="opt3" class="text" placeholder="Third Option"></td>
                           <td><input type="text" name="opt4" class="text" placeholder="Fourth Option"></td>
                       </tr>
                       <tr>
                           <td><label>Correct Answer: </label></td>
                           <td><input type="text" name="correct" class="text" placeholder="Correct Answer" style="height: 20px; width:350px;" ></td>
                       <tr>
                           <td colspan="5"><input type="hidden" name="page" value="questions">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                           
                   </tr>
                   </table>

                </form>
           
    
     </div>
     </center>
                <!--         </div> -->