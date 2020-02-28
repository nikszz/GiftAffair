<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Customer</title>
</head>
<body>

<%
		try{
			String p_id = request.getParameter("p_id");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/giftaffair","root","");
			Statement stmt = con.createStatement();
			String sql="delete from products where p_id ='"+p_id+"' ";
			
			if(p_id != null)
			{%>	
				<script type="text/javascript">
				if(confirm("Really want to delete..?"))
				{
					alert("Product Deleted Sucessfully...!");
					window.location="manageproduct.jsp";
					<%int i = stmt.executeUpdate(sql);%>
				}
				else
				{
					alert("Admin Doesn't want to Delete..!");
					window.location="manageproduct.jsp";
				}
				</script>
			<%}
			else
				out.println("User "+p_id+" does not found");
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>

</body>
</html>