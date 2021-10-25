<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%String pageTitle = "&#x2708;노가리투어ㅡ" + "회원가입성공";%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="<%=pageTitle%>" />
</jsp:include>
<!-- 페이지 내용 시작 -->

<%String root  = request.getContextPath();%>
    
    <h2> 회원가입이 완료되었습니다 </h2>

<%-- 가입 성공후 이용자가 무슨 행동을 할지 예상해서 링크를 구현 --%>
<h4><a href="<%=root %>/users/login.jsp">로그인 하러 가기</a></h4>
<h4><a href="<%=root%>/index.jsp">메인으로 돌아가기</a></h4>


<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>