<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script type="text/javascript">

function pwdup(){
    var formData = $("#pwdupdate").serialize();

    $.ajax({
        cache : false,
        url : "${pageContext.request.contextPath}/uc/ajax/pwd.aj",
        type : "POST", 
        data : formData, 
        error : function() {
        	$('#err').html("현재 비밀번호가 일치하지 않거나<br>&nbsp; 비밀번호 확인이 틀립니다.");
        },
        success : function() {
        	document.getElementById("pwdupdate").submit();
        },

    });
}

</script>

<html>
<head>
<meta charset="UTF-8">
</head>

<style>
</style>

<body>
<%@include file="/common/header.jsp" %>

<main style="width: 70%;">
<form action="pwd.do" method="post" class="form" id="pwdupdate">
	<fieldset>
		<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 비밀번호 변경</legend>
		<div class="form-con">
		<h1></h1>
			<input type="hidden" value="${sessionScope.name}" name="name">
			<ul>
				<li>
					<div align="center"> <span>현재 비밀번호</span><br><input type="password" name="currentpwd"> </div>
				</li>
				<li>
					<div align="center"> <span>변경할 비밀번호</span><br><input type="password" name="updatepwd"></div>
				</li>
				<li>
					<div align="center"> <span>변경할 비밀번호 확인</span><br><input type="password" name="updatepwd2"></div>
				</li> 
				<li style="text-align: left; margin: 0px; margin-left: 10px;">
					<a style="color: red; margin-left: 10px; " id="err"></a>
				</li>
				
				<div class="btn-wrap" style="margin-left: 13%;">
					<input type="submit" value="수정" class="editBtn formBtn" onclick="pwdup(); return false;">
					<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='${pageContext.request.contextPath}'">
				</div>
			</ul>
		</div>
	</fieldset>
	
</form>
</main>

</body>
</html>