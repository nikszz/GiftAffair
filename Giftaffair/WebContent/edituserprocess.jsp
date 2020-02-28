<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Processing</title>
</head>
<body>
<%		
		String c_id = (String)session.getAttribute("c_id");
		String nfname = request.getParameter("fname");
		String nlname = request.getParameter("lname");
		String nadd = request.getParameter("address");
		String nemail = request.getParameter("email");
		String nbirthdate = request.getParameter("birthdate");
		String nphn = request.getParameter("phn");
		String npwd = request.getParameter("pwd");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
			Statement stmt = con.createStatement();
			String sql = "update customers set firstname ='"+nfname+"' ,lastname ='"+nlname+"', address ='"+nadd+"',email ='"+nemail+"',dob ='"+nbirthdate+"',phoneno ='"+nphn+"',password = '"+npwd+"' where c_id='"+c_id+"'";
			int i = stmt.executeUpdate(sql);
			if(i>0)
			{%>
				<script type="text/javascript">
					alert("Successfully Updated.. :) Please Login -->");
					window.location="login.jsp";
				</script>
			<%}
			}catch(Exception e){
				out.println(e);
				e.printStackTrace();
			}
%>
</body>
</html>