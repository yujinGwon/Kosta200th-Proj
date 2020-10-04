<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
<main>
<form action="p-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 범칙금 등록</legend>
	<div class="form-con">
		<ul>
			<li>
				<span>버스번호</span>
				<select name="p_b_no">
					<c:forEach items="${blist}" var="blist">
						<option>${blist.b_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>사원번호</span>
				<select name="p_e_no">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>면허번호</span>
				<select name="p_e_license">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_license}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>직원이름</span>
				<select name="p_e_name">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_name}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>부과금액</span>
				<input type="text" name="p_cost" id="p_cost" placeholder="부과 금액">
			</li>
			<li>
				<label for="p_payment" class="br">납부상태 </label>
				<input type="radio" name="p_payment" value="납부전" class="radio" checked="checked">
				납부전		
				<input type="radio" name="p_payment" value="납부완료" class="radio" >
				납부완료
			</li>
			<li>
				<span>위반일시</span>
				<input type="date" name="p_date" id="p_date" placeholder="위반 일시"> 
			</li>
			<li>
				<span>위반장소</span>
				<input type="text" name="p_located" id="p_located" placeholder="위반장소"> 
			</li>
			<li>
				<span>담당경찰서</span>
				<input type="text" name="p_police" id="p_police" placeholder="담당경찰서">
			</li>
			<li>
				<span>내용</span>
				<textarea rows="10" cols="30"  name="p_history" id="p_history">내용</textarea>
			</li>
			<li>
				<span>비고</span>
				<input type="text" name="p_bigo" id="p_bigo" placeholder="비고">
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="추가" class="editBtn formBtn">
			<input type="button" value="취소" class="editBtn formBtn red" onclick="location.href='p-list.do'">
		</div>	
	</div>
	</fieldset>
	</form>
	</main>	
</body>
</html>