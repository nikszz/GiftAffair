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
	<%@ include file="header.jsp"%>
	<div class="container-fluid">
	<div class="container">
	<div class="row">
	<div id="img" class="col-sm-6">
	<img src="images/slide1.jpeg" class="img-responsive" >	
	</div>
	<div id="imgcontent" class="col-sm-6 slide1content">
	<h1>SULTRY & SMART</h1><br>
	<h3>FASHIONABLE LOOKS</h3>
	<h1 style="border: solid 2px; width: 20%; margin-left: 160px; "></h1>
	<a href="products.jsp?catId=2" class="mybutton"><h3>Shop Women</h3></a>
	</div> 
	</div>
	</div> <!-- end of container/slide section-->
	</div>

	<div class="container-fluid">
	<div class="container">
	<div class="row">
	<div id="imgcontent" class="col-sm-6 slide1content">
	<h1>ELEGANT & SLICK</h1><br>
	<h3>GET READY TO ROCK</h3>
	<h1 style="border: solid 2px; width: 20%; margin-left: 160px; "></h1>
	<a href="products.jsp?catId=1" class="mybutton"><h3>Shop Men</h3></a>
	</div>
	<div id="img" class="col-sm-6">
	<img src="images/slide2.jpeg" class="img-responsive"> <br><br>
	</div> 

	<!-- Newsletter -->
	<span class="text-center"> 
	<h1>GET ON THE LIST</h1>
	<h3>and be the first to shop new arrivals and exclusive promotions.</h3>
	</span><br>
	<div id="sbdiv" class="col-lg-4 col-lg-offset-4">
		<form name="sub" action="subscriberprocess.jsp" method="post"  onsubmit="return subscriber()">
			<div class="form-group"><br>
			<input type="email" name="email" class="form-control  input-lg" placeholder="Email Address" required><br>
			<button type="submit" class="btn btn-default  btn-lg" name="submit">Subscribe Now</button>
			</div>	
		</form>
	</div>
	</div> <!-- end of newsletter--><br><br>
	</div> <!-- end of container/slide section-->
	</div> <!-- end of container fluid-->

	<!-- Last Section Start-->
	<div class="container">
	<div id="lastsec" class="row text-center" style="border: solid 2px; background: #242323;">
		<div class="col-sm-4">
		<a href="products.jsp?catId=3"><img src="images/acc5.jpg" class="img-responsive">
		<h2> ACCESSORIES</h2></a>
		</div>
		
		<div class="col-sm-4"><br>
		<a href="products.jsp?catId=4"><img src="images/cakepkg2.jpg" class="img-responsive">
		<h2>CAKES & PACKAGES</h2></a>
		</div>
		
		<div class="col-sm-4">
		<a href="products.jsp?catId=5"><img src="images/custom.jpg" class="img-responsive">
		 <h2>CUSTOMIZED GIFT</h2></a>
		</div>
				
	</div> <!-- end of sectin part-->
	</div> <!-- end of container--><br><br>
	
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
</body>
</html>