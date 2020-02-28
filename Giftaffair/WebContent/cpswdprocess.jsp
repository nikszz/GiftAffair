<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Changing Password</title>
</head>
<body>
	<%
		String cemail = request.getParameter("email");	
		String orgemail = (String)session.getAttribute("em");
		String cpass = request.getParameter("current");
		String npass = request.getParameter("new");
		String confirmpass = request.getParameter("confirm");
		String pass="";
				
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from customers where password ='"+cpass+"' ");
			while(rs.next())
			{
				pass = rs.getString(6);
			}
			
			if(cemail.equals(orgemail))
			{
				if(pass.equals(cpass))
				{			
					if(npass.equals(confirmpass))		
					{	
						Statement stmt1 =con.createStatement();
						int i = stmt1.executeUpdate("update customers set password='"+npass+"' where email ='"+cemail+"'");
						System.out.println("Password Updated Sucessfully....!!");
						stmt1.close();
						con.close();
					}
					else{System.out.println("Error..! New Password and Confirm Password Not Match..!!");}	
				}	
					else{System.out.println("Invalid Current Password...!");}
			}
					else{System.out.println("Invalid Email ID...!!");}
			
		
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>