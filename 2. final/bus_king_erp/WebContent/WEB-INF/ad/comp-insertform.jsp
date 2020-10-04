<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

<%@include file="/common/header.jsp" %>

<main>
<form action="comp-insert.do" method="post">
		<input type="text" name="c_title" id="c_title" placeholder="제목"> <br>
		<input type="text" name="c_type" id="c_type" placeholder="분류"> <br>
		<input type="text" name="c_content" id="c_content" placeholder="내용"> <br>
		<input type="date" name="c_date" id="c_date" placeholder="날짜"> <br>
		<input type="text" name="c_b_no" id="c_b_no" placeholder="버스 번호"> <br>
		<input type="text" name="c_e_name" id="c_e_name" placeholder="기사 이름"> <br>
		<input type="text" name="c_e_no" id="c_e_no" placeholder="기사 사원번호"> <br>
		
		<input type="submit" value="추가">
	</form>
</main>	

</body>
</html>