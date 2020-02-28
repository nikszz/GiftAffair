package com;

import java.util.Hashtable;
import java.util.ArrayList;
import java.util.Enumeration;
import java.sql.*;

public class DbBean 
{
  public String dbUrl = "";
  public String dbUserName = "";
  public String dbPassword = "";

  public void setDbUrl(String url) {
    dbUrl = url;
  }
  public void setDbUserName(String userName) {
    dbUserName = userName;
  }
  public void setDbPassword(String password) {
    dbPassword = password;
  }

  public Hashtable getCategories() 
  {
    Hashtable categories = new Hashtable();
    try {
      Connection connection = ConnectionProvider.getConnection();
      Statement s = connection.createStatement();
      String sql = "SELECT CategoryId, Category FROM Categories" +" ";
      ResultSet rs = s.executeQuery(sql);
      while (rs.next()) {
        categories.put(rs.getString(1), rs.getString(2) );
      }
      rs.close();
      s.close();
      connection.close();
    }
    catch (SQLException e) {}
    return categories;
  }

  public ArrayList getSearchResults(String keyword) 
  {
    ArrayList products = new ArrayList();
    try {
      Connection connection = ConnectionProvider.getConnection();
      Statement s = connection.createStatement();
      String sql = "SELECT ProductId, Name, Description, Price FROM Products" +
        " WHERE Name LIKE '%" + keyword.trim() + "%'" +
        " OR Description LIKE '%" + keyword.trim() + "%'";
      ResultSet rs = s.executeQuery(sql);
      while (rs.next()) 
      {
        Product product = new Product();
        product.id = rs.getInt(1);
        product.name = rs.getString(2);
        product.description = rs.getString(3);
        product.price = rs.getDouble(4);
        products.add(product);
      }
      rs.close();
      s.close();
      connection.close();
    }
    catch (SQLException e) {}
    return products;
  }

  public ArrayList getProductsInCategory(String categoryId) 
  {
    ArrayList products = new ArrayList();
    try {
      Connection connection = ConnectionProvider.getConnection();
      Statement s = connection.createStatement();
      String sql = "SELECT pd_id, pd_name, pd_description, pd_price FROM products" +
        " WHERE cat_id=" + categoryId;
      ResultSet rs = s.executeQuery(sql);
      while (rs.next()) {
        Product product = new Product();
        product.id = rs.getInt(1);
        product.name = rs.getString(2);
        product.description = rs.getString(3);
        product.price = rs.getDouble(4);
        products.add(product);
      }
      rs.close();
      s.close();
      connection.close();
    }
    catch (SQLException e) {}
    return products;
  }

  public Product getProductDetails(int productId) 
  {
    Product product = null;
    try {
      Connection connection = ConnectionProvider.getConnection();
      Statement s = connection.createStatement();
      String sql = "SELECT p_id, p_name, p_desc, p_price FROM products"+" WHERE p_id=" + Integer.toString(productId);
      System.out.println(sql);
      ResultSet rs = s.executeQuery(sql);
      if (rs.next())
      {
    	product = new Product();
        product.id = rs.getInt(1);
        product.name = rs.getString(2);
        product.description = rs.getString(3);
        product.price = rs.getDouble(4);
      }
      rs.close();
      s.close();
      connection.close();
    }
    catch (SQLException e) {e.printStackTrace();}
    return product;
  }

  public boolean insertOrder(String name, String address,
    String email, String phn, Hashtable shoppingCart) 
  {
    boolean returnValue = false;
    //long orderId = System.currentTimeMillis();
    int orderId = (int )(Math. random() * 5000000 + 1);
    Connection connection = null;
    try {
      connection = ConnectionProvider.getConnection();
      connection.setAutoCommit(false);
      Statement s = connection.createStatement();
      String sql = "INSERT INTO Orders" +
        " (OrderId, Name, DeliveryAddress, Email, phoneno)" +
        " VALUES" +
        " (" + orderId + ",'" + name + "','" + address + "'," +
        "'" + email + "','" + phn + "')";
      System.out.println(sql);
      s.executeUpdate(sql);
      // now insert items into OrderDetails table
      Enumeration enum1 = shoppingCart.elements();
      while (enum1.hasMoreElements()) 
      {
        ShoppingItem item = (ShoppingItem) enum1.nextElement();
        sql = "INSERT INTO OrderDetails (OrderId, ProductId, Quantity, Price)" +
        " VALUES (" + orderId + "," + item.productId + "," +
        item.quantity + "," + item.price + ")";
        s.executeUpdate(sql);
      }

      s.close();
      connection.commit();
      connection.close();
      returnValue = true;
    }
    catch (SQLException e) 
    {
    	e.printStackTrace();
      try {
        connection.rollback();
        connection.close();
      }
      catch (SQLException se) {
    	  e.printStackTrace();
      }
    }
    return returnValue;
  }
  
}
