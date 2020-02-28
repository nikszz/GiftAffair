package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ConnectionProvider 
{

	static String dsn="",driver="",userName="",password="";
	public ConnectionProvider() {
		ResourceBundle rb= ResourceBundle.getBundle("DBSettings");
		driver=rb.getString("driverClass");
		dsn=rb.getString("conStr");
		userName=rb.getString("userName");
		password=rb.getString("password");
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	public static synchronized Connection getConnection() throws SQLException 
	{
		Connection con=null;
		ResourceBundle rb= ResourceBundle.getBundle("DBSettings");
		driver=rb.getString("driverClass");
		dsn=rb.getString("conStr");
		userName=rb.getString("userName");
		password=rb.getString("password");
		System.out.println("driver "+driver);
		System.out.println("dsn "+dsn);
		System.out.println("userName "+userName);
		System.out.println("password "+password);
		
		try 
		{
			if(con==null)
			{   Class.forName(driver);	
				con = DriverManager.getConnection(dsn,userName,password);           
			}     
		}catch (Exception e) 
		{
			System.out.println("Unable to get Connection Due to Following Exception \n");
			e.printStackTrace(System.out);
			return null;
		}
		return con;
	}
	public static void close(Connection con) {
		try  {
			con.close();
		}
		catch(Exception ex) {
		}
	}
	public static void main(String arr[]) throws Exception
	{
		ConnectionProvider cp=new ConnectionProvider();
		System.out.println(cp.getConnection());
	}

}