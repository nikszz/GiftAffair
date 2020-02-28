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
	
	<div class="container">
	<h4><b>Welcome:&nbsp <%=session.getAttribute("admin")%></b></h4>
	<h4><b><a href="adminlogout.jsp" style="float: right; margin-top: -28px;">Logout</a></b></h4>
	</div> 
	<div class="container text-center" style="background: #f6f3f2; padding: 35px;">
	<h2>Admin Area *Confidential*</h2><br>
	 	<img alt="" src="images\adminarea.png"> 	 
	</div>
		<div class="container text-center" style="padding-top: 50px;">
			<a href="manageusers.jsp"><div class="col-sm-3">
			<h2><b>Manage Users</b></h2>
			</div></a>
			
			<a href="manageproduct.jsp"><div class="col-sm-3">
			<h2><b>Manage Products</b></h2>
			</div></a>
			
			<a href="addproduct.jsp"><div class="col-sm-3">
			<h2><b>Add Products</b></h2>
			</div></a>
			
			
			<a href="managequeries.jsp"><div class="col-sm-3">
			<h2><b>Manage Queries</b></h2>
			</div></a>
			
						
		</div>
	
</body>
</html>