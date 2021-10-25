<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String pageTitle = "&#x2708;노가리투어ㅡ" + "로그인";%>
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

<!-- 로그인 -->
		<h3>LOGIN</h3>
	<%-- table전체를 감싸도록 form을 작성 --%>
	<%--	<form action="<%=request.getContextPath()%>/member/login.kh" method="post"> --%>
	<form action="<%=root %>/users/login.nogari" method="post"> 
	<table>
		<tbody>
			<tr>
				<th>ID</th>
				<td><input type="text" name="users_id" required placeholder="ID"></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" name="users_pw" required placeholder="password"></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="login" ></td>
			</tr>
		</tfoot>
	</table>	
	</form>
    
    <!-- 로그인실패 파라미터 받으면 오류 메세지 보여주기 -->
<%if(request.getParameter("loginfail") != null ) { %>	
		<h5>
			<font color="red">로그인 실패. 아이디와 비밀번호를 다시 입력</font>
		</h5>
<% } %>

<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>
    