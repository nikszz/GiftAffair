<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width">
	<title>CustomerCare</title>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
<%@ include file="header.jsp"%>
	<form name="ccare" action="customerquery.jsp" method="post" onsubmit="return customercare()">
	<div class="container box">
			<h2>Customer Care</h2>
			<h4>Have any questions or concerns ? We are always ready to help! Call</h4>
			 <h4>us at <b>+91-0000000000</b> or send us an email at</h4>
			 <h4><b>giftaffair.shop@gmail.com</b></h4><br>
		<div class="row col-sm-6">
		   <div class="form-group cform">
		       <input type="text" class="form-control" name="name" placeholder="Name*">
		       <input type="email" class="form-control" name="email" placeholder="Email*">
		       <input type="text" class="form-control" name="sub" placeholder="Subject">
			</div>
		</div>
	
		<div class="col-sm-6">
			<div class="form-group cform">
				<textarea class="form-control" rows="5" name="msg" placeholder="Message"></textarea>
				<button type="submit" class="btn btn-default">Send</button>
			</div>
		</div>
	</div>
	</form>

	<div class="container">
	<h2>FAQ</h2>
	<div class="row col-sm-6">
	<h3>How do I track my order?</h3>
	<span>
	Sign in to view your current order status or past order history.
	You can also write a review for items you've purchased.
	look up an order by order number:It's at the top of your 
	Order Confirmation email or on the invoice that came with your shipment</span>
	<h3>What is your returns policy?</h3>
	<span>
	Returns must be in original condition, unworn/unused with original tags and labels.
	Your return item(s) will be inspected upon arrival before your refund is processed.
	It can take up to 10 business days for us to receive and process your return.
	If the return is our fault, we'll cover this charge.
	</span>
	</div>
	
	<div class="col-sm-6">
	<h3>How can I contact your couriers?</h3>
	<span>
	We use a secure courier service to make sure your gifts reach you safe and sound.
	A signature is always required on delivery, so you can order with confidence. 
	We've got a great selection of delivery options below to make sure we get your 
	gifts to you when its convenient for you.
	</span>
	
	<h3>How do I return an item?</h3>
	<span>
	To return an item for a refund, replacement, or exchange: Find the item in
	My Cart under Purchase History and select Return this item from the
	 More actions drop-down menu. Select the reason for the return</span>
	</div>
	</div><br>

	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<script type="text/javascript" src="javascript/myscript.js"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>