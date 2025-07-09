set names utf8;
set foreign_key_checks = 0;

drop database if exists registration;	-- もし｢registration｣というデータベースがあったら削除する

create database if not exists registration;	-- もし｢registration｣というデータベースがなかったら作成する

use registration;	--｢registration｣を使用する

drop table if exists registration_transaction;	-- もし｢registration_transaction｣というテーブルがあったら削除する

create table registration_transaction(	-- ｢registration_transaction｣というテーブル作成する
	id int not null primary key auto_increment,
	registration_familyname varchar(10),	-- 苗字を最大10文字まで格納できる
	registration_firstname varchar(10),		-- 名前を最大10文字まで格納できる
	registration_familynamefurigana varchar(10),	-- 苗字(カナ)を最大10文字まで格納できる
	registration_firstnamefurigana varchar(10),		-- 名前(カナ)を最大10文字まで格納できる
	registration_mailaddress varchar(100) unique,	-- メールアドレスを最大100文字まで格納できる、同じメールアドレス格納できない
	registration_pass varchar(10),	-- パスワードを最大10文字まで格納できる
	registration_gender varchar(10),	-- 性別を最大10文字まで格納できる
	registration_postcode varchar(7),	-- 郵便番号を最大7文字まで格納できる
	registration_todofuken varchar(10),	-- 都道府県を最大10文字まで格納できる
	registration_municipalities varchar(10),	-- 市区町村を最大10文字まで格納できる
	registration_banchi varchar(100),	-- 番地を最大100文字まで格納できる
	registration_kengen varchar(10)		-- 権限を最大10文字まで格納できる
);

INSERT INTO registration_transaction(	-- ｢registration_transaction｣にデータを挿入する
	registration_familyname,
	registration_firstname,
	registration_familynamefurigana,
	registration_firstnamefurigana,
	registration_mailaddress,
	registration_pass,
	registration_gender,
	registration_postcode,
	registration_todofuken,
	registration_municipalities,
	registration_banchi,
	registration_kengen) 
	VALUES("山田", 
		   "太郎",
		   "ヤマダ",
		   "タロウ",
		   "yamadataro@gmail.com",
		   "testpass",
		   "男",
		   "0000000",
		   "北海道",
		   "〇〇〇〇",
		   "〇〇〇〇〇",
		   "一般");