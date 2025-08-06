set names utf8;
set foreign_key_checks = 0;

drop database if exists registration;	-- もし｢registration｣というデータベースがあったら削除する

create database if not exists registration;	-- もし｢registration｣というデータベースがなかったら作成する

use registration;	-- ｢registration｣を使用する

drop table if exists registration_transaction;	-- もし｢registration_transaction｣というテーブルがあったら削除する

create table registration_transaction(	-- ｢registration_transaction｣というテーブル作成する
	id int not null primary key auto_increment,	-- ID: 主キー、自動採番
	family_name varchar(100),	-- 名前（姓）
	last_name varchar(100),		-- 名前（名）
	family_name_kana varchar(100),	-- カナ（姓）
	last_name_kana varchar(100),	-- カナ（名）
	mail varchar(255) unique,	-- メールアドレス: ユニーク制約（重複不可）
	password varchar(255) not null,	-- パスワード: NULL不可
	gender int(1),	-- 性別: 0=男, 1=女
	postal_code int(7),	-- 郵便番号
	prefecture varchar(100),	-- 都道府県
	address_1 varchar(100),	-- 市区町村
	address_2 varchar(255),	-- 番地
	authority int(1),	-- アカウント権限: 0=一般, 1=管理者
	delete_flag int(1) default 0,	-- 削除フラグ: 0=有効, 1=無効（デフォルトは有効）
	registered_time datetime,	-- 登録日時
	update_time datetime	-- 更新日時
);

INSERT INTO registration_transaction(	-- ｢registration_transaction｣にデータを挿入する
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
	authority,
	delete_flag,
	registered_time,
	update_time
) 
	
VALUES(
	"テスト",
	"ユーザー",
	"テスト",
	"ユーザー",
	"test@example.com",
	"hashed_password_example", -- パスワードのハッシュ値の例
	0, -- 性別: 男
	1234567, -- 郵便番号の例
	"東京都",
	"渋谷区",
	"神南1-2-3",
	0, -- 権限: 一般
	0, -- 削除フラグ: 有効
	NOW(), -- 現在の登録日時
	NOW()
);