<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/css/header.css" />" type="text/css">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" type="text/css">
<title></title>
</head>
<style>
.payname{
	width: 75px;
	float: left;
}
.rpay{
	width: 60px;
	float: left;
}
.rprice{
	width: 80px;
	float: left;
	text-align: right;
}


</style>
<body>
<main style="left: 8%">
	<div class="table100 ver2 m-b-110" align="center">
		<img src="../resources/img/route/${dto.r_map }" width="600px" height="450px" align="middle"/>
		<div class="acUl">
			<div class="acUl-con" style="padding: 15px;">
				<div><div class="payname">어른요금</div><div class="rpay">&nbsp;&nbsp;[ 카드 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_adult}" pattern="###,###"/> 원</div><div class="rpay">&nbsp;&nbsp;현금 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_adult}" pattern="###,###"/> 원 ]</div></div><br>
				<div><div class="payname">청소년요금</div><div class="rpay">&nbsp;&nbsp;[ 카드 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_teen}" pattern="###,###"/> 원</div><div class="rpay">&nbsp;&nbsp;현금 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_teen}" pattern="###,###"/> 원 ]</div></div><br>
				<div><div class="payname">어린이요금</div><div class="rpay">&nbsp;&nbsp;[ 카드 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_kid}" pattern="###,###"/> 원</div><div class="rpay">&nbsp;&nbsp;현금 :</div><div class="rprice"><fmt:formatNumber value="${dto.r_pay_kid2}" pattern="###,###"/> 원 ]</div></div>
			</div>
		</div>
	</div>
</main>
</body>
</html>