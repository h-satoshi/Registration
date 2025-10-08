package com.diworksdev.registration.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.registration.dao.Regist_completeDAO;
import com.opensymphony.xwork2.ActionSupport;

public class Regist_completeAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;
	private Regist_completeDAO regist_completeDAO = new Regist_completeDAO();
	
	public String execute() throws SQLException {	// セッションからデータ型を変換して取得
		String family_name = (String) session.get("family_name");
		String last_name = (String) session.get("last_name");
		String family_name_kana = (String) session.get("family_name_kana");
		String last_name_kana = (String) session.get("last_name_kana");
		String mail = (String) session.get("mail");
		String password = (String) session.get("password");
		int gender = (int) session.get("gender");
		int postal_code = (int) session.get("postal_code");
		String prefecture = (String) session.get("prefecture");
		String address_1 = (String) session.get("address_1");
		String address_2 = (String) session.get("address_2");
		int authority = (int) session.get("authority");
		
		regist_completeDAO.registInfo(	// DAOのregistInfoを呼び出す
				family_name, 
				last_name, 
				family_name_kana, 
				last_name_kana, 
				mail, 
				password, 
				gender, 
				postal_code, 
				prefecture, 
				address_1, 
				address_2, 
				authority
		);
		
		String result = SUCCESS;
		return result;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}