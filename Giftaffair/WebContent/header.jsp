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
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
</head>
<body>
<!-- header -->
	<a name="top"></a>
	<div class="container-fluid top_bar">
	<div class="container">
	<div id="social" class="row">
	<div class="col-sm-3" style="margin-top: 5px;">
	<a href="https://www.facebook.com/" ><i class="fa fa-facebook" style="font-size: 18px;
	 color: #fff;"></i></a>
	<a href="https://accounts.google.com" class="social_icons"><i class="fa fa-google" style="font-size: 18px; 
	color: #fff;"></i></a>
	<a href="https://www.youtube.com/" class="social_icons"><i class="fa fa-youtube-play" style="font-size: 18px; 
	color: #fff;"></i></a>
	<a href="https://www.instagram.com/giftaffair.shop/" class="social_icons"><i class="fa fa-instagram" style="font-size: 18px; 
	color: #fff;"></i></a>
	</div> <!-- end of column 3 -->
	
	<div class="col-sm-7 text-right loginbar">
	Amazing Shopping Experience
	</div>
	<% if(session.getAttribute("em") == null || session.getAttribute("em") == "") { %>
	<div class="col-sm-2 loginbar">
	<a href="signup.jsp"><span class="fa fa-user social_icons"></span> Sign Up</a>
    <a href="login.jsp"><span class="glyphicon glyphicon-log-in social_icons"></span> Login</a>
    <%}else { %>
    <div class="col-sm-2 text-right">
		<li class="dropdown" style="list-style: none;">
	    	<a href="" data-toggle="dropdown" class="dropdown-toggle usernm">Welcome<span class="glyphicon glyphicon-hand-right social_icons"></span><b><%=session.getAttribute("fnm") %></b></a>
		    	<ul class="dropdown-menu usernmsub">
		        	<li><a href="myprofile.jsp">My Profile </a></li>
		        	<li><a href="changepassword.jsp">Change Password</a></li>
		        	<li><a href="logout.jsp">Logout</a></li>
		      	</ul>
		</li>
	<%} %>
	</div> <!-- end of column 7 -->
	</div> <!-- end of row-->
	</div> <!-- end of container-->
	</div> <!-- end of container fluid-->

<!-- logo and navigation-->
	<div class="container-fluid" style="background: #242323;">
	<div class="container my_nav ">
	<div class="row">
	<div id="logo" class="col-sm-3">
		<a href="index.jsp" style="color: #fff; text-decoration: none;"><h1>The Gift Affair</h1></a>
	</div> <!-- end of column 3/logo-->

	<div class="col-sm-9 my_nav">
	<ul  class="nav navbar-nav pull-right" style="padding: 10px;">
	<li><a href="index.jsp">HOME</a></li>
		<li class="dropdown">
	    	<a href="" data-toggle="dropdown" class="dropdown-toggle" style="background: #242323;">COLLECTION</a>
		    	<ul class="dropdown-menu dpdown">
		  	<%
		   	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair", "root" , "");
			Statement stmt=con.createStatement();
			String sql="SELECT * FROM  category";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				%>
				<li><a href="products.jsp?catId=<%=rs.getString("cat_id") %>"><%=rs.getString("cat_name") %> </a></li>
				<%
			}
			out.print("</table>");
			con.close();
			stmt.close();
		}catch(Exception e)
		{
			System.out.println(e);
		}
%>
	 	</ul>
		</li>
		<li><a href="lookbook.jsp">LOOKBOOK</a></li>
		<li><a href="customercare.jsp">CUSTOMER CARE</a></li>
		<li><a href="visitus.jsp">VISIT US</a></li>
		<li><a href="cart.jsp"><i class="fa fa-shopping-cart" style="font-size: 26px;"></i></a></li>
	</ul>		
	</div> <!-- end of column 9/navbar-->
	</div>	<!-- end of row-->
	</div> <!-- end of container-->
	</div> <!-- end of container fluid -->
	<!-- end of logo and navigation-->
	<!-- end of header -->	
</body>
</html>