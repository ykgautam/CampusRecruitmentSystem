
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="java.time.LocalTime"%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%
if(request.getParameter("page").toString().equals("login")){
	
if(pDAO.loginValidate(request.getParameter("email").toString(), request.getParameter("password").toString())){
	 session.setAttribute("userStatus", "1");
    session.setAttribute("email",pDAO.getemail(request.getParameter("email")));
    response.sendRedirect("dashboard.jsp");

}else{
 
    response.sendRedirect("login.jsp");
} 
	
/* if(pDAO.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("userId",pDAO.getUserId(request.getParameter("username")));
    response.sendRedirect("dashboard.jsp");

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("login.jsp");
} */

}else if(request.getParameter("page").toString().equals("register")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
    
         
    pDAO.addNewStudent(fName,lName,uName,email,pass,contactNo,city,address);
    response.sendRedirect("accounts.jsp");
}else if(request.getParameter("page").toString().equals("profile")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
         String uType =request.getParameter("utype");
        int uid=Integer.parseInt(session.getAttribute("userId").toString());
    
         
    pDAO.updateStudent(uid,fName,lName,uName,email,pass,contactNo,city,address,uType);
    response.sendRedirect("dashboard.jsp");
}else if(request.getParameter("page").toString().equals("testtype")){
    if(request.getParameter("operation").toString().equals("addnew")){
        pDAO.addNewCourse(request.getParameter("testtype"),Integer.parseInt(request.getParameter("totalmarks")),
                request.getParameter("time"));
        response.sendRedirect("courses.jsp");
    }else if(request.getParameter("operation").toString().equals("del")){
        pDAO.delCourse(request.getParameter("testtype").toString());
        response.sendRedirect("courses.jsp");
    }

}else if(request.getParameter("page").toString().equals("accounts")){
    if(request.getParameter("operation").toString().equals("del")){
        pDAO.delUser(Integer.parseInt(request.getParameter("uid")));
        response.sendRedirect("accounts.jsp");
    }

}else if(request.getParameter("page").toString().equals("questions")){
	
    if(request.getParameter("operation").toString().equals("addnew")){
        pDAO.addQuestion(request.getParameter("testtype"),request.getParameter("question"),
        		
        request.getParameter("opt1"), request.getParameter("opt2"),request.getParameter("opt3"),
        request.getParameter("opt4"), request.getParameter("correct"));
        System.out.println("Add question Dao");
        response.sendRedirect("questions.jsp");
    }else if(request.getParameter("operation").toString().equals("del")){
        pDAO.delCourse(request.getParameter("testtype").toString());
        response.sendRedirect("questions.jsp");
    }else if(request.getParameter("operation").toString().equals("delQuestion")){
        pDAO.delQuestion(Integer.parseInt(request.getParameter("qid")));
        response.sendRedirect("questions.jsp");
        
    }
    
}else if(request.getParameter("page").toString().equals("exams")){
	
    if(request.getParameter("operation").toString().equals("startexam")){
       /*  String testtype=request.getParameter("testtype");
        System.out.println("get course name: "+testtype); */
        String testtype=request.getParameter("testtype");
        System.out.println("get Testtype: "+testtype);
        session.setAttribute("email",pDAO.getemail(request.getParameter("email")));
      String email=(session.getAttribute("email").toString()); 
      //  String email=request.getParameter(session.getAttribute("email"));
        System.out.println("email get: "+email);
        int examId=pDAO.startExam(email,testtype);
        session.setAttribute("examId",examId);
        session.setAttribute("examStarted","1");
   
  response.sendRedirect("exam.jsp?&testtype="+testtype); 
/*       response.sendRedirect("std-page.jsp?pgprt=1&coursename="+cName); */
    }else if(request.getParameter("operation").toString().equals("submitted")){
        try{
        
        String time=LocalTime.now().toString();
        int size=Integer.parseInt(request.getParameter("size"));
        int eId=Integer.parseInt(session.getAttribute("examId").toString());
  
        int tMarks=Integer.parseInt(request.getParameter("totalmarks"));
       /*  session.removeAttribute("examId"); */
      
        session.removeAttribute("examStarted");
        for(int i=0;i<size;i++){
        	/*  System.out.println("inside for loop"); */
            String question=request.getParameter("question"+i);
           /*  System.out.println("get quetion: "+question); */
            String ans=request.getParameter("ans"+i);
            
            int qid=Integer.parseInt(request.getParameter("qid"+i));
            
            pDAO.insertAnswer(eId,qid,question,ans);
        }
        System.out.println(tMarks+" conn\t Size: "+size);
        pDAO.calculateResult(eId,tMarks,time,size);
        
        response.sendRedirect("exam.jsp?&eid="+eId+"&showresult=1");
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }

}else if(request.getParameter("page").toString().equals("logout")){
    session.setAttribute("userStatus","0");
    session.removeAttribute("examId");
    session.removeAttribute("examStarted");
    response.sendRedirect("index.jsp");
}
%>
