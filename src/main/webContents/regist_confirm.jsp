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
<title>アカウント登録確認画面</title>
<link rel="stylesheet" href="./css/regist_confirm.css">
</head>
<body>
	<div id="header">
		<div id="pr">
			<p>ナビゲーションバー</p>
		</div>
	</div>
	
	<div id="main">
		<div id="top">
			<p>	アカウント登録確認画面</p>
		</div>
		
		<div>
			<s:form action="Regist_completeAction" method="post">
				<table>
				
					<tr id="box">
						<td>
							<label>名前(姓)</label>
						</td>
						
						<td>
							<s:property value="#session.family_name"/>
						</td>
					</tr>
					
					<tr id="box">
						<td>
							<label>名前（名）</label>
						</td>
						
						<td>
							<s:property value="#session.last_name"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>カナ（姓）</label>
						</td>

						<td>
							<s:property value="#session.family_name_kana"/>
						</td>
					</tr>
					
					<tr id="box">
						<td>
							<label>カナ（名）</label>
						</td>

						<td>
							<s:property value="#session.last_name_kana"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>メールアドレス</label>
						</td>

						<td>
							<s:property value="#session.mail"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>パスワード</label>
						</td>

						<td>
							<s:iterator begin="1" end="%{#session.password.length()}">●</s:iterator>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>性別</label>
						</td>

						<td>
							<s:if test="#session.gender == 0">男</s:if>
        					<s:elseif test="#session.gender == 1">女</s:elseif>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>郵便番号</label>
						</td>

						<td>
							<s:property value="#session.postal_code"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>住所（都道府県）</label>
						</td>

						<td>
							<s:property value="#session.prefecture"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>住所（市区町村）</label>
						</td>

						<td>
							<s:property value="#session.address_1"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>住所（番地）</label>
						</td>

						<td>
							<s:property value="#session.address_2"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>アカウント権限</label>
						</td>

						<td>
							<s:if test="#session.authority == 0">一般</s:if>
        					<s:elseif test="#session.authority == 1">管理者</s:elseif>
						</td>
					</tr>	
				</table>
				
				<div id="buttons">
					<input type="button" value="前に戻る" onclick="history.back();" class="submit-button">
					<input type="submit" value="登録する" class="submit-button">
				</div>
				
			</s:form>		
		</div>	
	</div>

	<div id="footer">
		<div id="pr">
			<p>フッター</p>
		</div>
	</div>
</body>
</html>