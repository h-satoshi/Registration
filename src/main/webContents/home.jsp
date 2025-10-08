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
<title>diblog</title>
<link rel="stylesheet" href="./css/homestyle.css">
</head>
<body>
	<header>

        <div class="header-logo">
            
            <img src="./画像/diblog_logo.jpg" alt="">
            
        </div>

        <div class="header-nav">

            <ul>
                
                <li><a href="#">トップ</a></li>
                
                <li><a href="#">プロフィール</a></li>
                
                <li><a href="#">D.I.Blog について</a></li>
                
                <li><a href="#">登録フォーム</a></li>
                
                <li><a href="#">問い合わせ</a></li>
                
                <li><a href="#">その他</a></li>
                
                <li><a href="RegistAction">アカウント登録</a></li>
                
            </ul>

        </div>

    </header>

    <main>

        <div class="left">

            <div class="books">

                <h2>プログラミングに役立つ書籍</h2>

                <time datetime="2017-01-15">2017年1月15日</time>

                <img src="./画像/bookstore.jpg" alt="">

                <p>D.I.BlogはD.I.Wroksが提供する演習課題です。</p>

            </div>

            <div class="Article-content">

                <p>記事中身</p>

                <ul>
                    
                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic1.jpg" alt="ドメイン取得方法">
                            
                        <p>ドメイン取得方法</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic2.jpg" alt="快適な職場環境">
                            
                        <p>快適な職場環境</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic3.jpg" alt="Linuxの基礎">
                            
                        <p>Linuxの基礎</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic4.jpg" alt="マーケティング入門">
                            
                        <p>マーケティング入門</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic5.jpg" alt="アクティブラーニング">
                            
                        <p>アクティブラーニング</p>
                            
                        </a>
                        
                    </li>
                    
                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic6.jpg" alt="CSSの効率的な勉強方法">
                            
                        <p>CSSの効率的な勉強方法</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic7.jpg" alt="リーダブルコードとは">
                            
                        <p>リーダブルコードとは</p>
                            
                        </a>
                        
                    </li>

                    <li>
                        
                        <a href="#">
                            
                        <img src="./画像/pic8.jpg" alt="HTMLの可能性">
                            
                        <p>HTMLの可能性</p>
                            
                        </a>
                        
                    </li>
                    
                </ul>
                
            </div>
            
        </div>
        
        <div class="right">
            
            <nav class="article">
                
                <h3>人気の記事</h3>
                
                <ul>
                    
                    <li><a href="#">PHPオススメ本</a></li>
                    
                    <li><a href="#">PHP　MyAdminの使い方</a></li>
                    
                    <li><a href="#">いま人気のエディタTops</a></li>
                    
                    <li><a href="#">HTMLの基礎</a></li>
                    
                </ul> 
                
            </nav>
            
            <nav class="link">
                
                <h3>オススメリンク</h3>
                
                <ul>
                    
                    <li><a href="#">ディーアイワークス株式会社</a></li>
                    
                    <li><a href="#">XAMPPのダウンロード</a></li>
                    
                    <li><a href="#">Eclipseのダウンロード</a></li>
                    
                    <li><a href="#">Braketsのダウンロード</a></li>
                    
                </ul>
                
            </nav>
            
            <nav class="category">
                
                <h3>カテゴリ</h3>
                
                <ul>
                    
                    <li><a href="#">HTML</a></li>
                    
                    <li><a href="#">PHP</a></li>
                    
                    <li><a href="#">MySQL</a></li>
                    
                    <li><a href="#">JavaScript</a></li>
                    
                </ul>
                
            </nav>
            
        </div>
        
    </main>
    
    <footer>
        
        <p>Coylight D.I.works| D.I.blog is the one which provides A to Z about programming</p>
        
    </footer>
</body>
</html>