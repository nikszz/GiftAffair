<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="container text-center" style="background: #f6f3f2; padding: 35px; height: 100%;">
	<h2>Login</h2><br>
	<form name="login" action="logincheck.jsp" onsubmit="return loginvalidation()" method="POST" >
	<div class="col-sm-6">
		<div class="form-group login">
		       <input type="email" class="form-control" name="lemail" placeholder="Email*">
		       <input type="password" class="form-control" name="lpswd" placeholder="Password">
		       <div class="checkbox">
	  		   <label><input type="checkbox"> Remember me</label>
			   </div>
			   <button type="submit" class="btn btn-default">Login</button>	
	 	</div>
	 </div>	
	</form>
	</div>
	
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<script type="text/javascript" src="javascript/myscript.js"></script>
	
</body>
</html>