<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <!-- <link rel="stylesheet" href="./css/main.css"> -->
    <style>
* { margin: 0; padding: 0;}
body, html { width: 100%; font-family: 'Roboto', sans-serif;}
ul { list-style: none;}
a { text-decoration: none;}

.wrap { width: 100%; margin: 0 auto; }
.hd { width: 1280px; height: 230px; margin: 0 auto; user-select: none;}
.gnb_top {float: left; width: 1280px; height: 80px;}
.gnb_top li a { float: left; color: #0b0b0b; font-weight: 800;}
.top_btn1 { background-image: url(./img/icon_header01_2.png); width: 70px; height: 39px; margin-right: 20px; text-align: center;}
.top_btn2 { background-image: url(./img/icon_header04_2.png); width: 70px; height: 39px; text-align: center;}

.logo { display: block; width: 300px; color: #41b748; margin-right: 250px; margin-top: 20px; margin-left: 550px;}
.logo img { width: 174px; height: 24px;}
.gnb { width: 1280px; height: 60px; margin: 0 auto; float: left; margin-top: 20px;}
.gnb_lst { clear: both; height: 60px; text-align: center; font-weight: 700; background-color: #41b748; border: solid 1px #41b748; border-radius: 5px;}
.gnb_lst li { float: left;}
.gnb_lst a {display: block; width: 213px; height: 60px; float: left; line-height: 60px; color: #ffffff; border-radius: 5px;}
.gnb_lst a:hover { color: #41b748; background-color: #ffffff; }


.content { clear: both; width: 1280px; margin: 0 auto;}
.login_top { clear: both; width: 100%; height: 200px; float: left;  margin-bottom: 0px; border:#b2b2b2 1px solid; margin-bottom: 30px; user-select: none;}
.login_tit { text-align: center; font-size: 30px; font-weight: 800; margin-top: 20px;}
.login_img { float: left; margin-left: 100px; user-select: none;}
.login_txt { display: block; float: left; width: 700px; font-size: 24px; line-height: 50px; text-align: center; height: 35px; margin-left: 70px; margin-top: 20px;}

.loginForm {  width: 600px; margin-top: 30px; height: 150px; position: relative; margin-left: 30px;}
.login_bot { clear: both; display: block; width: 628px; height: 335px; float: left;  padding-left: 56px; padding-right: 56px; margin-left: 253px; margin-right: 253px; margin-bottom: 100px; border:#b2b2b2 1px solid;}
.idBox, .pwBox { width: 350px; height: 40px; margin-top: 20px; }
#login { width: 150px; height: 108px; text-align: center;   font-size: 24px; 
color: #ffffff; background-color: #41b748; font-weight: 800; border: 1px solid #49b580; position:absolute; top: 20px; margin-left: 50px;}
.joinBtn { clear: both; width: 554px; height: 70px; margin-left: 30px; margin-top: 20px; background-color: #41b748; color: #ffffff; border: 1px solid #49b580; text-align:center; margin-bottom: 0; font-size: 24px; font-weight:900; }
#login:hover { color: #41b748; background-color: #ffffff;}
.joinBtn:hover {  color: #41b748; background-color: #ffffff;}        


.ft { clear: both; float: left; width: 100%; height: 210px; background-color: #383838;}
.ft_logo { float: left; width: 150px;  margin: 30px 150px 5px 400px;}
.ft_menu { width: 1280px; margin: 0 auto; padding-top: 30px; font-size: 13px;}

.txt a { float: left; color: #b2b2b2; margin-left: 30px; }
.info { margin-left: 100px;}
.info1 { clear: both; text-align: left; width: 650px; margin: 0 auto; }
.info1 li { float: left; color: #ffffff; font-size: 12px; margin: 10px 10px 10px 0px;}
.info1 li:nth-child(2) {border-left: 1px solid #ffffff; padding-left:10px;}
.info1 li:last-child { border-left: 1px solid #ffffff; padding-left: 10px;}
.txt address { clear: both;text-align: center; color: #ffffff; margin-top: 60px;}       
    </style>
</head>
<body>
<%
String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
	int pageNum = 1;
	if(request.getParameter("pageNum")!=null){
		pageNum = Integer.parseInt(request.getParameter("pageNum"));
	}
%>
<div class="wrap">
     <header class="hd">
         <nav class="gnb">
            <ul class="gnb_top">
		<li>
			<a href="index.jsp" class="logo" ><img src="./img/img_logo2.png" alt="logo"></a>
			<%
			if(userID == null){
			 %>
			<a href="login.jsp" class="top_btn1"><img src="./img/icon_header01_2.png" alt="login">LOGIN</a>
			<%
			}else {
			 %>
			<a href="admin.jsp" class="login">정보수정</a>
			<a href="logoutAction.jsp" class="login">로그아웃</a>
			<%
			}
			%>    
			<a href="newmem.jsp" class="top_btn2"><img src="./img/icon_header04_2.png" alt="join">JOIN</a>
		</li>
             </ul>              
             <ul class="gnb_lst">                   
                 <li><a href="">ABOUT</a></li>
                 <li><a href="">CORE BUSINESS</a></li>
                 <li><a href="">GALLERY</a></li>
                 <li><a href="">MEDIA</a></li>
                 <li><a href="">NOTICE</a></li>
                 <li><a href="">SHOP</a></li>
             </ul>
         </nav>
     </header>
     <div class="content">
        <div class="login_top">
            <h2 class="login_tit">회원 로그인</h2>
            <a href=""><img src="./img/login.png" alt="" class="login_img"></a>
            <div class="login_txt">
                <p>로그인 후 LINE FRIENDS의 다양한 서비스를 이용하세요.<br>
                    아이디와 비밀번호를 입력해주세요.
                </p>
            </div>
        </div>
        <div class="login_bot">            
            <form action="loginAction.jsp" method="post" class="loginForm">                
                <input type="text" placeholder="아이디" name="userID" class="idBox">
                <input type="password" placeholder="비밀번호" name="userPassword" class="pwBox">
                <input type="submit" value="로그인" id="login" style="cursor: pointer;">    
            </form>
            <input type="button" value="회원가입" class="joinBtn" style="cursor: pointer;" onclick="location.href='newmem.jsp'">
        </div>                
    </div>
    <div class="ft_wrap">   
        <footer class="ft">
            <h2>
                <a href="" class="ft_logo">
                    <img src="./img/footer_logo.png" alt="ft_logo">
                </a>
            </h2>
            <div class="txt">
                <ul class="ft_menu">
                    <li><a href="">제휴제안</a></li>
                    <li><a href="">온라인 스토어</a></li>
                    <li><a href="">개인정보 처리방침</a></li>
                    <li><a href="">FRIENDS CARE</a></li>                    
                </ul>
                <div class="info">
                    <ul class="info1">
                        <li>라인프렌즈 주식회사&nbsp;</li>
                        <li>사업자등록번호 : 726-87-00030&nbsp;</li>
                        <li>통신판매업 신고번호 : 2015-경기성남-0597&nbsp;</li>                   
                    </ul>
                    <ul class="info1">
                        <li>대표이사 : 김성훈&nbsp;</li>
                        <li>서울특별시 용산구 한남대로 98, 5층 라인프렌즈&nbsp;</li>
                        <li>1544-5921</li>
                    </ul>
                </div>
                <address>Copyright © SKY.J All Rights Reserved</address>
            </div>            
        </footer>
    </div>
</div>
</body>
</html>