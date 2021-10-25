<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String pageTitle = "&#x2708;노가리투어ㅡ" + "회원탈퇴";%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="<%=pageTitle%>" />
</jsp:include>
<%
String root  = request.getContextPath();
//세션 로그인 판정식
String keep = (String)session.getAttribute("keep");   
String grade = (String)session.getAttribute("grade");
%>
<!-- 페이지 내용 시작 -->
<h4>회원탈퇴를 위해 비밀번호를 확인합니다</h4>
	<form action="unregister.nogari" method="post">
		<table align="center">
			<tbody>
				<tr>
					<th>아이디</th>
					<td><%=keep %></td>
				</tr>
					<th>비밀번호</th>
					<td><input type="password" name="users_pw" required placeholder=" 비밀번호를 확인합니다"></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="탈퇴"></td>
				</tr>
			</tfoot>
		</table>
    </form>
    
<%-- 		error라는 이름의 파라미터가 존재하면 오류 메세지를 출력하도록 처리 		--%>
	<%if(request.getParameter("nomatch") != null ) {	//nomatch파라미터가 존재한다면 %>	
		<h5>
			<font color="red">비밀번호를 다시 확인해 주세요</font>
		</h5>
	<% } %>
	


<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>