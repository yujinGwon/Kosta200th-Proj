<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/common/header.jsp" %>

	<main>
	<form action="comp-update.do" method="post">
		<input type="text" name="c_no" id="c_no" placeholder="번호" value="${complaintupdate.c_no}" readonly="readonly"> <br>
		<input type="text" name="c_title" id="c_title" placeholder="제목" value="${complaintupdate.c_title}"> <br>
		<input type="text" name="c_type" id="c_type" placeholder="분류" value="${complaintupdate.c_type}"> <br>
		<input type="text" name="c_content" id="c_content" placeholder="내용" value="${complaintupdate.c_content}"> <br>
		<fmt:parseDate value='${complaintupdate.c_date}' var='trading_day' pattern='yyyy-mm-dd' />
		<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/> <br>
		<input type="text" name="c_b_no" id="c_b_no" placeholder="버스 번호" value="${complaintupdate.c_b_no}" readonly="readonly"> <br>
		<input type="text" name="c_e_name" id="c_e_name" placeholder="기사 이름" value="${complaintupdate.c_e_name}" readonly="readonly"> <br>
		<input type="text" name="c_e_no" id="c_e_no" placeholder="기사 사원번허" value="${complaintupdate.c_e_no}" readonly="readonly"> <br>
		<input type="submit" value="수정">
		<input type="reset" value="취소" onclick="location.href='comp-list.do'">
	</form>
</main>

</body>
</html>