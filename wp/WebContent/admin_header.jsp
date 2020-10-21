<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LINE FRIENDS</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="./css/ad.css">    
</head>
<body>
<%
	session.setAttribute("id", "admin");
%>
<%
	if(session.getAttribute("id") != "admin") {
%>
<script>
	alert("관리자로 로그인하지 않으셨습니다. 현재 페이지는 관리자의 로그인이 필요합니다.");
	history.go(-1);
</script>
<% 	
	} else {
%>
<%		
	}
%>
    <div class="wrap">   
        <header class="hd">
            <nav class="gnb">
               <ul class="gnb_top">                   
	               <li>
						<a href="index.jsp" class="logo" ><img src="./img/img_logo2.png" alt="logo"></a>
					</li>
					<li class="logout_btn">	
						<a href="admin.jsp" ><img src="./img/icon_logout.png">LOGOUT</a>				         
	               </li>                   
               </ul>
               <ul class="gnb_lst">                   
                   <li><a href="">회원관리</a></li>
                   <li><a href="">게시판관리</a></li>
                   <li><a href="">판매관리</a></li>
                   <li><a href="">상품관리</a></li>
                   <li><a href="">구매관리</a></li>
                   <li><a href="">고객문자발송</a></li>
               </ul>
            </nav>
        </header>
