<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
<title>ユーザー登録画面</title>
<style type="text/css">
    body{
        margin: 0;
        padding: 0;
        line-height: 1.6;
        letter-spacing: 1px;
        font-family: Verdana, Helvetica, sans-serif;
        font-size: 12px;
        color: #333;
        background: #fff;
    }

    table{
        text-align: center;
        margin: 0 auto;
    }
    
    .error-message {
        color: red; 
        font-size: 11px; 
        margin-left: 5px; 
        display: block;
    	min-height: 20px;
    	margin-top: 2px;
    	margin-bottom: 2px;
    }
</style>
</head>
<body>
    <div id="header">
        <div id="pr">
			<p>ナビゲーションバー</p>
        </div>
    </div>
    
    <div id="main">
        <div id="top">
            <p>アカウント登録画面</p>
        </div>

        <div>
            <table>
                <s:form action="RegistAction">
                    <tr>
                        <td>
                            <label>名前（姓）</label>
                        </td>
                        <td>
                            <input type="text" name="family_name" value='<s:property value="family_name"/>' maxlength="10"/>
							<s:fielderror fieldName="family_name" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>名前（名）</label>
                        </td>
                        <td>
							<input type="text" name="last_name" value='<s:property value="last_name"/>' maxlength="10"/>
							<s:fielderror fieldName="last_name" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>カナ（姓）</label>
                        </td>

                        <td>
                            <input type="text" name="family_name_kana" value='<s:property value="family_name_kana"/>' maxlength="10"/>
							<s:fielderror fieldName="family_name_kana" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>カナ（名）</label>
                        </td>
                        <td>
                            <input type="text" name="last_name_kana" value='<s:property value="last_name_kana"/>' maxlength="10"/>
							<s:fielderror fieldName="last_name_kana" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>メールアドレス</label>
                        </td>
                        <td>
                            <input type="text" name="mail" value='<s:property value="mail"/>' maxlength="100">
                            <s:fielderror fieldName="mail" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>パスワード</label>
                        </td>
                        <td>
                            <input type="password" name="password" value='<s:property value="password"/>' maxlength="10">
                            <s:fielderror fieldName="password" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span>性別</span>
                        </td>
                        <td>
                            <input type="radio" name="gender" value="1" <s:if test="gender == '1' || gender == null">checked="checked"</s:if>>男
                        	<input type="radio" name="gender" value="2" <s:if test="gender == '2'">checked="checked"</s:if>>女
                        	<s:fielderror fieldName="gender" cssClass="error-message"/> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>郵便番号</label>
                        </td>
                        <td>
                            <input type="text" name="postal_code" value='<s:property value="postal_code"/>' maxlength="7">
                            <s:fielderror fieldName="postal_code" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（都道府県）</label>
                        </td>
                        <td>
                            <select name="prefecture">
                                <option value="" <s:if test="prefecture == null || prefecture == ''">selected="selected"</s:if>>選択してください</option>
                                <option value="北海道" <s:if test="prefecture == '北海道'">selected="selected"</s:if>>北海道</option>
                                <option value="青森県" <s:if test="prefecture == '青森県'">selected="selected"</s:if>>青森県</option>
                                <option value="岩手県" <s:if test="prefecture == '岩手県'">selected="selected"</s:if>>岩手県</option>
                                <option value="宮城県" <s:if test="prefecture == '宮城県'">selected="selected"</s:if>>宮城県</option>
                                <option value="秋田県" <s:if test="prefecture == '秋田県'">selected="selected"</s:if>>秋田県</option>
                                <option value="山形県" <s:if test="prefecture == '山形県'">selected="selected"</s:if>>山形県</option>
                                <option value="福島県" <s:if test="prefecture == '福島県'">selected="selected"</s:if>>福島県</option>
                                <option value="茨城県" <s:if test="prefecture == '茨城県'">selected="selected"</s:if>>茨城県</option>
                                <option value="栃木県" <s:if test="prefecture == '栃木県'">selected="selected"</s:if>>栃木県</option>
                                <option value="群馬県" <s:if test="prefecture == '群馬県'">selected="selected"</s:if>>群馬県</option>
                                <option value="埼玉県" <s:if test="prefecture == '埼玉県'">selected="selected"</s:if>>埼玉県</option>
                                <option value="千葉県" <s:if test="prefecture == '千葉県'">selected="selected"</s:if>>千葉県</option>
                                <option value="東京都" <s:if test="prefecture == '東京都'">selected="selected"</s:if>>東京都</option>
                                <option value="神奈川県" <s:if test="prefecture == '神奈川県'">selected="selected"</s:if>>神奈川県</option>
                                <option value="新潟県" <s:if test="prefecture == '新潟県'">selected="selected"</s:if>>新潟県</option>
                                <option value="富山県" <s:if test="prefecture == '富山県'">selected="selected"</s:if>>富山県</option>
                                <option value="石川県" <s:if test="prefecture == '石川県'">selected="selected"</s:if>>石川県</option>
                                <option value="福井県" <s:if test="prefecture == '福井県'">selected="selected"</s:if>>福井県</option>
                                <option value="山梨県" <s:if test="prefecture == '山梨県'">selected="selected"</s:if>>山梨県</option>
                                <option value="長野県" <s:if test="prefecture == '長野県'">selected="selected"</s:if>>長野県</option>
                                <option value="岐阜県" <s:if test="prefecture == '岐阜県'">selected="selected"</s:if>>岐阜県</option>
                                <option value="静岡県" <s:if test="prefecture == '静岡県'">selected="selected"</s:if>>静岡県</option>
                                <option value="愛知県" <s:if test="prefecture == '愛知県'">selected="selected"</s:if>>愛知県</option>
                                <option value="三重県" <s:if test="prefecture == '三重県'">selected="selected"</s:if>>三重県</option>
                                <option value="滋賀県" <s:if test="prefecture == '滋賀県'">selected="selected"</s:if>>滋賀県</option>
                                <option value="京都府" <s:if test="prefecture == '京都府'">selected="selected"</s:if>>京都府</option>
                                <option value="大阪府" <s:if test="prefecture == '大阪府'">selected="selected"</s:if>>大阪府</option>
                                <option value="兵庫県" <s:if test="prefecture == '兵庫県'">selected="selected"</s:if>>兵庫県</option>
                                <option value="奈良県" <s:if test="prefecture == '奈良県'">selected="selected"</s:if>>奈良県</option>
                                <option value="和歌山県" <s:if test="prefecture == '和歌山県'">selected="selected"</s:if>>和歌山県</option>
                                <option value="鳥取県" <s:if test="prefecture == '鳥取県'">selected="selected"</s:if>>鳥取県</option>
                                <option value="島根県" <s:if test="prefecture == '島根県'">selected="selected"</s:if>>島根県</option>
                                <option value="岡山県" <s:if test="prefecture == '岡山県'">selected="selected"</s:if>>岡山県</option>
                                <option value="広島県" <s:if test="prefecture == '広島県'">selected="selected"</s:if>>広島県</option>
                                <option value="山口県" <s:if test="prefecture == '山口県'">selected="selected"</s:if>>山口県</option>
                                <option value="徳島県" <s:if test="prefecture == '徳島県'">selected="selected"</s:if>>徳島県</option>
                                <option value="香川県" <s:if test="prefecture == '香川県'">selected="selected"</s:if>>香川県</option>
                                <option value="愛媛県" <s:if test="prefecture == '愛媛県'">selected="selected"</s:if>>愛媛県</option>
                                <option value="高知県" <s:if test="prefecture == '高知県'">selected="selected"</s:if>>高知県</option>
                                <option value="福岡県" <s:if test="prefecture == '福岡県'">selected="selected"</s:if>>福岡県</option>
                                <option value="佐賀県" <s:if test="prefecture == '佐賀県'">selected="selected"</s:if>>佐賀県</option>
                                <option value="長崎県" <s:if test="prefecture == '長崎県'">selected="selected"</s:if>>長崎県</option>
                                <option value="熊本県" <s:if test="prefecture == '熊本県'">selected="selected"</s:if>>熊本県</option>
                                <option value="大分県" <s:if test="prefecture == '大分県'">selected="selected"</s:if>>大分県</option>
                                <option value="宮崎県" <s:if test="prefecture == '宮崎県'">selected="selected"</s:if>>宮崎県</option>
                                <option value="鹿児島県" <s:if test="prefecture == '鹿児島県'">selected="selected"</s:if>>鹿児島県</option>
                                <option value="沖縄県" <s:if test="prefecture == '沖縄県'">selected="selected"</s:if>>沖縄県</option>
                            </select>
                            <s:fielderror fieldName="prefecture" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（市区町村）</label>
                        </td>
                        <td>
                            <input type="text" name="address_1" value='<s:property value="address_1"/>' maxlength="10">
                            <s:fielderror fieldName="address_1" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（番地）</label>
                        </td>
                        <td>
                            <input type="text" name="address_2" value='<s:property value="address_2"/>' maxlength="100">
                            <s:fielderror fieldName="address_2" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                    	<td>
                            <span>アカウント権限</span>
                        </td>
                        <td>
                            <select name="authority">
                                <option value="1" <s:if test="authority == '1' || authority == null"> selected="selected" </s:if>>一般</option>
                            	<option value="2" <s:if test="authority == '2'"> selected="selected" </s:if>>管理者</option>
                        	</select>
                        	<s:fielderror fieldName="authority" cssClass="error-message"/>
                        </td>
                    </tr>

                    <s:submit value="確認する"></s:submit>
                    
                </s:form>
            </table>
        </div>
    </div>
    
    <div id="footer">
    	<div id="pr">
    		<p>フッター</p>
    	</div>
    </div>
</body>
</html>