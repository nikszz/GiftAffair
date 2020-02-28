<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>

<%@ include file="header.jsp" %>
	<div class="container text-center" style="background: #f6f3f2; padding: 35px;">
	<h2>Forgot Password</h2><br>
	<form name="forgot" action="forgotpswd.jsp" >
	<div class="col-sm-6">
		<div class="form-group login">
		       <input type="text" class="form-control" name="email" placeholder="Email*">
		       <input type="text" class="form-control" name="phone" placeholder="Phone No*">
		       <input type="date"  class="form-control" name="birthdate">
		       <button type="submit" class="btn btn-default">Submit</button>	
			   
			   
	 	</div>
	 </div>	
	</form>
	</div>
	
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	

</body>
</html>