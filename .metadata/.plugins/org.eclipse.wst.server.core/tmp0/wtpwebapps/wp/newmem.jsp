<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="main.css">
    <style>
        * { margin: 0; padding: 0;}
        body, html { width: 100%; font-family: 'Roboto', sans-serif;}
        ul { list-style: none;}
        a { text-decoration: none;}
        .wrap { width: 100%; margin: 0 auto; overflow-x: hidden;}
        .hd { width: 1280px; height: 200px; margin: 0 auto;  user-select: none;}
        .gnb_top {float: left; width: 1280px; height: 80px;}
        .gnb_top li a { float: left; color: #0b0b0b; font-weight: 800;}
        .top_btn1 { background-image: url(./source/image/icon_header01_2.png); width: 70px; height: 39px; margin-right: 20px; text-align: center;}
        .top_btn2 { background-image: url(./source/image/icon_header04_2.png); width: 70px; height: 39px; text-align: center;}
        .logo { display: block; width: 300px; color: #41b748; margin-right: 250px; margin-top: 20px; margin-left: 550px;}
        .logo img { width: 174px; height: 24px;}
        .gnb { width: 1280px; height: 60px; margin: 0 auto; float: left; margin-top: 20px;}
        .gnb_lst { clear: both; height: 60px; text-align: center; font-weight: 700; background-color: #41b748; border: solid 1px #41b748; border-radius: 5px;}
        .gnb_lst li { float: left;}
        .gnb_lst a {display: block; width: 213px; height: 60px; float: left; line-height: 60px; color: #ffffff; border-radius: 5px;}
        .gnb_lst a:hover { color: #41b748; background-color: #ffffff; }
        
        .content { clear: both; width: 1280px; height: 500px; margin: 0 auto;}
        .content { clear: both; width: 100%; height: 1500px; margin: 0 auto; }
        .ban { position: absolute; background-color: aquamarine; width: 100%; height: 800px;  }
        .ban img { display: block; width: 100%; height: 1000px; opacity: 0.95;}
        .ban_txt { position: relative; display: block; text-align: center; color: #ffffff; padding-top: 400px; }
        .ban_txt p { font-size: 45px; font-weight: bolder;}
        .ban_txt h2 { font-size: 100px; font-weight: bolder; }

        .ban_bot {clear: both; position: absolute; display: block; height: 100px;  width: 100%;  margin-top: 10px; z-index: 30; }
        .ban_bot li { float: left; margin: 0 auto; }
        .ban_bot li:first-child {margin-left: 330px;}
        .ban_bot li a { display: block; color: #41b748; width: 300px; height: 80px; background-color: white; text-align: center;
        line-height: 80px; margin-right: 20px; margin-top: 10px; font-size: 20px; font-weight: 550; border-radius: 20px;}
        .ban_bot li a:first-child { margin-left: 80px;}
        .ban_bot li a:hover {background-color: #41b748; color: white;}
        
        .context { clear: both; display: block; float:left; text-align: center; width: 1280px; height: 150px; margin-left: 800px; padding-top: 300px; }
        #point_txt { font-weight: 550; font-size: 48px;}        
        .context p {clear: both; float: left; text-align: center; margin-top: 0;}
        .context p:nth-child(2) {margin-top: 80px;}
        

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
                   <ul>
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
             <span id="point_txt" style="font-weight: 550;">JOIN MEMBER</span>
             <ul>
                 <li><img src="/img/join_step01.jpg" alt=""><span>회원약관 동의</span></li>
                 <li class="bar"><img src="/img/join_bar_01.gif"   alt=""></li>
                 <li><img src="/img/join_step02_on.jpg" alt=""><span>회원정보입력</span></li>
                 <li class="bar" ><img src="/img/join_bar_01.gif"alt=""></li>
                 <li><img src="/img/join_step03.jpg" alt=""><span>가입완료</span></li>
             </ul>
             <div class="joinform">
                <p class="txt_star" id="point_txt" style="font-size: 14px;">필수 입력 사항</p>
                <form action="newmemAction.jsp" method="POST">
                    <p>
                        <label class="txt_star" for=""  id="join_label">아이디</label>
                        <input class="ip" type="text" name="userID">
                       
                    </p>
                    <p>
                        <label class="txt_star" for=""  id="join_label">비밀번호</label>
                        <input  class="ip" type="password" name="userPassword">
                        <span>6 - 15자 이상 : 영문, 숫자 조합 </span>
                    </p>
                 
                    <p>
                        <label class="txt_star" for=""  id="join_label">이름</label>
                        <input  class="ip" type="text" name="userName">
                    </p>
                    <p>
                        <label class="txt_star" for="" name="id" id="join_label">이메일</label>
                        <input  class="ip" type="email" name="userEmail" >
                    </p>
                 
                    <input id="back" type="reset" value="취소하기">
                    <input id="next" type="submit" value="다음단계">
                </form>
            
        </div>
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
        </footer>
    </div>
</body>
</html>