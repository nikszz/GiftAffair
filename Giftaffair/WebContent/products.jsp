<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>GiftAffair</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div class="container text-center " style="background: #f6f3f2; padding: 35px;">
	<h2>Products</h2><br>
	<%
	String catId = request.getParameter("catId");
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
	Statement stmt = con.createStatement();
	String sql ="";
	if(catId!=null && !catId.equals("")){
		sql ="select * from products p join category c on c.cat_id=p.cat_id where c.cat_id="+catId;
	}else{
	 sql ="select * from products p join category c on c.cat_id=p.cat_id ";
	}
	ResultSet rs = stmt.executeQuery(sql);
	%>
		
		    <%while (rs.next()){%>
		    	 <div class="col-sm-4" style="float: left;"><br><br>
		    	 	<img src="images/prodImages/<%=rs.getString("p_img") %>" style=" width: 200px; height: 300px;">
			  		<h4><%=rs.getString("p_name") %></h4>
					<p><%=rs.getString("cat_name") %></p>
		            <p><%=rs.getString("p_price") %></p>
		            <p><%=rs.getString("p_desc") %></p>
		            <a href="productdetails.jsp?pID=<%=rs.getString("p_id") %>" class="btn btn-primary">Buy Now</a>
		       	</div>
			 <%} %>

			<%}catch(Exception e){
				e.printStackTrace();
			}
		%>
		</div>
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
</html>