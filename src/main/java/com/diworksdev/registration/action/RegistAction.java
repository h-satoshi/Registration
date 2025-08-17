// ユーザー登録フォームの入力データを処理するアクションクラス
package com.diworksdev.registration.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport implements SessionAware{
	// フォームからの入力データを保持する変数
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
	public Map<String, Object> session;	// セッション情報を格納するマップ
	
	public String execute() {
		boolean hasError = false;	// エラーがあったがどうか追跡する
		
		// 各フィールドの未入力チェックとエラーメッセージの設定
		if(family_name == null || family_name.equals("")) {
			addFieldError("family_name", "名前（姓）が未入力です。");
			hasError = true;
		}else if (!family_name.matches("^[\\u3040-\\u309F\\u4E00-\\u9FFF]+$")) { // ひながな、漢字のみ
			addFieldError("family_name", "名前（姓）はひらがな、漢字のみ入力可能です。");
			hasError = true;
		}
		
		if (last_name == null || last_name.equals("")) {
			addFieldError("last_name", "名前（名）が未入力です。");
			hasError = true;
		}else if (!last_name.matches("^[\\u3040-\\u309F\\u4E00-\\u9FFF]+$")) { // ひらがな、漢字のみ
            addFieldError("last_name", "名前（名）はひらがな、漢字のみ入力可能です。");
            hasError = true;
        }
		
		if (family_name_kana == null || family_name_kana.equals("")) {
			addFieldError("family_name_kana", "フリガナ（姓）が未入力です。");
			hasError = true;
		} else if (!family_name_kana.matches("^[\\u30A0-\\u30FF]+$")) { // カタカナのみ
            addFieldError("family_name_kana", "フリガナ（姓）はカタカナのみ入力可能です。");
            hasError = true;
        }
		
		if (last_name_kana == null || last_name_kana.equals("")) {
			addFieldError("last_name_kana", "フリガナ（名）が未入力です。");
			hasError = true;
		} else if (!last_name_kana.matches("^[\\u30A0-\\u30FF]+$")) { // カタカナのみ
            addFieldError("last_name_kana", "フリガナ（名）はカタカナのみ入力可能です。");
            hasError = true;
        }
		
		if (mail == null || mail.equals("")) {
			addFieldError("mail", "メールアドレスが未入力です。");
			hasError = true;
		} else if (!mail.matches("^[a-zA-Z0-9\\-@\\.]+$")) { // 半角英数字、半角ハイフン、半角アットマーク、半角ドットのみ
            addFieldError("mail", "メールアドレスは半角英数字、半角ハイフン、半角アットマーク、半角ドットのみ入力可能です。");
            hasError = true;
        }
		
		if (password == null || password.equals("")) {
			addFieldError("password", "パスワードが未入力です。");
			hasError = true;
		} else if (!password.matches("^[a-zA-Z0-9]+$")) { // 半角英数字のみ
            addFieldError("password", "パスワードは半角英数字のみ入力可能です。");
            hasError = true;
        }
		
		if (gender == null || gender.equals("")) {
		    addFieldError("gender", "性別が未選択です。");
		    hasError = true;
		}
		
		if (postal_code == null || postal_code.equals("")) {
			addFieldError("postal_code", "郵便番号が未入力です。");
			hasError = true;
		} else if (!postal_code.matches("^[0-9]+$")) { // 半角数字のみ
            addFieldError("postal_code", "郵便番号は半角数字のみ入力可能です。");
            hasError = true;
        }
		
		if (prefecture == null || prefecture.equals("") || prefecture.equals("選択してください")) {
			addFieldError("prefecture", "都道府県が未選択です。");
			hasError = true;
		}
		
		if (address_1 == null || address_1.equals("")) {
			addFieldError("address_1", "市区町村が未入力です。");
			hasError = true;
		} else if (!address_1.matches("^[\\u3040-\\u309F\\u4E00-\\u9FFF0-9\\u30A0-\\u30FF\\- ]+$")) { // ひらがな、漢字、数字、カタカナ、記号（ハイフンとスペース）のみ
            addFieldError("address_1", "市区町村はひらがな、漢字、数字、カタカナ、記号（ハイフン、スペース）のみ入力可能です。");
            hasError = true;
        }
		
		if (address_2 == null || address_2.equals("")) {
			addFieldError("address_2", "番地が未入力です。");
			hasError = true;
		} else if (!address_2.matches("^[\\u3040-\\u309F\\u4E00-\\u9FFF0-9\\u30A0-\\u30FF\\- ]+$")) { // ひらがな、漢字、数字、カタカナ、記号（ハイフンとスペース）のみ
            addFieldError("address_2", "番地はひらがな、漢字、数字、カタカナ、記号（ハイフン、スペース）のみ入力可能です。");
            hasError = true;
        }
		
		if (hasError) {	// エラーが一つでもあればここで処理を終了する
			return ERROR;
		}
		
		int convertedGender;	// エラーがなければ、int型への変換とセッションへの保存を行う
		if (gender != null && gender.equals("2")) {
			convertedGender = 1;	// 女
		} else {
			convertedGender = 0;	// 男
		}
			
		int convertedPostalCode;
		try {
			convertedPostalCode = Integer.parseInt(postal_code);
		} catch (NumberFormatException e) {
			// 数値変換に失敗した場合のエラーハンドリング
			addFieldError("postal_code", "郵便番号の形式が不正です。");
			return ERROR;
		}

		int convertedAuthority;
		// JSPのvalue="1"が一般、"2"が管理者。DBは0が一般、1が管理者。
		if (authority != null && authority.equals("2")) { 
			convertedAuthority = 1; // 管理者
		} else { 
			convertedAuthority = 0; // 一般
		}
		
			// 全て入力されていれば、セッションにデータを保存
			session.put("family_name", family_name);
			session.put("last_name", last_name);
			session.put("family_name_kana", family_name_kana);
			session.put("last_name_kana", last_name_kana);
			session.put("mail", mail);
			session.put("password", password);
			session.put("gender", convertedGender);
			session.put("postal_code", convertedPostalCode);
			session.put("prefecture", prefecture);
			session.put("address_1", address_1);
			session.put("address_2", address_2);
			session.put("authority", convertedAuthority);
			
			return SUCCESS;
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
