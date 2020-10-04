<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<%@include file="/common/baechaSubMenu.jsp" %>

<main>
<form action="a-update.do" method="post" class="form">
	<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 배차 정보 변경</legend>
		<div class="form-con">
			<ul>
				<li>
					<div class="miniform"> <span>번호판</span><br><input type="text" value="${ dto.a_b_no }" name="a_b_no" readonly="readonly"  style="display: inline; width: 130px"> </div>
					<div class="miniform"> <span>노선번호</span><br><input type="text" value="${ dto.a_r_no }" name="a_r_no" id="b_no" readonly="readonly"  style="display: inline; width: 80px"></div>
				</li> 
				<li>
					<span>기사</span><br><input type="text" value="${ dto.a_e_no }:${ dto.a_e_name }" name="a_e_no" id="b_no" readonly="readonly" style="display: inline; width: 130px"> 
				</li>
				<li>
					<span>* 근무조 </span><select name="a_time" style="display: inline; width: 70px">
						<option>A조</option>
						<option>B조</option>
					</select>
				</li>
				<div class="btn-wrap">
					<input type="submit" value="수정" class="editBtn formBtn">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='a-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
	
</form>
</main>

</body>
</html>