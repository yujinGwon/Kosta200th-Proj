<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>
<main>
<form action="p-update.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 범칙금 수정</legend>
	<div class="form-con">
		<ul>
			<li>
				<span>범칙금코드</span>
				<input type="text" name="p_code" id="p_code" placeholder="범칙금 코드" readonly="readonly" value="${penaltyupdate.p_code}">
			</li>
			<li>
				<span>버스번호</span>
				<input type="text" name="p_b_no" id="p_b_no" placeholder="버스 번호" readonly="readonly" value="${penaltyupdate.p_b_no}"> 
			</li>
			<li>
				<span>사원번호</span>
				<input type="text" name="p_e_no" id="p_e_no" placeholder="기사 사원번호" readonly="readonly" value="${penaltyupdate.p_e_no}"> 
			</li>
			<li>
				<span>직원이름</span>
				<input type="text" name="p_e_name" id="p_e_name" placeholder="기사 이름" readonly="readonly" value="${penaltyupdate.p_e_name}"> 
			</li>
			<li>
				<span>면허번호</span>
				<input type="text" name="p_e_license" id="p_e_license" placeholder="면허 번호" readonly="readonly" value="${penaltyupdate.p_e_license}"> 
			</li>
			<li>
				<span>부과금액</span>
				<input type="text" name="p_cost" id="p_cost" placeholder="부과 금액" readonly="readonly" value="${penaltyupdate.p_cost}">
			</li>
			<li>
				<span>납부상태</span>
				<input type="text" name="p_payment" id="p_payment" placeholder="납부상태" readonly="readonly" value="${penaltyupdate.p_payment}">
			</li>
			<li>
				<span>위반일시</span>
				<fmt:parseDate value="${penaltyupdate.p_date}" var='trading_day' pattern='yyyy-mm-dd' />
				<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/>
			</li>
			<li>
				<span>위반장소</span>
				<input type="text" name="p_located" id="p_located" placeholder="위반장소" readonly="readonly" value="${penaltyupdate.p_located}">
			</li>
			<li>
				<span>담당경찰서</span>
				<input type="text" name=p_police id="p_police" placeholder="담당경찰서" readonly="readonly" value="${penaltyupdate.p_police}">
			</li>
			<li>
				<span>내용</span>
				<textarea rows="10" cols="30"  name="p_history" id="p_history" readonly="readonly">${penaltyupdate.p_history}</textarea>
			</li>
			<li>
				<span>비고</span>
				<input type="text" name="p_bigo" id="p_bigo" placeholder="비고" value="${penaltyupdate.p_bigo}">			
			</li>
			
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="수정" class="editBtn formBtn">
			<input type="button" value="취소" class="editBtn formBtn red" onclick="location.href='p-list.do'">
		</div>	
	</div>
	</fieldset>		
	</form>
	</main>
</body>
</html>