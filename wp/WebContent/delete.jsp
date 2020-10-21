<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/loginform.css">
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
        <div class="contents">
        	<div class="login_form">
                   <h1>그동안 이용해 주셔서 감사합니다</h1><br>
                <h3>비밀번호를 입력해주십시요</h3>
               <form action="deleteAction.jsp" method="post">
               <input type="text" name="userPassword" />
               <input type="submit" value="탈퇴하기" />
               </form>
            </div>
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
             </div>           
        </footer>
    </div>
</body>
</html>