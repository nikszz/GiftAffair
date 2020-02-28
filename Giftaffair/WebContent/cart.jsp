<%@ page import="com.Product" %>
<%@ page import="com.ShoppingItem" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>GiftAffair</title>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
<%@ include file="header.jsp"%>
<div class="container text-center" style=" background: #f6f3f2; padding: 35px; height: 100%;">
	<h2>Cart</h2><br>
</div>
<jsp:useBean id="dbBean" scope="application" class="com.DbBean"/>
<%
  Hashtable shoppingCart = (Hashtable) session.getAttribute("shoppingCart");
  if (shoppingCart==null)
    shoppingCart = new Hashtable(10);

  String action = request.getParameter("action");
  if (action!=null && action.equals("addShoppingItem")) 
  {
    try {
      int productId = Integer.parseInt(request.getParameter("productId"));
      Product product = dbBean.getProductDetails(productId);
      if (product!=null) 
      {
        ShoppingItem item = new ShoppingItem();
        item.productId = productId;
        item.quantity = 1;
        item.price = product.price;
        item.name = product.name;
        item.description = product.description;

        shoppingCart.remove(Integer.toString(productId));
        shoppingCart.put(Integer.toString(productId), item);
        session.setAttribute("shoppingCart", shoppingCart);
      }
    }
    catch (Exception e) {
      out.println("Error adding the selected product to the shopping cart");
    }
  }

  if (action!=null && action.equals("updateShoppingItem")) 
  {
    try {
      int productId = Integer.parseInt(request.getParameter("productId"));
      int quantity = Integer.parseInt(request.getParameter("quantity"));
      ShoppingItem item = (ShoppingItem) shoppingCart.get(Integer.toString(productId));
      if (item!=null) 
      {
        item.quantity = quantity;
      }
    }
    catch (Exception e) {
      out.println("Error updating shopping cart");
    }
  }

  if (action!=null && action.equals("deleteShoppingItem")) 
  {
    try 
    {
      int productId = Integer.parseInt(request.getParameter("productId"));
      shoppingCart.remove(Integer.toString(productId));
    }
    catch (Exception e) {
      out.println("Error deleting the selected item from the shopping cart");
    }
  }

%>
<div class="container" style="background: #f6f3f2;">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr style="font-size:large;">
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
		<%Enumeration enum1 = shoppingCart.elements();
	    int i=0;int itm=0;double pri=0;
	    while (enum1.hasMoreElements()) {
	      ShoppingItem item = (ShoppingItem) enum1.nextElement();
	      ++i; %>
					<tbody>
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-10">
										<h4 class="nomargin"><%=item.name%></h4>
										<p><%=item.description%></p>
									</div>
								</div>
							</td>
							<td data-th="Price"><%=item.price%></td>
							<form>
						      <INPUT TYPE="HIDDEN" NAME="action" VALUE="updateShoppingItem">
						      <INPUT TYPE="HIDDEN" NAME="productId" VALUE="<%=item.productId%>"><%int qty=item.quantity;itm=itm+qty;%>
						      <TD><INPUT type="number" name="quantity" VALUE="<%=qty%>" style="width: 100%; text-align: center; "></TD><%double pric=item.quantity*item.price;pri=pri+pric;%>
						      <td data-th="Subtotal" class="text-center"><%=pric%></td>
						      <td><button class="btn btn-info btn-md"><i class="fa fa-refresh"> Update</i></button></td>
						    </form>
						    <form>
						      <INPUT TYPE="HIDDEN" NAME="action" VALUE="deleteShoppingItem">
						      <INPUT TYPE="HIDDEN" NAME="productId" VALUE="<%=item.productId%>">
						      <TD><button class="btn btn-danger btn-md"  style="margin-left: -20px;"><i class="fa fa-trash-o"> Remove</i></button></TD>
						    </form>
						    
						</tr>
					</tbody>
					<tfoot>
<%} %>	
						<tr class="visible-xs">
							<td class="text-center"><strong><%=pri%></strong></td>
						</tr>
						<tr>
							<td><FONT FACE="Verdana" SIZE="3"><B>Total Product: <%=i%></B></FONT></td>
							<td></td>
							<TD><FONT FACE="Verdana" SIZE="3"><B>Quantity:<%=itm%></B></FONT></TD>
							<TD style="text-align: center;"><FONT FACE="Verdana" SIZE="3"><B>Total:<br> <%=pri%></B></FONT></TD>
							<td><a href="CheckOut.jsp?action=checkOut" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
						
						<td><a href="products.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
					</tfoot>
				</table>
</div>
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="javascript/jquery.js" ></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<script type="text/javascript" src="javascript/myscript.js"></script> 
</BODY>
</HTML>
