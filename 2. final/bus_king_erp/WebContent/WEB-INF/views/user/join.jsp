<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="../include/header.jsp" %> --%>
</head>
<body>
<h2>회원가입</h2>
<form action="${pageContext.request.contextPath}/uc/insertUser.do" method="get">
<table>
	<tr>
		<td>아이디</td>
		<td><input name="e_no"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="e_pwd"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input name="e_name"></td>
	</tr>
	<tr>
		<td>사용권한</td>
		<td>
			<select name="authority">
				<option value="ROLE_USER">일반사용자</option>
				<option value="ROLE_BC">배차팀</option>
				<option value="ROLE_HC">인사팀</option>
				<option value="ROLE_ACD">총무팀</option>
				<option value="ROLE_RC">정비팀</option>
				<option value="ROLE_ADMIN">관리자</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">	
			<input type="submit" value="회원가입">
		</td>
	</tr>
</table>
</form>
</body>
</html>
