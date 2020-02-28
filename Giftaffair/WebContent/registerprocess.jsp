<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Process</title>
</head>
<body>
<%
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String add = request.getParameter("address");
	String email = request.getParameter("email");
	String birthdate = request.getParameter("birthdate"); 
	String phn = request.getParameter("phn");
	String pwd = request.getParameter("pwd");
	
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
	Statement stmt = con.createStatement();
	String sql = "insert into customers(firstname,lastname,address,email,dob,phoneno,password) values('"+fname+"','"+lname+"','"+add+"','"+email+"','"+birthdate+"','"+phn+"','"+pwd+"')";
	int i = stmt.executeUpdate(sql);
	if(i>0)
	{%>
		<script type="text/javascript">
			alert("Successfully Registered.. :) Please Login -->");
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