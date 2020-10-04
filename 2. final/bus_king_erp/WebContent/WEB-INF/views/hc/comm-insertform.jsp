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
<form action="comm-insert.do" method="post" class="form">
		<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> -->근태 일지 등록</legend>
		<div class="form-con">
			<ul>
				<li>
					<span>날짜</span><input type="date" name="comm_date">
				</li>
				<li>
					<label for="comm_type_d" class="br">날짜유형</label>
					<input type="radio" name="comm_type_d" value="평일"  class="radio">
					평일
					<input type="radio" name="comm_type_d" value="주말"  class="radio">
					주말
					<input type="radio" name="comm_type_d" value="공휴일"  class="radio">
					공휴일
				</li>
				<li>
					<div class="miniform"> <span>사번</span><input type="text" name="comm_e_no" style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>이름</span><input type="text" name="comm_e_name" style="display: inline; width: 130px"> </div>
				</li>
				<li>
					<div class="miniform"> <span>부서명</span><input type="text" name="comm_e_dname" style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>직급</span><input type="text" name="comm_e_position" style="display: inline; width: 130px"> </div>
				</li>
				<li>
					<label for="comm_work" class="br">근태현황</label>
					<input type="radio" name="comm_work" value="출근"  class="radio">
					출근
					<input type="radio" name="comm_work" value="결근"  class="radio">
					결근
					<input type="radio" name="comm_work" value="병가"  class="radio">
					병가
					<input type="radio" name="comm_work" value="휴가"  class="radio">
					휴가	
				</li>
				<div class="btn-wrap">
					<input type="submit" value="추가" class="editBtn formBtn">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='comm-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
</form>
</main>

</body>
</html>