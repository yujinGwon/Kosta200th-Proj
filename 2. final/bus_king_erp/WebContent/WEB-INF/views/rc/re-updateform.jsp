<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@include file="/common/header.jsp" %> 
<%@include file="/common/repairSubMenu.jsp" %>
<html>
<meta charset="UTF-8">
<head>
<style type="text/css">
ma {
border:1px;
text-align: center;
margin-right: auto;
 }
</style>
	<title>Home</title>
</head>
<body>
<main>
<form action="re-update.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 차량 정비 현황</legend>
	<div class="form-con">
		<ul>
		<li>
			<span>정비 코드</span>
				<input type="text" name="re_code" value="${dto.re_code}" id="re_code">
			</li>
			<li>
			<span>버스번호</span>
			<input type="text" name="re_b_no" id="re_b_no" class="resized-input"
					value="${dto.re_b_no}" 
					style="display: inline; width: 168px">
			</li>
			<li>
				<span>접수날짜</span>
				<fmt:parseDate value='${dto.re_date}' var='re_date' pattern='yyyy-mm-dd'/>
             <fmt:formatDate value="${re_date}" pattern="yyyy.mm.dd"/>
			</li>
<!-- 			<li>
				<span>완료 날짜</span>
				<input type="date" name="re_date2">
			</li> -->
			<li>
				<span>정비가격</span>
				<input type="text" name="re_cost" class="resized-input">
			</li>
			<li>
			<label for="re_breakdown" class="br">정비내역 </label>
				<input type="radio" name="re_breakdown"
					value="자가점검" class="radio">
				자가점검(물품)
				<input type="radio" name="re_breakdown"
					value="차량사고" class="radio">
				차량사고
				<input type="radio" name="re_breakdown"
					value="차량노후" class="radio">
				차량노후
			</li>
			<%-- <li>
				<label for="re_breakdown" class="br">정비내역 </label>
				<input type="text" name="re_breakdown" value="${dto.re_breakdown}">
			</li> --%>
			<li>
				<label for="re_state" class="br">정비상태 </label>
				<input type="radio" name="re_state" value="정비중"  class="radio">
				정비중
			</li>
			<li>
				<span>비고(특이사항)
					<textarea rows="10" cols="30" name="re_bigo"></textarea>
				</span>
			</li>
			
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="수정" class="editBtn formBtn" onclick="location.href='re-update.do?re_code=${repair.re_code}'">
			<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='re-list.do?re_code=${repair.re_code}'">
		</div>
	</div>
	</fieldset>
	</form>
	</main>
</body>

</html>
