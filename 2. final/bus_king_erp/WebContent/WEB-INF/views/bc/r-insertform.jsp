<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script type="text/javascript">

function rinsert(){
    var formData = $("#routeInsert").serialize();

    $.ajax({
        cache : false,
        url : "${pageContext.request.contextPath}/bc/ajax/r-insert.aj",
        type : "POST", 
        data : formData, 
        error : function() {
        	$('#err').html("이미 존재하는 노선입니다.");
        },
        success : function() {
        	document.getElementById("routeInsert").submit();
        },

    });
}
</script>

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
<form action="r-insert.do" method="post" class="form" id="routeInsert">
	<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 노선 등록</legend>
		<div class="form-con">
			<ul>
				<li style="margin-bottom: 0px;">
					<span>노선번호</span> <input type="text" name="r_no" style="display: inline; width: 70px"> 
				</li>
				<li style="text-align: left; margin: 0px; margin-left: -10px;">
					<a style="color: red; margin-left: 10px; " id="err"></a>
				</li>
				<li style="margin-top: 5px;">
				<div class="miniform"> <span>출발지</span><br><input type="text" name="r_start" class="miniinput"> </div>
				<div class="miniform"> <span>도착지</span><br><input type="text" name="r_end" class="miniinput"> </div> 
				</li>
				<li>
					<div class="miniform"> <span>첫차시간</span><br><input type="text" name="r_s_time_h" class="tinyinput"> 시 
						<input type="text" name="r_s_time_m" class="tinyinput"> 분</div>
					<div class="miniform"> <span>막차시간</span><br><input type="text" name="r_e_time_h" class="tinyinput"> 시 
						<input type="text" name="r_e_time_m" class="tinyinput"> 분</div>
				</li>
				<li>
					<span>배차간격(분)</span><br><input type="text" name="r_interval" class="tinyinput"> 
				</li>
				<li>
					<span>노선도(이미지) </span><input type="text" name="r_map" style="display: inline; width:170px;"> 
				</li>
				<li>
					<div class="miniform"> <span>성인요금(카드)</span><input type="text" name="r_pay_adult" class="miniinput"> </div>
					<div class="miniform"> <span>성인요금(현금)</span><input type="text" name="r_pay_adult2" class="miniinput"> </div>
				</li>
				<li>
					<div class="miniform"> <span>청소년요금(카드)</span><input type="text" name="r_pay_teen" class="miniinput"> </div>
					<div class="miniform"> <span>청소년요금(현금)</span><input type="text" name="r_pay_teen2" class="miniinput"> </div>
				</li>
				<li>
					<div class="miniform"> <span>어린이요금(카드)</span><input type="text" name="r_pay_kid" class="miniinput"> </div>
					<div class="miniform"> <span>어린이요금(현금)</span><input type="text" name="r_pay_kid2" class="miniinput"> </div>
				</li>
				<div class="btn-wrap">
					<input type="submit" value="추가" class="editBtn formBtn" onclick="rinsert(); return false;">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='r-list.do'">
				</div>
			</ul>
		</div>
	</fieldset>
</form>
</main>	

</body>
</html>