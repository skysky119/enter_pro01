<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="notice.NoticeBeans" %>
<%@ page import="notice.NoticeDAO" %>
<%@ page import="user.UserBeans" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="./css/main.css">    
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
					} else {
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