<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
</head>
<body>
<!-- footer Starts -->
<div class="container">
<%
		Integer c = (Integer)session.getAttribute("counter");
		
		if(c == null || c == 0)
		{
			c = 1;
		}
		
		else
		{
			c++;
		}
	%>
		<h4 style="text-align:right;">You Have Visited : <%=c%> Times</h4>
	<%
		session.setAttribute("counter", c);
	%>
</div>
	<div id="ftr" class="container-fluid">
	<div class="container">
	<div class="row col-sm-3">
	<h1>GiftAffair</h1>	<br>		
	<h4>© 2018 Nikhil Bhardwaj </h4><h4> ALL RIGHTS RESERVED</h4>
	</div>
	<div id="customercare" class=" row col-sm-3 ">
	<h3>Customer Care</h3>
	<ul>
		<li>
			<a href="customercare.jsp"> Shipping Policy</a>
			<a href="customercare.jsp">Returns Policy</a>
			<a href="customercare.jsp">Contact Us</a>
			<a href="visitus.jsp">About Us</a>
		</li>
	</ul>
	</div>

	<div id="customercare" class="col-sm-3">
	<h3>Stay Connected</h3>
	<ul>
		<li>
		<a href="https://www.instagram.com/giftaffair.shop/" class="fotr_icons" ><i class="fa fa-instagram"> #giftaffair.shop</i></a>
		<a href="https://accounts.google.com" class="fotr_icons" style="padding-top:15px;"><i class="fa fa-envelope"> giftaffair.shop@gmail.com</i></a>
		<a href=""  class="fotr_icons	"style="padding-top:15px;"><i class="fa fa-phone"> +91-0000000000</i></a>
		</li>
	</ul>
	</div>
	<div id="back" class="col-sm-3">
	<i class="fa fa-arrow-up"><a href="#top">Back To Top</a></i>
	</div>
	</div>
	</div>
	<!-- end of footer -->
</body>
</html>