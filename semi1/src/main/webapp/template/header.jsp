<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 환경설정
//request.setCharacterEncoding("UTF-8");
String title = request.getParameter("pageTitle");
System.out.println(title);
String root  = request.getContextPath();
%>
<%
//세션 로그인 판정식
String keep = (String)session.getAttribute("keep");   
boolean isLogin = keep != null;
//세션 회원등급 판정
String grade = (String)session.getAttribute("grade");   
boolean isAdmin =  grade != null && grade.equals("관리자");
%>
<!DOCTYPE html>
<HTML>
<HEAD>
<META CHARSET="UTF-8">
<TITLE><%=title%></TITLE>
<SCRIPT TYPE="TEXT/JAVASCRIPT" SRC="<%=root%>/lib/main.js"></SCRIPT> <!-- 라이브러리 로드 -->
<LINK REL="STYLESHEET" HREF="<%=root%>/css/main.css" />
</HEAD>
keep=<%=keep%> isLogin=<%=isLogin %>  grade=<%=grade %> isAdmin=<%=isAdmin %>
<BODY>

<HEADER>
<DIV ID="userContainer">횐갑</DIV>
<DIV ID="logoContainer">
	<SPAN>노가리</SPAN>
	<IMG ID="logo" SRC="<%=root%>/resource/image/logo.png" ALT="로고"/>
	<SPAN>투어</SPAN>
</DIV>
<DIV ID="searchContainer">검색박스</DIV>
</HEADER>

<TABLE align="center">
	<TBODY>
		<TR>
			<TD>
				 <%if(isLogin){ //회원이라면 %>
	 				<a href="<%=root%>/index.jsp">메인</a>
	 				<a href="<%=root%>/users/logout.nogari">로그아웃</a>
	 				<a href="<%=root%>/users/mypage.jsp">마이페이지</a>
	 				<a href="#">관광지</a>
	 				<a href="#">코스</a>
	 				<a href="#">이벤트</a>
	 				 <%} else{ %>
	 				<a href="<%=root%>/index.jsp">메인</a>
	 				<a href="<%=root%>/users/login.jsp">로그인</a>
	 				<a href="<%=root%>/users/register.jsp">회원가입</a>
	 				<a href="#">관광지</a>
	 				<a href="#">코스</a>
	 				<a href="#">이벤트</a>
	 			<%} %>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<fieldset><legend>페이지 내용</legend>
<!-- <CONTENT> -->