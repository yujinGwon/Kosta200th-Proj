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
.tinyinput{
	width: 40px;
	display: inline;
}
</style>

<body>
<%@include file="/common/header.jsp" %>
<%@include file="/common/baechaSubMenu.jsp" %>

<main>
<form action="r-update.do" method="post" class="form">
	<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 노선 정보 수정</legend>
		<div class="form-con">
			<ul>
		<li>
					<span>노선번호</span> <input type="text" value="${dto.r_no}" value="${dto.r_no}" name="r_no" readonly="readonly" style="display: inline; width: 70px"> 
				</li>
				<li>
				<div class="miniform"> <span>출발지</span><br><input type="text" value="${dto.r_start}" name="r_start" class="miniinput"> </div>
				<div class="miniform"> <span>도착지</span><br><input type="text" value="${dto.r_end}" name="r_end" class="miniinput"> </div> 
				</li>
				<li>
					<div class="miniform"> <span>첫차시간</span><br><input type="text" value="${r_s_time_h}" name="r_s_time_h" class="tinyinput"> 시 
						<input type="text" value="${r_s_time_m}" name="r_s_time_m" class="tinyinput"> 분</div>
					<div class="miniform"> <span>막차시간</span><br><input type="text" value="${r_e_time_h}" name="r_e_time_h" class="tinyinput"> 시 
						<input type="text" value="${r_e_time_m}" name="r_e_time_m" class="tinyinput"> 분</div>
				</li>
				<li>
					<span>배차간격(분)</span><br><input type="text" value="${dto.r_interval}" name="r_interval" class="tinyinput"> 
				</li>
				<li>
					<span>노선도(이미지) </span><input type="text" value="${dto.r_map}" name="r_map" style="display: inline; width:170px;"> 
				</li>
				<li>
					<div class="miniform"> <span>성인요금(카드)</span><input type="text" value="${dto.r_pay_adult}" name="r_pay_adult" class="miniinput"> </div>
					<div class="miniform"> <span>성인요금(현금)</span><input type="text" value="${dto.r_pay_adult2}" name="r_pay_adult2" class="miniinput"> </div>
				</li>
				<li>
					<div class="miniform"> <span>청소년요금(카드)</span><input type="text" value="${dto.r_pay_teen}" name="r_pay_teen" class="miniinput"> </div>
					<div class="miniform"> <span>청소년요금(현금)</span><input type="text" value="${dto.r_pay_teen2}" name="r_pay_teen2" class="miniinput"> </div>
				</li>
				<li>
					<div class="miniform"> <span>어린이요금(카드)</span><input type="text" value="${dto.r_pay_kid}" name="r_pay_kid" class="miniinput"> </div>
					<div class="miniform"> <span>어린이요금(현금)</span><input type="text" value="${dto.r_pay_kid2}" name="r_pay_kid2" class="miniinput"> </div>
				</li>
				<div class="btn-wrap">
					<input type="submit" value="수정" class="editBtn formBtn">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='r-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
</form>
</main>

</body>
</html>