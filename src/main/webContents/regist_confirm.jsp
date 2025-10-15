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
			<p>	アカウント登録確認画面</p>
		</div>
		
		<div>
			<table>
				<s:form action="regist_complete" method="post">
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
							<s:property value="#session.password"/>
						</td>
					</tr>

					<tr id="box">
						<td>
							<label>性別</label>
						</td>

						<td>
							<s:property value="#session.gender"/>
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
							<s:property value="#session.authority"/>
						</td>
					</tr>

					<tr>
						<td>
							<input type="button" value="前に戻る" onclick="history.back">

							<input type="submit" value="登録する">
						</td>
					</tr>
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