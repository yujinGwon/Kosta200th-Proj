<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<form action="p-update.do" method="post">
		<input type="text" name="p_code" id="p_code" placeholder="범칙금 코드" readonly="readonly" value="${penaltyupdate.p_code}"> <br>
		<input type="text" name="p_b_no" id="p_b_no" placeholder="버스 번호" readonly="readonly" value="${penaltyupdate.p_b_no}"> <br>
		<input type="text" name="p_e_no" id="p_e_no" placeholder="기사 사원번호" readonly="readonly" value="${penaltyupdate.p_e_no}"> <br>
		<input type="text" name="p_e_licence" id="p_e_licence" placeholder="면허 번호" readonly="readonly" value="${penaltyupdate.p_e_licence}"> <br>
		<input type="text" name="p_cost" id="p_cost" placeholder="부과 금액" readonly="readonly" value="${penaltyupdate.p_cost}"> <br>
		<input type="radio" name="p_payment" value="납부전">납부전
		<input type="radio" name="p_payment" value="납부완료">납부완료 <br>
		<fmt:parseDate value="${penaltyupdate.p_date}" var='trading_day' pattern='yyyy-mm-dd' />
		<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/> <br>
		<input type="text" name="p_located" id="p_located" placeholder="위반장소" readonly="readonly" value="${penaltyupdate.p_located}"> <br>
		<input type="text" name=p_police id="p_police" placeholder="담당경찰서" readonly="readonly" value="${penaltyupdate.p_police}"> <br>
		<input type="text" name="p_history" id="p_history" placeholder="내용" readonly="readonly" value="${penaltyupdate.p_history}"> <br>
		<input type="text" name="p_bigo" id="p_bigo" placeholder="비고" value="${penaltyupdate.p_bigo}"> <br>
		<input type="submit" value="수정">
	</form>
</main>

</body>
</html>