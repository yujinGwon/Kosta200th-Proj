<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
<main>
<form action="comp-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 민원 등록</legend>
	<div class="form-con">
		<ul>
			<li>
				<span>버스번호</span>
				<select name="c_b_no">
					<c:forEach items="${blist}" var="blist">
						<option>${blist.b_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>사원번호</span>
				<select name="c_e_no">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>직원번호</span>
				<select name="c_e_name">
					<c:forEach items="${elist}" var="elist">
						<option>${elist.e_name}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>분류</span>
				<select name="c_type">
					<option value="칭찬">칭찬</option>
					<option value="불만">불만</option>
					<option value="제안">제안</option>
					<option value="건의">건의</option>
					<option value="기타">기타</option>
				</select>
			</li>
			<li>
				<span>제목</span>
				<input type="text" name="c_title" id="c_title" placeholder="제목">
			</li>
			<li>
				<span>내용</span>
				<textarea rows="10" cols="30"  name="c_content" id="c_content">내용</textarea>
			</li>
			<li>
				<span>날짜</span>
				<input type="date" name="c_date" id="c_date" placeholder="날짜">
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="추가" class="editBtn formBtn">
			<input type="button" value="취소" class="editBtn formBtn red" onclick="location.href='comp-list.do'">
		</div>
	</div>	
	</fieldset>
	</form>
	</main>	
</body>
</html>