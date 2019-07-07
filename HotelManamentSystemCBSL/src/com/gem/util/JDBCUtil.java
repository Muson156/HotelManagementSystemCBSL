package com.gem.util;

import java.io.Closeable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *    @author    
 *    @Date 2019-05-10 20:21:32    
 *
 */
public class JDBCUtil {
  //创建数据库连接
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/hotelms?characterEncoding=utf8", 
					"root",
					"123456");
			return connection;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
  //关闭数据库连接	
	public static void close(Connection connection,Statement statement,ResultSet set) {
		
		try {
			if (set != null) {
				set.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connection.close();
			} 
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
}

