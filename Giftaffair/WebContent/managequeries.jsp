<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Queries</title>
</head>
<body>
	<%if(session.getAttribute("admin") == null)
	{%>
			<script type="text/javascript">
				alert("Access Denied..! You Cant Access Without Login");
				window.location="adminlogin.jsp";
			</script>
		
	<%}%>
	<div class="container">
	<h4><b>Welcome:&nbsp <%=session.getAttribute("admin")%></b></h4>
	<h4><b><a href="adminlogout.jsp">Logout</a></b></h4>
	</div> 
	<div class="container text-center" style="background: #f6f3f2; padding: 35px; font-size: large;">
	<h2>Manage Queries</h2><br>
	<form name="query">
	<table border="2" width="100%" align="center">
	 <tr style="text-align: center;">
			    <th>Q_ID</th>
			    <th>Customer Name</th> 
			    <th>Customer Email</th>
			    <th>Query Subject</th>
			    <th>Message</th>
			    <th>Receiving Time</th>
			    <th>Action</th>
		</tr>
 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root",""); 
		Statement stmt =  con.createStatement();
		String sql = "select * from customerquery";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){%> 
		<tr>
		 
				<td><%=rs.getString("q_id") %></td>
				<td><%=rs.getString("c_name") %></td>	
				<td><%=rs.getString("c_email") %></td>	
				<td><%=rs.getString("q_subject") %></td>	
				<td><%=rs.getString("message") %></td>	
				<td><%=rs.getString("createtime") %></td>	
				<td><a href="deletequery.jsp?dquery=<%=rs.getString("q_id")%>">Delete</a></td>
				
		</tr>
		<%}%>
		</table>
	</form>
	<%}catch(Exception e){
		e.printStackTrace();
	}		
 %>
	 	 	 
	</div>
	
</body>
</html>