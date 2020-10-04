<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>

<main>
<form action="comp-update.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 민원 수정</legend>
	<div class="form-con">
		<ul>
			<li>
				<span>민원번호</span>
				<input type="text" name="c_no" id="c_no" placeholder="번호" value="${complaintupdate.c_no}" readonly="readonly">
			</li>
			<li>
				<span>제목</span>
				<input type="text" name="c_title" id="c_title" placeholder="제목" value="${complaintupdate.c_title}"> 
			</li>
			<li>
				<span>분류</span>
				<select name="c_type">
					<option selected="selected">${complaintupdate.c_type}</option>
					<c:if test="${complaintupdate.c_type != '칭찬'}">
						<option value="칭찬">칭찬</option>
					</c:if>
					<c:if test="${complaintupdate.c_type != '불만'}">
						<option value="불만">불만</option>
					</c:if>
					<c:if test="${complaintupdate.c_type != '제안'}">
						<option value="제안">제안</option>
					</c:if>
					<c:if test="${complaintupdate.c_type != '건의'}">
						<option value="건의">건의</option>
					</c:if>
					<c:if test="${complaintupdate.c_type != '기타'}">
						<option value="기타">기타</option>
					</c:if>
				</select>
			</li>
			<li>
				<span>내용</span>
				<textarea rows="10" cols="30"  name="c_content" id="c_content">${complaintupdate.c_content}</textarea>
			</li>
			<li>
				<span>날짜</span>
				<fmt:parseDate value='${complaintupdate.c_date}' var='trading_day' pattern='yyyy-mm-dd' />
				<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/>
			</li>
			<li>
				<span>버스번호</span>
				<input type="text" name="c_b_no" id="c_b_no" placeholder="버스 번호" value="${complaintupdate.c_b_no}" readonly="readonly"> 
			</li>
			<li>
				<span>직원사번</span>
				<input type="text" name="c_e_no" id="c_e_no" placeholder="기사 사원번허" value="${complaintupdate.c_e_no}" readonly="readonly"> 
			</li>
			<li>
				<span>직원이름</span>
				<input type="text" name="c_e_name" id="c_e_name" placeholder="기사 이름" value="${complaintupdate.c_e_name}" readonly="readonly"> 
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="수정" class="editBtn formBtn">
			<input type="button" value="취소" class="editBtn formBtn red" onclick="location.href='comp-list.do'">
		</div>
	</div>
	</fieldset>		
	</form>
	</main>
</body>
</html>