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


.contents { clear: both; width: 1280px; height: 500px; margin: 0 auto;}
.txtbox { background: rgb(238, 238, 238); text-align: center; height: 240px; margin-top: 130px; margin-bottom: 50px;}
.txtbox li {font-weight: 550; margin-top: 10px; font-size: 18px; }
.txtbox li:first-child { padding-top: 30px;}
.txtbox li:last-child { font-size: 14px;}
.txtbox a { display: block; width: 140px; height: 45px; background-color: #f38200; text-align: center; color: white; font-weight: 500; line-height: 45px; margin: 0 auto; margin-top: 30px; margin-bottom: 30px;}
.login_form { margin: 0 auto; width: 800px; text-align: center; margin-top: 100px; background: rgb(238, 238, 238); height: 300px; padding-top: 50px;}
.login_form label { font-size: 18px; font-weight: 550;}
.login_form label:first-child {color: #CF661A; }
.login_form input { width: 300px; height: 30px; margin-left: 30px; text-align: center;margin-top: 15px;}
.login_form input:last-child { border-radius: 15px; width: 450px; margin-top: 50px; height: 40px; background-color: #f38200; color: white; font-size: 16px; font-weight: 550;}
.login_form input:last-child:hover {background-color: #CF661A;}
.login_form a {display: block; width: 100px; margin-left: 200px; color: #f38200; height: 20px;margin-top: 5px; margin-bottom: 20px;}
.login_form a:hover {color: #CF661A; border-bottom: 1px solid;} 

 #wrForm { clear:both; float:left; width:1280px; hegiht:500px;}


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
        <div class="contents">
           <div class="row" style="margin-top:300px; ">
           <form method="post" action="writeAction.jsp " id="wrForm">
            <table style ="text-align:center; border:1px solid #dddddd" >
           <thead>
           <tr>
           <th colspan="2">글쓰기</th>
           	
           </tr>
           </thead>
           <tbody>
           <tr>
           <td><input type="text" placeholder="글 제목 " name="title" maxlength="50" /></td>
           </tr>
           <tr>
           <td><textarea placeholder="내용 " name="content" maxlength="2048"></textarea> </td>
  
           </tr>
           </tbody> 
           
           </table>
           <input type="submit"  value="글쓰기"/>
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
        </footer>
    </div>
</body>
</html>