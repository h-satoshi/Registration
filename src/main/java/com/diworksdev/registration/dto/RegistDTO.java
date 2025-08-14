// 複数のデータをひとまとめにして、プログラムの異なる部分（ウェブページから情報を受け取り、データベースに保存するまで）の間で効率よく受け渡すための「データの入れ物」
package com.diworksdev.registration.dto;

public class RegistDTO {
	private String family_name;	// ユーザーの苗字を保存するための変数
	private String last_name;	// ユーザーの名前を保存するための変数
	private String family_name_kana;	//ユーザーの苗字（フリガナ）を保存するための変数
	private String last_name_kana;	//ユーザーの名前（フリガナ）を保存するための変数
	private String mail;	// ユーザーのメールアドレスを保存するための変数
	private String password;	// ユーザーのパスワードを保存するための変数
	private int gender;	// ユーザーの性別を保存するための変数
	private int postal_code;	// ユーザーの郵便番号を保存するための変数
	private String prefecture;	// ユーザーの都道府県を保存するための変数
	private String address_1;	// ユーザーの市区町村を保存するための変数
	private String address_2;	//  ユーザーの番地を保存するための変数
	private int authority;	// ユーザーの権限を保存するための変数
	private boolean registrationFlg = false;	// ユーザー登録が成功したかどうかを示す真偽値（trueまたはfalse）を保存するための変数、初期値はfalse（未登録）
	
	public String getFamily_name() {
		return family_name;
	}
	
	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}
	
	public String getLast_name() {
		return last_name;
	}
	
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getFamily_name_kana() {
		return family_name_kana;
	}
	
	public void setFamily_name_kana(String family_name_kana) {
		this.family_name_kana = family_name_kana;
	}
	
	public String getLast_name_kana() {
		return last_name_kana;
	}
	
	public void setLast_name_kana(String last_name_kana) {
		this.last_name_kana = last_name_kana;
	}
	
	public String getMail() {
		return mail;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getGender() {
		return gender;
	}
	
	public void setGender(int gender) {
		this.gender = gender;
	}
	
	public int getPostal_code() {
		return postal_code;
	}
	
	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}
	
	public String getPrefecture() {
		return prefecture;
	}
	
	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}
	
	public String getAddress_1() {
		return address_1;
	}
	
	public void setAddress_1(String address_1) {
		this.address_1 = address_1;
	}
	
	public String getAddress_2() {
		return address_2;
	}
	
	public void setAddress_2(String address_2) {
		this.address_2 = address_2;
	}
	
	public int getAuthority() {
		return authority;
	}
	
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	
	public boolean getRegistrationFlg() {
		return registrationFlg;
	}
	
	public void setRegistrationFlg(boolean registrationFlg) {
		this.registrationFlg = registrationFlg;
	}
	
}
