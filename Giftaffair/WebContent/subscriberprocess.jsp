<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subscriber Processing..!</title>
</head>
<body>
<%
		try{
			String em = request.getParameter("email");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
			String sql ="insert into subscriber(sub_email,currentdate) values ('"+em+"',now() )";
			Statement stmt = con.createStatement();
			int i = stmt.executeUpdate(sql);
			if(i>0)
			{%>
				<script type="text/javascript">
					alert("Sucessfully Subscribed...!");
					window.location="index.jsp"
				</script>		
			<%}
			}catch(Exception e){%>
				<script type="text/javascript">
					alert("You Are Already Subscribed..!");
					window.location="index.jsp"
				</script>
			<% }%>
		
%>
</body>
</html>