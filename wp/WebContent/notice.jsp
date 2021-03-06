<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.security.auth.callback.ConfirmationCallback"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="notice.NoticeBeans" %>
    <%@ page import="notice.NoticeDAO" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">   
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        * { margin: 0; padding: 0;}
        body, html { width: 100%; font-family: 'Roboto', sans-serif;}
        ul { list-style: none;}
        a { text-decoration: none;}
        .wrap { width: 100%; margin: 0 auto; overflow: hidden;}
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
        
      
        .contents { clear: both; width: 1280px; height: 700px; margin: 0 auto;  text-align:center;}
        .row { margin-top:150px; margin-left:20%; margin-bottom:150px;}
		.table { width: 700px; height: 400px; border:1px solid #dddddd}
		.btn {  width: 80px; height:45px; margin-right:35%; margin-bottom: 150px;  }
        .table th { text-align: center;}

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
        <div class="contents">
           <div class="row" >
           <table class="table" >
           <thead>
           <tr>
           <th>번호</th>
           <th>제목</th>
           <th>작성자</th>
           	
           </tr>
           </thead>
           <tbody>
           <%
           NoticeDAO noticeDAO = new NoticeDAO();
           ArrayList<NoticeBeans> list = noticeDAO.getList(pageNum);
           for(int i=0; i<list.size(); i++){
        	   %>
        	     <tr>
           <td><%= list.get(i).getNum()+1 %></td>
           <td><a href="view.jsp?num=<%= list.get(i).getNum()%>"><%= list.get(i).getTitle() %></a></td>
           <td><%= list.get(i).getUserID() %></td>         
           </tr>       	   
        	   <% 
           }
           
           %>
      
           </tbody> 
           
           </table>
           <%
           if(pageNum != 1) {
           %>
           <a href="notice.jsp?pageNum=<%=pageNum - 1%>">이전</a>
           <%
           	} if(noticeDAO.nextPage(pageNum+1)){
           %>
           <a href="notice.jsp?pageNum=<%=pageNum + 1%>">다음</a>
           <%
           }
           %>
           	<!-- 회원만넘어가도록 -->

				<%
					if (session.getAttribute("userID") != null) {

				%>

				<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>

				<%

					} else {

				%>

				<button class="btn btn-primary pull-right"

					onclick="if(confirm('로그인 하세요'))location.href='login.jsp';"

					type="button">글쓰기</button>

				<%

					}

				%>

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
</div>
</body>
</html>