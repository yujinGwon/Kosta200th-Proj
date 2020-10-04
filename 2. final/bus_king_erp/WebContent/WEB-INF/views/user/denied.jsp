<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/common/header.jsp" %>

<!-- 3초후 메인페이지로 이동 -->
<meta http-equiv="refresh" content="5, ${pageContext.request.contextPath}">

<body>
	<main style="width:100%; left:0; top:0">
	
		<div class="home-wrap" style="width: 60%">
				<h1 style="font-size: 40px">접근권한이 없습니다.</h1>
				
				<div class="content" style="line-height: 1.7; margin: 30px 0">
					해당 부서의 직원 또는 관리자 계정으로만 접근 가능합니다.
					<br><%-- ${errMsg} --%>
				</div>
	
				<div class="btn-wrap" style="margin-left: -265px">
					<a href="javascript:history.back()">GO BACK</a>
				</div>
		</div>
	</main>
</body>
</html>
