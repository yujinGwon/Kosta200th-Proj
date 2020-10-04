<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BUSKING</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link href="http://fonts.googleapis.com/css?family=Gothic+A1|Arimo" 
    rel="stylesheet" type="text/css">
<%@ include file="/common/headerHome.jsp" %>
</head>
<body>
	<main style="width:100%; left:0; top:0">
	<div class="home-wrap">
			<h1>Welcome!</h1>
			
			<%-- <h2>${sessionScope.name}</h2>
			<h2>${sessionScope.dname}</h2> --%>
			<div class="content">
				<strong>BUSKING</strong> is an ERP website for teams.
			</div>

			<div class="btn-wrap">
				<a href="${pageContext.request.contextPath}/uc/pwdform.do">
					PASSWORD
				</a>
				<a
					href="${pageContext.request.contextPath}/uc/logout.do">
					LOGOUT
				</a>
			</div>
	</div>
	</main>
</body>
</html>
