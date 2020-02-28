<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>LookBook</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container-fluid text-center" style="background: #f6f3f2; padding: 35px;">
	<h2>LOOKBOOK</h2>
	</div>
	
	<div id = "myCarousel" class = "carousel slide">
   
   <!-- Carousel indicators -->
   <ol class = "carousel-indicators">
      <li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
      <li data-target = "#myCarousel" data-slide-to = "1"></li>
      <li data-target = "#myCarousel" data-slide-to = "2"></li>
      <li data-target = "#myCarousel" data-slide-to = "3"></li>
      <li data-target = "#myCarousel" data-slide-to = "4"></li>
   </ol>   
   
   <!-- Carousel items -->
   <div class = "carousel-inner">
      <div class = "item active">
      	 <!-- Mens  -->
      	 <div class="col-sm-4">
         <img src = "images/prodImages/men4.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/men2.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/men3.PNG" class="img-responsive" >
         </div>
         <!-- Mens Close  -->
      </div>
      
      <div class = "item">
          <!-- Womens  -->
      	 <div class="col-sm-4">
         <img src = "images/prodImages/women4.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/women2.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/women3.PNG" class="img-responsive" >
         </div>
         <!-- Womens Close  -->
      </div>
      
      <div class = "item">
          <!-- Accessories  -->
      	 <div class="col-sm-4">
         <img src = "images/prodImages/acc1.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/acc2.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/acc3.PNG" class="img-responsive" >
         </div>
         <!-- Accessories Close  -->
      </div>
      
      <div class = "item">
          <!-- Cakes and Packages  -->
      	 <div class="col-sm-4">
         <img src = "images/prodImages/cp1.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/cp6.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/cp8.PNG" class="img-responsive" >
         </div>
         <!-- Cakes and Packages Close  -->
      </div>
   
   		<div class = "item">
          <!-- Customized Gifts  -->
      	 <div class="col-sm-4">
         <img src = "images/prodImages/cg2.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/cg4.PNG" class="img-responsive" >
         </div>
         
         <div class="col-sm-4">
         <img src = "images/prodImages/cg3.PNG" class="img-responsive" >
         </div>
         <!-- Customized Gifts Close  -->
        </div>
         
   </div><!-- Carosul inner Close  -->
   
   <!-- Carousel nav -->
   <a class = "carousel-control left" href = "#myCarousel" data-slide = "prev">&lsaquo;</a>
   <a class = "carousel-control right" href = "#myCarousel" data-slide = "next">&rsaquo;</a>
   </div>
				


		
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	
</body>
</html>