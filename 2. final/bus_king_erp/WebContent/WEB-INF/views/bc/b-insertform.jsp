<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script type="text/javascript">

function binsert(){
    var formData = $("#busInsert").serialize();

    $.ajax({
        cache : false,
        url : "${pageContext.request.contextPath}/bc/ajax/b-insert.aj",
        type : "POST", 
        data : formData, 
        error : function() {
        	$('#err').html("이미 존재하는 번호판입니다.");
        },
        success : function() {
        	document.getElementById("busInsert").submit();
        },

    });
}


</script>

<head>
<meta charset="UTF-8">

</head>

<style>
.miniinput{
	width: 130px;
	display: inline;
}
.smallinput{
	width: 100px;
	display: inline;
}
</style>

<body>

<%@include file="/common/header.jsp" %>
<%@include file="/common/baechaSubMenu.jsp" %>

<main>
<form action="b-insert.do" method="post" class="form" id="busInsert">
	<fieldset>
	<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 차량 등록</legend>
	<div class="form-con" align="center">
		<ul>
			<li style="margin-bottom: 0px;">
				<input type="text" name="b_no" placeholder="번호판" class="miniinput">
				<input type="text" name="b_year" placeholder="연식" class="smallinput">
			</li>
			<li style="text-align: left; margin: 0px; margin-left: 10px;">
					<a style="color: red; margin-left: 10px; " id="err"></a>
			</li>
			<li>
				<span>연료</span>
				<select name="b_energy" style="width: 100px;">
					<option>경유</option>
					<option>천연가스</option>
					<option>전기</option>
				</select>
				<span>구분</span>
				<select name="b_type" style="width: 60px;"><option>마을</option><option>시내</option></select>
			</li>
			<li style="margin: 0px;">&nbsp;</li>
			<li style="margin-top: 0px;">
				<input type="text" name="b_acc" placeholder="사고횟수" class="miniinput">
				<input type="text" name="b_mile" placeholder="주행거리" class="smallinput">	
			</li>	
		</ul>
		<input hidden="hidden" type="date" name="b_start" id="currentDate1" readonly="readonly">
		<input hidden="hidden" type="date" name="b_recent" id="currentDate2" readonly="readonly">
		<div class="btn-wrap">
			<input type="submit" value="추가" class="editBtn formBtn" onclick="binsert(); return false;">
			<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='b-list.do'">
		</div>
	</div>
	</fieldset>
</form>
</main>	
<script>
  document.getElementById('currentDate1').value = new Date().toISOString().substring(0, 10);;
  document.getElementById('currentDate2').value = new Date().toISOString().substring(0, 10);;
</script>
</body>
</html>