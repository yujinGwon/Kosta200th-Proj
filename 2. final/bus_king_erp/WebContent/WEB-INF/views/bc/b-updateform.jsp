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
.miniinput{
	width: 130px;
	display: inline;
}
</style>

<body>
<%@include file="/common/header.jsp" %>
<%@include file="/common/baechaSubMenu.jsp" %>

<main>
<form action="b-update.do" method="post" class="form">
	<fieldset>
	<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 차량 정보 수정</legend>
		<div class="form-con">
			<ul>
				<li>
					<span>번호판</span><br><input type="text" value="${ dto.b_no }" name="b_no" readonly="readonly" class="miniinput"> 
				</li>
				<li>
					<div class="miniform"> <span>연식</span><input type="text" value="${ dto.b_year }" name="b_year" readonly="readonly" class="miniinput"> </div>
					<div class="miniform"> <span>연료</span><input type="text" value="${ dto.b_energy }" name="b_energy" readonly="readonly" class="miniinput"> </div>
				</li>
				<li>&nbsp;</li>
				<li>
					<span>* 구분</span><select name="b_type" style="width: 90px;"><option>마을</option><option>시내</option></select>
				</li>
				<li>
					<div class="miniform"><span>* 사고횟수</span><input type="text" value="${ dto.b_acc }" name="b_acc" style="display: inline; width: 130px"></div>
					<div class="miniform"><span>* 주행거리</span><input type="text" value="${ dto.b_mile }" name="b_mile" style="display: inline; width: 130px"></div>
				</li>
				<div class="btn-wrap">
					<input type="submit" value="수정" class="editBtn formBtn">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='b-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
</form>
</main>

</body>
</html>