<%@page import="semi1.beans.UsersDto"%>
<%@page import="semi1.beans.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String pageTitle = "&#x2708;노가리투어ㅡ" + "마이페이지";%>
<jsp:include page="/template/header.jsp">
	<jsp:param name="pageTitle" value="<%=pageTitle%>" />
</jsp:include>
<%
String root  = request.getContextPath();
//세션 로그인 판정식
String keep = (String)session.getAttribute("keep");   
boolean isLogin = keep != null;
%>

<%
UsersDao usersDao = new UsersDao();
UsersDto usersDto = usersDao.get(keep);
%>
<!-- 페이지 내용 시작 -->

 <h2> 마이페이지 </h2>
    
    <table width="350" align="center">
    	<tbody>
    		<tr>
    			<th>아이디</th>
    			<td><%=usersDto.getUsersId() %></td>
    		</tr>
    		<tr>
    			<th>닉네임</th>
    			<td><%=usersDto.getUsersNick() %></td>
    		</tr>
    		<tr>
    			<th>이메일</th>
    			<td><%=usersDto.getUsersEmailNull() %></td>
    		</tr>
    		<tr>
    			<th>핸드폰번호</th>
    			<td><%=usersDto.getUsersPhoneNull() %></td>
    		</tr>
       		<tr>
    			<th>회원등급</th>
    			<td><%=usersDto.getUsersGrade() %></td>
    		</tr>
    	</tbody>
    	<tfoot align="right">
    		<tr>
    			<td><a href="modifyPassword.jsp"><input type="button" value="비밀번호변경"></a></td>
    		</tr>
    		<tr>
    			<td><a href="modify.jsp"><input type="button" value="회원정보변경"></a></td>
    		</tr>
    		<tr>
    			<td><a href="unregister.jsp"><input type="button" value="회원탈퇴"></a></td>
    		</tr>
    	</tfoot>
    </table>

   
	
<!-- 페이지 내용 끝. -->
<jsp:include page="/template/footer.jsp"></jsp:include>

