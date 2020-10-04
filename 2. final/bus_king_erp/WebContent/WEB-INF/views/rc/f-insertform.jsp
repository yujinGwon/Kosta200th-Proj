<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/repairSubMenu.jsp" %>
<%@include file="/common/header.jsp" %> 
<main>
<form action="f-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center">
<!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 차량 주유 등록</legend>
	<div class="form-con">
		<ul>
			<li class="hidden-li">
				<input class="hidden" type="text" name="f_code"
					id="f_code" placeholder="f_code">
			</li>
			<li>
				<!-- 버스번호가 select 안에서 보이지 않음 -->
				<span>버스번호</span>
				<select name="f_b_no">
					<option>버스번호</option>
					<c:forEach items="${blist}" var="blist">
						<option>${blist.b_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
			<label for = "f_b_energy" class="br" >주유 타입 : </label>
		    <input type = "radio" name = "f_b_energy" id="f_b_energy" value="전기" class="radio">전기
	        <input type = "radio" name = "f_b_energy"id="f_b_energy" value="경유" class="radio">경유
	        <input type = "radio" name = "f_b_energy"id="f_b_energy" value="천연가스" class="radio">천연가스
			</li>
			<li>
				<span>주유 날짜</span>
				<input type="date" name="f_date" id="f_date" class="resized-input"
					placeholder="re_date">
			</li>
			<li>
				<span>쥬유 량</span>
			 	<input type="number"  name="f_charge" id="f_charge" 
					placeholder="숫자로만 입력" class="resized-input">
			</li>
			<li>
				<span>주유 가격</span>
				<input type="text" name="f_cost" id="f_cost" class="resized-input"
					placeholder="가격">
			</li>
			<li>
				<span>결제 여부</span>
			 <select name="f_payment" id="f_payment" style="margin: auto;">
			<option value="결제전" id="f_payment">결제전</option>
			<option value="결제완료" id="f_payment">결제완료</option>
			</select>
			</li>
			<li>
				<span>요약</span>
			 <input type="text" name="f_nametag" id="f_nametag" placeholder="차량번호/주유종류" class="resized-input">
			</li>
			<li>
				<span>비고(특이사항)</span>
			<textarea  rows="10" cols="30" name="f_bigo"></textarea>
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="등록" class="editBtn formBtn">
			<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='f-list.do'">
		</div>
	</div>
	</fieldset>
	</form>
	</main>
</body>

</html>

        