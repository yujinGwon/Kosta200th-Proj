<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">

<main>
<form action="acc-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 교통사고 등록</legend>
	<div class="form-con">
		<ul>
			<li>
				<span>버스번호</span>
				<select name="acc_b_no">
					<c:forEach items="${blist}" var="blist">
						<option>${blist.b_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>	
				<span>사원번호</span>
				<select name="acc_e_no">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>	
				<span>면허번호</span>
				<select name="acc_e_license">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_license}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<label for="acc_state" class="br">차량상태 </label>
				<input type="radio" name="acc_state" value="수리요함" class="radio">
				수리요함
				<input type="radio" name="acc_state" value="운행가능" class="radio">
				운행가능
			</li>
			<li>
				<span>사고난 일자</span>
				<input type="datetime-local" name="acc_date" id="acc_date" class="resized-input" placeholder="사고난 일자">
			</li>
			<li>
				<span>사고난 장소</span>
				<input type="text" name="acc_located" id="acc_located" class="resized-input" placeholder="사고난 장소">			
			</li>
			<li>
				<span>사고난 내용
					<textarea rows="10" cols="30"  name="acc_breakdown" id="acc_breakdown">사고난 내용</textarea>
				</span>
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="추가" class="editBtn formBtn">
			<input type="button" value="취소" class="editBtn formBtn red" onclick="location.href='acc-list.do'">
		</div>	
	</div>
	</fieldset>
	</form>
	</main>	
</body>
</html>