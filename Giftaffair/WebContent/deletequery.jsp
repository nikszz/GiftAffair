<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Query</title>
</head>
<body>

<%
		try{
			String dquery = request.getParameter("dquery");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/giftaffair","root","");
			Statement stmt = con.createStatement();
			String sql="delete from customerquery where q_id ='"+dquery+"' ";
			
			if(dquery != null)
			{%>	
				<script type="text/javascript">
				if(confirm("Really want to delete..?"))
				{
					alert("Query Deleted Sucessfully...!");
					window.location="managequeries.jsp";
					<%int i = stmt.executeUpdate(sql);%>
				}
				else
				{
					alert("Admin Doesn't want to Delete..!");
					window.location="managequeries.jsp";
				}
				</script>
			<%}
			else
				out.println("Query "+dquery+" does not found");
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>

</body>
</html>