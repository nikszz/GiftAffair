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
<title>Manage Products</title>
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
	<h2>Manage Products</h2><br>
	
	<table border="2" width="100%" align="center">
		 <tr>
			    <th>P_ID</th>
			    <th>Product Name</th> 
			    <th>Category ID</th>
			    <th>Price</th>
			    <th>Image</th>
			    <th>Description</th>
			    <th>Action</th>
		</tr>
		
 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root",""); 
		Statement stmt =  con.createStatement();
		String sql = "select * from products";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){%>
		<tr>
				<td><%=rs.getString("p_id") %></td>
				<td><%=rs.getString("p_name") %></td>	
				<td><%=rs.getString("cat_id") %></td>	
				<td><%=rs.getString("p_price") %></td>	
				<td><img src="images/prodImages/<%=rs.getString("p_img") %>"></td>	
				<td><%=rs.getString("p_desc") %></td>	
				<td><a href="editproduct.jsp?p_id=<%=rs.getString("p_id")%>">Edit |</a> 
				<a href="deleteproduct.jsp?p_id=<%=rs.getString("p_id")%>">Delete</a></td>	
		</tr>
		<%}%>
		</table>		
	<%}catch(Exception e){
		e.printStackTrace();
	}		
 %>
	 	 	 
	</div>
	
</body>
</html>