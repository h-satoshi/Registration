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
                            <input type="text" name="family_name" value="" maxlength="10"/>
							<s:fielderror fieldName="family_name" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>名前（名）</label>
                        </td>
                        <td>
							<input type="text" name="last_name" value="" maxlength="10"/>
							<s:fielderror fieldName="last_name" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>カナ（姓）</label>
                        </td>

                        <td>
                            <input type="text" name="family_name_kana" value="" maxlength="10"/>
							<s:fielderror fieldName="family_name_kana" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>カナ（名）</label>
                        </td>
                        <td>
                            <input type="text" name="last_name_kana" value="" maxlength="10"/>
							<s:fielderror fieldName="last_name_kana" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>メールアドレス</label>
                        </td>
                        <td>
                            <input type="text" name="mail" value="" maxlength="100">
                            <s:fielderror fieldName="mail" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>パスワード</label>
                        </td>
                        <td>
                            <input type="password" name="password" value="" maxlength="10">
                            <s:fielderror fieldName="password" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span>性別</span>
                        </td>
                        <td>
                            <input type="radio" name="gender" value="1" checked="checked">男
                        	<input type="radio" name="gender" value="2" >女
                        	<s:fielderror fieldName="gender" cssClass="error-message"/> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>郵便番号</label>
                        </td>
                        <td>
                            <input type="text" name="postal_code" value="" maxlength="7">
                            <s:fielderror fieldName="postal_code" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（都道府県）</label>
                        </td>
                        <td>
                            <select name="prefecture">
                                <option value="">選択してください</option>
                                <option value="北海道" >北海道</option>
                                <option value="青森県" >青森県</option>
                                <option value="岩手県" >岩手県</option>
                                <option value="宮城県" >宮城県</option>
                                <option value="秋田県" >秋田県</option>
                                <option value="山形県" >山形県</option>
                                <option value="福島県" >福島県</option>
                                <option value="茨城県" >茨城県</option>
                                <option value="栃木県" >栃木県</option>
                                <option value="群馬県" >群馬県</option>
                                <option value="埼玉県" >埼玉県</option>
                                <option value="千葉県" >千葉県</option>
                                <option value="東京都" >東京都</option>
                                <option value="神奈川県" >神奈川県</option>
                                <option value="新潟県" >新潟県</option>
                                <option value="富山県" >富山県</option>
                                <option value="石川県" >石川県</option>
                                <option value="福井県" >福井県</option>
                                <option value="山梨県" >山梨県</option>
                                <option value="長野県" >長野県</option>
                                <option value="岐阜県" >岐阜県</option>
                                <option value="静岡県" >静岡県</option>
                                <option value="愛知県" >愛知県</option>
                                <option value="三重県" >三重県</option>
                                <option value="滋賀県" >滋賀県</option>
                                <option value="京都府" >京都府</option>
                                <option value="大阪府" >大阪府</option>
                                <option value="兵庫県" >兵庫県</option>
                                <option value="奈良県" >奈良県</option>
                                <option value="和歌山県" >和歌山県</option>
                                <option value="鳥取県" >鳥取県</option>
                                <option value="島根県" >島根県</option>
                                <option value="岡山県" >岡山県</option>
                                <option value="広島県" >広島県</option>
                                <option value="山口県" >山口県</option>
                                <option value="徳島県" >徳島県</option>
                                <option value="香川県" >香川県</option>
                                <option value="愛媛県" >愛媛県</option>
                                <option value="高知県" >高知県</option>
                                <option value="福岡県" >福岡県</option>
                                <option value="佐賀県" >佐賀県</option>
                                <option value="長崎県" >長崎県</option>
                                <option value="熊本県" >熊本県</option>
                                <option value="大分県" >大分県</option>
                                <option value="宮崎県" >宮崎県</option>
                                <option value="鹿児島県" >鹿児島県</option>
                                <option value="沖縄県" >沖縄県</option>
                            </select>
                            <s:fielderror fieldName="prefecture" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（市区町村）</label>
                        </td>
                        <td>
                            <input type="text" name="address_1" value="" maxlength="10">
                            <s:fielderror fieldName="address_1" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>住所（番地）</label>
                        </td>
                        <td>
                            <input type="text" name="address_2" value="" maxlength="100">
                            <s:fielderror fieldName="address_2" cssClass="error-message"/>
                        </td>
                    </tr>

                    <tr>
                    	<td>
                            <span>アカウント権限</span>
                        </td>
                        <td>
                            <select name="authority">
                                <option value="1">一般</option>
                            	<option value="2">管理者</option>
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