package com.diworksdev.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.diworksdev.registration.util.DBConnector;

public class Regist_completeDAO {
	private final DBConnector dbConnector = new DBConnector();
	private final String sql = "INSERT INTO registration_transaction "
						+"(family_name,last_name,family_name_kana,last_name_kana,mail,password,"
						+"gender,postal_code,prefecture,address_1,address_2,authority)"
						+" VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
	
	public void registInfo(String family_name,String last_name,String family_name_kana,
						   String last_name_kana,String mail,String password,int gender,
						   int postal_code,String prefecture,String address_1,String address_2,
						   int authority) throws SQLException {
		
		try (Connection connection = dbConnector.getConnection(); 
			 PreparedStatement preparedStatement = connection.prepareStatement(sql)){
			
			preparedStatement.setString(1, family_name);
			preparedStatement.setString(2, last_name);
			preparedStatement.setString(3, family_name_kana);
			preparedStatement.setString(4, last_name_kana);
			preparedStatement.setString(5, mail);
			preparedStatement.setString(6, password);
			preparedStatement.setInt(7, gender);
			preparedStatement.setInt(8, postal_code);
			preparedStatement.setString(9, prefecture);
			preparedStatement.setString(10, address_1);
			preparedStatement.setString(11, address_2);
			preparedStatement.setInt(12, authority);
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			throw e;
		} 
	}
}
