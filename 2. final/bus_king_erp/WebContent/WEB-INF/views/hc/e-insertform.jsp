<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/hrSubMenu.jsp" %>
<style type="text/css">
	.form {
		width: 50%;
		margin: 5% 25%;
	}
	.form-con {
		width: 100%;
		margin-top: 50px;
	}
	
	.form-con select {
    width: 170px;
    margin: 5px 0;
}

	.form-con .btn-wrap {
	    position: relative;
		left: 50%;
		margin-left: -100px;
	}
	.left-side {
		float: left;
		margin-left: 60px;
	}
	.right-side {
		position: relative;
		float: right;
		margin-right: 60px;
	}
	.right-side input {
		width: 170px;
	}
	
	.form-con textarea {
		height: 150px;
	}
	
	.form-con input {
    width: 170px;
}

	.form-con .btn-wrap {
		width: 100%;
		position: relative;
		left: 0;
		margin-left: 0;
		bottom: 0;
		background: green;
	}
	.form-con .formBtn {
		position: absolute;
		margin-left: 0;
		margin-top: 5px;
		width: 170px;
		left: 0;
		box-shadow: 0px 0px 10px 0px rgba(96, 173, 94, 0.15);
	}
	.form-con .add {
		margin: 22px 0;
		letter-spacing: 1.3px;
	}
</style>

<body>
<main>
<form action="e-insert.do" method="post" class="form">
	<fieldset>
	<legend style="text-align: center">사원등록</legend>
	<div class="form-con">
		<ul class="left-side">
		<li>
			<span>이름</span>
			<input type="text" name="e_name" id="e_name" >
		</li>
		<li>
			<span>주민등록번호</span>
			<input type="text" name="e_jumin" id="e_jumin" placeholder="ex)000000-0000000">
		</li>
		<li>
<!-- 		<span>부서</span><br>
			<select name="e_dname">
								<option>선택하세요</option>
								<option>인사부</option>
								<option>총무부</option>
								<option>운송팀</option>
								<option>정비과</option>
							</select>
			</li> -->
			<li>
			<span>부서</span><br>			
			<select name="authority">
								<option>선택하세요</option>
								<option value="ROLE_ADMIN">관리자</option>
								<option value="ROLE_HC">인사팀</option>
								<option value="ROLE_ACD">총무팀</option>
								<option value="ROLE_BC">배차팀</option>
								<option value="ROLE_RC">정비팀</option>
							</select>
			</li>
			<li>
			<span>직급</span><br>			
			<select name="e_position">
								<option>선택하세요</option>
								<option>사원</option>
								<option>대리</option>
								<option>과장</option>
								<option>차장</option>
								<option>부장</option>
							</select>
			</li>
			<li>
			<span>근로계약서</span><br>
			<select name="e_contract">
								<option>선택하세요</option>
								<option>작성</option>
								<option>미작성</option>
							</select>
			</li>
			<li>
			<span>결혼여부</span><br>
			<select name="e_marriage">
								<option>선택하세요</option>
								<option>미혼</option>
								<option>기혼</option>
							</select>
			</li>
			<li>
			<span>장애여부</span><br>
			<select name="e_disabled">
								<option>선택하세요</option>
								<option>비장애</option>
								<option>장애</option>
							</select>
			</li>
			<li>
			<span>면허번호</span>
			<input type="text" name="e_license" id="e_license" >
			</li>
			<li>
			<span>비밀번호</span>
			<input type="password" name="e_pwd" id="e_pwd" value="a12345" >
			</li>
		    </ul>
		    <ul class="right-side">
			<li>
			<span>취미</span>
			<input type="text" name="e_hobby" id="e_hobby" >
			</li>
			<li>
			<span>특기</span>
			<input type="text" name="e_speciality" id="e_speciality" >
			</li>
			<li>
			<span>연락처</span>
			<input type="text" name="e_phone" id="e_phone" placeholder="ex)000-0000-0000">
			</li>
			<li>
			<span>이메일</span>
			<input type="text" name="e_mail" id="e_mail" >
			</li>
			<li>
			<span>주소</span>
			<input type="text" name="e_add" id="e_add" >
			</li>
			<li>
			<span>운전경력</span>
			<input type="text" name="e_career" id="e_career" >
			</li>
			<li>
			<span>남은 휴가일</span>
			<input type="text" name="e_break" id="e_break" >
			</li>
			<li>
			<span>입사일</span>
			<input type="date" name="e_start" id="e_start" >
			</li>
			<li>
				<span style="color: rgb(219, 225, 226)">hidden</span>
				<input type="submit" value="등록" class="editBtn formBtn add">
			</li>
			<li>
				<span style="color: rgb(219, 225, 226)">hidden</span>
				<input type="reset" value="취소" class="editBtn formBtn add" onclick="location.href='e-list.do'">
			</li>
			</ul>
			</div>
			</fieldset>
			</form>
</main>
</body>
</html>