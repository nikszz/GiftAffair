<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query Sending</title>
</head>
<body>
<%
		String nm = request.getParameter("name");
		String em = request.getParameter("email");
		String sub = request.getParameter("sub");
		String msg = request.getParameter("msg");

		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
			Statement stmt = con.createStatement();
			String sql = "insert into customerquery(c_name,c_email,q_subject,message,createtime) values('"+nm+"','"+em+"','"+sub+"','"+msg+"',now() )";
			int i = stmt.executeUpdate(sql);
			if(i>0)
			{%>
				<script type="text/javascript">
				alert("Sucessfully Submitted..! We Will Contact You Soon.. :) ");
				window.location="index.jsp";
				</script>
			<%}
			}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>