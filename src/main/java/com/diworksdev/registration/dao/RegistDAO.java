// プログラムから「このデータを保存して」「あのデータを取ってきて」といったデータベースへの具体的な指示を担う
package com.diworksdev.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.diworksdev.registration.util.DBConnector;
import com.diworksdev.registration.util.DateUtil;

public class RegistDAO {
	private DBConnector dbConnector = new DBConnector();	// データベースに接続するためのDBConnectorの準備する。
	private Connection connection = dbConnector.getConnection();	// DBConnectorを使って、実際にデータベースへの接続（パイプ）を確立する。
	private DateUtil dateUtil = new DateUtil();		// 日付に関する便利な機能を使うためのDateUtilの準備する。
	private String sql = "INSERT INTO registration_transaction "
						 +"(family_name,last_name,family_name_kana,last_name_kana,mail,password,"
						 +"gender,postal_code,prefecture,address_1,address_2,authority,registered_time)"
						 +" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	// ユーザー情報をデータベースに保存する
	public void registrationUser(String family_name, String last_name, String family_name_kana, String last_name_kana,
								 String mail, String hashedpassword, int gender, int postal_code, String prefecture,
								 String address_1, String address_2, int authority) throws SQLException {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);	// SQLを使用してPreparedStatementオブジェクトを作成
			preparedStatement.setString(1, family_name);			// 1番目の?に苗字を設定
			preparedStatement.setString(2, last_name);			// 2番目の?に名前を設定
			preparedStatement.setString(3, family_name_kana);	// 3番目の?に苗字（フリガナ）を設定
			preparedStatement.setString(4, last_name_kana);	// 4番目の?に名前（フリガナ）を設定
			preparedStatement.setString(5, mail);		// 5番目の?にメールアドレスを設定
			preparedStatement.setString(6, hashedpassword);		// 6番目の?にパスワードを設定
			preparedStatement.setInt(7, gender);		// 7番目の?に性別を設定
			preparedStatement.setInt(8, postal_code);	// 8番目の?に郵便番号を設定
			preparedStatement.setString(9, prefecture);	// 9番目の?に都道府県を設定
			preparedStatement.setString(10, address_1);	// 10番目の?に市区町村を設定
			preparedStatement.setString(11, address_2);	// 11番目の?に番地を設定
			preparedStatement.setInt(12, authority);	// 12番目の?に権限を設定
			preparedStatement.setString(13, dateUtil.getDate());	// DateUtilから現在の日付と時刻を取得し、13番目の?に設定
			preparedStatement.execute();	// SQLを実行し、データベースにデータを挿入する
		} catch (Exception e) {		// データベース操作中に何らかの予期せぬエラーが発生した場合、このブロックが実行される。
			e.printStackTrace();	// エラーの詳細（どこで何が起きたか）をコンソールに出力する。
		} finally {		// tryブロックが正常に終わっても、エラーでcatchブロックが実行されても、「最終的に、これをやってね」という部分
			connection.close();		// データベースとの接続（パイプ）を閉じる。
		}
	}

}