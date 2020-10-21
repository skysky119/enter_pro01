<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="admin_header.jsp" %> <!-- 관리자 페이지 헤더 모듈화 -->
        <main class="content">			
			<section class="page" id="page1">
				<h2 class="page_tit">회원 관리 메뉴</h2>
				<nav class="menu">
                    <ul class="mem_con">
                        <li><a href="mem_list.jsp">회원 목록 보기</a></li>
						<li><a href="mem_search.jsp">회원 검색</a></li>
						<li><a href="mem_ins.jsp">회원 등록</a></li>
						<li><a href="mem_del.jsp">회원 삭제</a></li>
						<li><a href="mem_upd.jsp">회원정보 수정</a></li>						
                    </ul>
					<!-- <ul>
						<li><a href="memberList.jsp">회원관리</a></li>
						<li><a href="admBoardList.jsp">게시판관리</a></li>
						<li><a href="salesList.jsp">판매관리</a></li>
						<li><a href="productList.jsp">상품관리</a></li>
						<li><a href="curtList.jsp">구매관리</a></li>
						<li><a href="sendSms.jsp">고객문자발송</a></li>
						<li><a href="admin_edit.jsp">관리자 정보 수정</a></li>
						<li><a href="protocol_edit.jsp">회원약관 수정</a></li>
						<li><a href="privacy_edit.jsp">개인정보처리방침 수정</a></li>
						<li><a href="company_edit.jsp">회사정보 수정</a></li>
						<li><a href="product_edit.jsp">상품정보 수정</a></li>
						<li><a href="order_edit.jsp">주문정보 수정</a></li>
					</ul> -->
				</nav>
            </section>        
		</main>
<%@include file="admin_footer.jsp" %> <!-- 관리자 페이지 푸터 모듈화 -->