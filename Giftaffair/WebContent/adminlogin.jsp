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
<title>Admin Login</title>
</head>
<body>

	
	<div class="container text-center" style="background: #f6f3f2; padding: 35px;">
	<h2>Admin Area *Confidential*</h2><br>
	</div>
	<div class="container text-center" style="background: #f6f3f2; padding: 35px;">
	<h2>Admin Login	</h2>
	<form name="adminlogin" action="adminlogincheck.jsp" onsubmit="adminvalidation()" >
	<div class="col-sm-6">
		<div class="form-group login">
		       <input type="email" class="form-control" name="email" placeholder="Email*">
		       <input type="password" class="form-control" name="pswd" placeholder="Password">
		      
		       <button type="submit" class="btn btn-default" style="margin-top: 20px;">Login</button>	
			 
	 	</div>
	 </div>	
	</form>
	</div>	

	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<script type="text/javascript" src="javascript/myscript.js"></script>
</body>
</html>