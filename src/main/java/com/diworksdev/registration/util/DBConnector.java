package com.diworksdev.registration.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
	private static String drivarName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/registration";
	private static String user = "root";
	private static String password = "";
	
	public Connection getConnection() {	// データベース接続を取得するメソッド
		Connection con = null;	// Connectionオブジェクトを初期化
		
	try {
		Class.forName(drivarName);
		con = (Connection) DriverManager.getConnection(url,user,password);
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	return con; // mysqlに接続した結果をメソッドの呼出し元に渡す。
	}
}
