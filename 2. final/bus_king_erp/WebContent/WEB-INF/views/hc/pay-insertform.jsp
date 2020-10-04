<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
</head>

<style>
.miniform{
	width: 50%;
	display: inline;
	float: left;
}
</style>

<body>

<%@include file="/common/header.jsp" %>
<%@include file="/common/hrSubMenu.jsp" %>

<main>
<form action="pay-insert.do" method="post" class="form">
		<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> -->급여 내역 등록</legend>
		<div class="form-con">
			<ul>
				<li>
					<div class="miniform"> <span>*사원번호</span><br><input type="text" name="pay_e_no" style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>*사원이름</span><br><input type="text" name="pay_e_name" style="display: inline; width: 130px"> </div> 
				</li>
				<li>
					<div class="miniform"> <span>*부서</span> <input type="text" name="pay_e_dname" style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>*직급</span> <input type="text" name="pay_e_position" style="display: inline; width: 130px"> </div>
				</li>
				<li>
					<div class="miniform"> <span>*해당년도</span><input type="text" name="pay_year" style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>*해당월</span><input type="text" name="pay_month" style="display: inline; width: 130px"> </div>
				</li>
				<li>
					<span>*지급일</span><input type="date" name="pay_day">
				</li>
				<li>
					<div class="miniform"> <span>*출근일수</span> <input type="text" name="pay_chul" style="display: inline; width: 130px"></div>
					<div class="miniform"> <span>*근무시간</span> <input type="text" name="pay_work" style="display: inline; width: 130px"></div>
					
				</li>
				<li>
					<div class="miniform"> <span>*특근시간</span> <input type="text" name="pay_work_t" style="display: inline; width: 130px"></div>
					<div class="miniform"> <span>*특근수당</span> <input type="text" name="pay_p_t" style="display: inline; width: 130px"></div>
				</li>
				<li>
					<div class="miniform"> <span> *기본급</span> <input type="text" name="pay_p" style="display: inline; width: 130px"></div>
					<div class="miniform"> <span>*만근수당</span> <input type="text" name="pay_m" style="display: inline; width: 130px"></div>
				</li>
				<li>
					<span>*세금공제액</span><input type="text" name="pay_tax"><br>
				<li>
					<span>*회계처리 설명</span><input type="text" name="pay_nametag">
				</li>
				<li>
					<span>비고</span><input type="text" name="pay_bigo">
				</li>
				
				<div class="btn-wrap">
					<input type="submit" value="추가" class="editBtn formBtn">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='pay-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
</form>
</main>

</body>
</html>