<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>My Profile</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%if(session.getAttribute("em") == null)
	{%>
			<script type="text/javascript">
				alert("Access Denied..! You Cant Access Without Login");
				window.location="login.jsp";
			</script>
		
	<%}%>
	
<%
	String cemail = (String)session.getAttribute("em");//session email converting into string to cemail variable
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from customers where email = '"+cemail+"' ");
%>
	     <div class="container text-center" style="background: #f6f3f2; padding: 35px;">
			<div class="col-sm-12">
				<h2>My Profile</h2><br>
					<table border="2" bordercolor="#CCCCCC" align="center" style="width: 60%; background: #ffe9e3;f" >
					<% while(rs.next())
					{%>			
							<tr>
								<th><h3>&nbspFirst Name :</h3></th>
								<td><h3><%=rs.getString("firstname") %></h3></td>
							</tr>
							
							<tr>
								<th><h3>&nbspLast Name :</h3></th>
								<td><h3><%=rs.getString("lastname") %></h3></td>
							</tr>
							
							<tr>
								<th><h3>&nbspEmail :</h3></th>
								<td><h3><%=rs.getString("email") %></h3></td>
							</tr>
							
							<tr>
								<th><h3>&nbspD.O.B :</h3></th>
								<td><h3><%=rs.getString("dob") %></h3></td>
							</tr>
							
							<tr>
								<th><h3>&nbspPhone No :</h3></th>
								<td><h3><%=rs.getString("phoneno") %></h3></td>
							</tr>	
							
							<tr>
								<th><h3>&nbspPassword :</h3></th>
								<td><h3><%=rs.getString("password") %></h3></td>
							</tr>	
							
													
					<%} %>
					</table>
			</div>
		 </div>
	<%
	}catch(Exception e){
	e.printStackTrace();
} %>		 
	<%@ include file="footer.jsp" %> 
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
</body>
</html>