<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String pageTitle = "&#x2708;노가리투어ㅡ" + "메인";%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="<%=pageTitle%>" />
</jsp:include>
<!-- 페이지 내용 시작 -->

<%
String root  = request.getContextPath();
//세션 로그인 판정식
String keep = (String)session.getAttribute("keep");   
boolean isLogin = keep != null;
%>


<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>