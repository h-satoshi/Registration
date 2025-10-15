package com.diworksdev.registration.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.registration.dao.Regist_completeDAO;
import com.opensymphony.xwork2.ActionSupport;

public class Regist_completeAction extends ActionSupport implements SessionAware {
	private String family_name;
	private String last_name;
	private String family_name_kana;
	private String last_name_kana;
	private String mail;
	private String password;
	private String gender;
	private String postal_code;
	private String prefecture;
	private String address_1;
	private String address_2;
	private String authority;
	public Map<String, Object> session;
	private Regist_completeDAO regist_completeDAO = new Regist_completeDAO();
	
	public String execute() throws SQLException {
		regist_completeDAO.registInfo(session.get("family_name").toString(),
									  session.get("last_name").toString(),
									  session.get("family_name_kana").toString(),
									  session.get("last_name_kana").toString(),
									  session.get("mail").toString(),
									  session.get("password").toString(),
									  session.get("gender").toString(),
									  session.get("postal_code").toString(),
									  session.get("prefecture").toString(),
									  session.get("address_1").toString(),
									  session.get("address_2").toString(),
									  session.get("authority").toString()
									  );
		String result = SUCCESS;
		return result;
	}
	
	// family_nameのゲッター: family_nameフィールドの現在値を取得
	public String getFamily_name() {
		return family_name;
	}
		
	// family_nameのセッター: family_nameフィールドに値を設定
	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}
		
	// last_nameのゲッター: last_nameフィールドの現在値を取得
	public String getLast_name() {
		return last_name;
	}
		
	// last_nameのセッター: last_nameフィールドに値を設定
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
		
	// family_name_kanaのゲッター: family_name_kanaフィールドの現在値を取得
	public String getFamily_name_kana() {
		return family_name_kana;
	}
		
	// family_name_kanaのセッター: family_name_kanaフィールドに値を設定
	public void setFamily_name_kana(String family_name_kana) {
		this.family_name_kana = family_name_kana;
	}
	
	// last_name_kanaのゲッター: last_name_kanaフィールドの現在値を取得
	public String getLast_name_kana() {
		return last_name_kana;
	}
	
	// last_name_kanaのセッター: last_name_kanaフィールドに値を設定
	public void setLast_name_kana(String last_name_kana) {
		this.last_name_kana = last_name_kana;
	}
	
	// mailのゲッター: mailフィールドの現在値を取得
	public String getMail() {
		return mail;
	}
	
	// mailのセッター: mailフィールドに値を設定
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	// passwordのゲッター: passwordフィールドの現在値を取得
	public String getPassword() {
		return password;
	}
	
	// passwordのセッター: passwordフィールドに値を設定
	public void setPassword(String password) {
		this.password = password;
	}
	
	// genderのゲッター: genderフィールドの現在値を取得
	public String getGender() {
		return gender;
	}
	
	// genderのセッター: genderフィールドに値を設定
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	// postal_codeのゲッター: postal_codeフィールドの現在値を取得
	public String getPostal_code() {
		return postal_code;
	}
	
	// postal_codeのセッター: postal_codeフィールドに値を設定
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	
	// prefectureのゲッター: prefectureフィールドの現在値を取得
	public String getPrefecture() {
		return prefecture;
	}
	
	// prefectureのセッター: prefectureフィールドに値を設定
	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}
	
	// address_1のゲッター: address_1フィールドの現在値を取得
	public String getAddress_1() {
		return address_1;
	}
	
	// address_1のセッター: address_1フィールドに値を設定
	public void setAddress_1(String address_1) {
		this.address_1 = address_1;
	}
		
	// address_2のゲッター: address_2フィールドの現在値を取得
	public String getAddress_2() {
		return address_2;
	}
	
	// address_2のセッター: address_2フィールドに値を設定
	public void setAddress_2(String address_2) {
		this.address_2 = address_2;
	}
	
	// authorityのゲッター: authorityフィールドの現在値を取得
	public String getAuthority() {
		return authority;
	}
	
	// authorityのセッター: authorityフィールドに値を設定
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}