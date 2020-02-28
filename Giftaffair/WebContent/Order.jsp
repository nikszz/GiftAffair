<%@ page import="com.Product" %>
<%@ page import="com.ShoppingItem" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%@ include file="header.jsp"%>
<html>
<body>
<jsp:useBean id="dbBean" scope="application" class="com.DbBean"/>
<TABLE>
<TR>
  <TD VALIGN="TOP">
<%
  if (dbBean.insertOrder(request.getParameter("name"),request.getParameter("address"),
    request.getParameter("email"),request.getParameter("phn"),(Hashtable) session.getAttribute("shoppingCart"))) 
    {
	session.invalidate();
    System.out.println("Thank you for your purchase");
  }
  else
    out.println("Error");
%>
  </TD>
</TR>
</TABLE>
<%@ include file="footer.jsp" %>
</body>
</HTML>
