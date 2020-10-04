<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/repairSubMenu.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
#ma {
	border: 1px;
	text-align: center;
	margin-right: auto;
	width: 350;
	line-height: 1.5;
}
</style>
<head>
<script type="text/javascript">
	
</script>
<meta charset="UTF-8">
<title>자재 리스트</title>
</head>
<body>
	<main>
		<form action="woio-insert.do" method="post" class="form">
			<fieldset>
				<legend style="text-align: center">
					<!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> -->
					재고 관리 현황
				</legend>
				<div class="form-con">
					<ul>
						<li><span>입/출고</span> <select name="wo2_iptype">
								<option value="입고">입고</option>
								<option value="출고">출고</option>
						</select></li>
						<li><span>버스번호</span> <select name="wo2_b_no">
								<option>버스번호</option>
								<c:forEach items="${blist}" var="blist">
									<option>${blist.b_no}</option>
								</c:forEach>
						</select></li>
						<li><span>종류</span> <select name="wo2_type">
							<option>종류</option>
								<c:forEach items="${wlist}" var="wlist">
									<option>${wlist.wo_type}</option>
								</c:forEach></select>
						<!-- 
						<select name="wo2_type">
								<option value="타이어">타이어</option>
								<option value="워셔액">워셔액</option>
								<option value="베터리">베터리</option>
								<option value="와이퍼">와이퍼</option>
								<option value="체인">체인</option>
								<option value="점퍼케이블">점퍼케이블</option>
						</select></li> -->
						</li>
						<li><span>수량</span>
						 <input type="number" name="wo2_number"
							value="${wo2.wo2_number}"></li>
						<li><span>날짜</span> <input type="date" name="wo2_date"
							value="${wo2.wo2_date}"></li>
					</ul>
					<div class="btn-wrap">
						<input type="submit" value="확인" class="editBtn formBtn">
						<input type="reset" value="취소" class="editBtn formBtn red" onclick="location.href='woio-list.do'">
					</div>
				</div>
			</fieldset>


		</form>
	</main>
</body>
</html>