package com.devfox.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.junit.Test;


public class MySQLConnectionTest {

	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/master?useSSL=false";
	private static final String USER = "root";
	private static final String PW = "6393";
	
	@Test
	public void testConnection() throws Exception
	{
		Class.forName(DRIVER);
		
		try 
		{
			Connection con = DriverManager.getConnection(URL,USER,PW);
			System.out.println(con);
			
			Statement stmt = con.createStatement();
			
			String sql = "SELECT ID,PW,NAME FROM TEST";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next())
			{
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String name = rs.getString("NAME");
				
				System.out.print("ID : " + id + ", ");
				System.out.print("PW : " + pw + ", ");
				System.out.println("NAME : " + name);
				
					
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
}
