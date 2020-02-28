<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Products</title>
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
	<h4><b><a href="adminlogout.jsp" style="float: right; margin-top: -28px;">Logout</a></b></h4>
	</div> 
	<div class="container text-center" style="background: #f6f3f2; padding: 35px; font-size: large;">
	<h2>Add Products</h2><br>
	<%=request.getAttribute("message") %>
	<form name="form1" method="post" action="uploadFile" enctype="multipart/form-data">
		<h4 style="margin-left: -12%; font-weight: bold;">Category</h4> <select name="cat_id"><br>
		<%
		   	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair", "root" , "");
			Statement stmt=con.createStatement();
			String sql="SELECT * FROM  category";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				%>
				<option value="<%=rs.getString("cat_id") %>"><%=rs.getString("cat_name") %> </option>				
				<%
			}
			con.close();
			stmt.close();
		}catch(Exception e)
		{
			System.out.println(e);
		}
%>
</select>
		<h4 style="margin-left: -16%; font-weight: bold;">Name</h4><input type="text" name="p_name"><br>	
		<h4 style="margin-left: -16%; font-weight: bold;">Price</h4><input type="text" name="p_price"><br> 
		<h4 style="margin-left: -10%; font-weight: bold;">Description</h4> <textarea name="p_desc"></textarea><br>
		<h4 style="margin-left: 40%;"><input type="file" name="p_img"></h4><br>
		 <h3 style="margin-top: -10px;"><input type="submit" name="submit" value="Submit"></h3>
	</form>
</body>
</html>