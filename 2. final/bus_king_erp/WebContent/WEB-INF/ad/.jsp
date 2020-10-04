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
<form action="r-insert.do" method="post">
			<input type="text" name="r_no" id="r_no" placeholder="r_no"><br>
			<input type="text" name="r_start" id="r_start"placeholder="r_start"><br>
			<input type="text" name="r_end" id="r_end"placeholder="r_end"><br>
			<input type="text" name="r_s_time" id="r_s_time"placeholder="r_s_time"><br>
			<input type="text" name="r_e_time" id="r_e_time"placeholder="r_e_time"><br>
			<input type="text" name="r_interval" id="r_interval"placeholder="r_interval"><br>

			<input type="text" name="r_map" id="r_map"placeholder="r_map"><br>
			<input type="text" name="r_pay_adult" id="r_pay_adult"placeholder="r_pay_adult"><br>
			<input type="text" name="r_pay_adult2" id="r_pay_adult2"placeholder="r_pay_adult2"><br>
			<input type="text" name="r_pay_teen" id="r_pay_teen"placeholder="r_pay_teen"><br>
			<input type="text" name="r_pay_teen2" id="r_pay_teen2"placeholder="r_pay_teen2"><br>
			<input type="text" name="r_pay_kid" id="r_pay_kid"placeholder="r_pay_kid"><br>
			<input type="text" name="r_pay_kid2" id="r_pay_kid2"placeholder="r_pay_kid2"><br>
			<input type="submit" value="추가">
</main>	

</body>
</html>