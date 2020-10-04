<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/repairSubMenu.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>
	function showPopup() {
		window.open("re-list.do", "리스트",
				"width=1400, height=300, left=100, top=50");
	}
</script>
<style type="text/css">
#ma {
	border: 1px;
	text-align: center;
	width: 350;
	line-height: 1.5;
}
</style>
<head>
<!-- ... -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<meta charset="UTF-8">
<title>자재 리스트</title>
</head>
<body>
	<main>

		<form action="" method="get" id="frm">
			<div class="table100 ver2 m-b-110">
				<table data-vertable="ver2" id=ma>
					
						<tr class="row100 head">
							<th class="column100 column1" data-column="column1">코드값</th>
							<th class="column100 column2" data-column="column2">종류</th>
							<th class="column100 column3" data-column="column3">총 수량</th>
							<th class="column100 column4" data-column="column4">개당 가격</th>
							<th class="column100 column5" data-column="column5"></th>
							<th class="column100 column6" data-column="column6"></th>
							
							<c:forEach items="${Wonlyolist}" var="wonlyolist">
								<tr>
									<td>${wonlyolist.wo_code}</td>
									<td>${wonlyolist.wo_type}</td>
									<td>${wonlyolist.wo_total}개</td>
									<td>${wonlyolist.wo_cost}원</td>
									
								</tr>
							</c:forEach> 
					
				</table>
			</div>
			<br>
			<br>
			<div class="btn-wrap" align="center">
				<input type="submit" value="점검접수현황" class="editBtn formBtn"
					onclick="showPopup();" style="width: 115px; display: inline;" > 
				<input type="reset"  value="입/출고 내역등록" class="editBtn formBtn" 
					onclick="location.href='woio-list.do'" style="display: inline;"> 
			</div>
			 <i class="fa fa-envelope"></i> 
					 <a href="mailto:aa@gmail.com">발주 메일 </a><br>
		</form>
	</main>
</body>
</html>