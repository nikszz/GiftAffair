<%@page import="com.sun.corba.se.spi.orbutil.fsm.State"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>Product Details</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container  " style="background: #f6f3f2; padding: 35px;">
	<h2 class="text-center">Product Description</h2><br>
	<form action="productdetails.jsp" method="post">
	<%
		String p_id = request.getParameter("pID");
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
			Statement stmt = con.createStatement();
			String sql ="select * from products p join category c on c.cat_id=p.cat_id where p_id ='"+p_id+"' ";
			ResultSet rs = stmt.executeQuery(sql);
	%>
			
				<%while (rs.next()){ %>
				<div class="col-sm-5"><br><br>
					<img src="images/prodImages/<%=rs.getString("p_img") %>" style="width: 580px;">
				</div>
					<div class="col-sm-5" style="float: right; margin-top: 20px;">
			 		<h2><b><%=rs.getString("p_name") %></b></h2>
					<h3><b>Category: <%=rs.getString("cat_name") %></b></h3> 
		            <h3><b>Price: &#8377;<%=rs.getString("p_price") %></b></h3>
		            <h3><b>Product Description</b></h3>
		            <div style="text-align: justify;">
		             <h4><%=rs.getString("p_desc") %></h4>
		            </div>
		            <br>
		            <div class="btn btn-block btn-lg btn-warning"><span class="glyphicon glyphicon-shopping-cart"></span>
		          	 <%= "<a href='cart.jsp?productId="+p_id+"&action=addShoppingItem'>Add To Cart</a>" %>
		            </div>
		            
		            </div>
			<%} %>
			
	
	<%	}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</form>
	</div>

	<%@ include file="footer.jsp" %> 
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<script type="text/javascript" src="javascript/myscript.js"></script>
</body>
</html>