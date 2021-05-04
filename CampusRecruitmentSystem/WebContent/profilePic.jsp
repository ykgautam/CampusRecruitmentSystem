

<%@page import="com.project.db.DBConnect"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 

<%@ page trimDirectiveWhitespaces="true" %>
<%

HttpSession sec1=request.getSession();
String email=(String)session.getAttribute("email");
//String email=(String)sec1.getAttribute("email");
		PreparedStatement pstmt = DBConnect.getConnection().prepareStatement("Select photo From studenttbl where email=?");
		pstmt.setString(1, email);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			InputStream is = rs.getBinaryStream(1);
			
				byte[] profilePic = null;
		   			//OutputStream out = response.getOutputStream();
		   		byte[] buffer = new byte[1024*1024*50];
				int bytesRead;		
				if(is!=null){
					while ((bytesRead =is.read(buffer)) != -1)
					{
					    	response.reset();
							response.setContentType("image/jpg");
							response.setHeader("Content-disposition","attachment; filename=" );
					        response.getOutputStream().write(buffer, 0, bytesRead);
					        response.getOutputStream().flush(); 

					 }
				}		
	
		}
		
%>