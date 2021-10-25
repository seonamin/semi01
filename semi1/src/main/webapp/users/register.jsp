<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%String pageTitle = "&#x2708;노가리투어ㅡ" + "회원가입";%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="<%=pageTitle%>" />
</jsp:include>
<!-- 페이지 내용 시작 -->
<%String root  = request.getContextPath();%>

<!-- 회원가입 정보 입력 페이지 -->
<h3>회원가입페이지</h3>

<form action="<%=root %>/users/join.nogari" method="post">
	<table>
		<tbody>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="users_id" required>
<!-- 					<input type="text" name="users_id" required onkeydown="inputId()"> -->
<!-- 					<input type="button" value="중복확인" onclick="checkId()"> -->
<!-- 					<input type="hidden" name="unCheck" value="unCheckId"> -->
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="users_pw" required></td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td>비밀번호 확인</td> -->
<!-- 				<td><input type="password" name="re_pw" required></td> -->
<!-- 			</tr> -->
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="users_nick" required></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="users_email"></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="tel" name="users_phone"></td>
			</tr>
			<tr align="right">
				<td colspan="2">
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</tbody>
	</table>
</form>

<!-- 아이디 중복이거나 비밀번호 일치안하면 전송한 파라미터로 판정하여 보여줄 메세지 작성 -->
<% if(request.getParameter("unusable") != null){%>
	<h5>입력하신 아이디는 사용할 수 없습니다</h5>
<%} %>
<%if(request.getParameter("noMatchPw") != null){%>
	<h5>비밀번호가 일치하지 않습니다</h5>
<%} %>


<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>