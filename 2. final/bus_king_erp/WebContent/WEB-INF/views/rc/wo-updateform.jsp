<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/repairSubMenu.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script> 
function formSubmit(){ 
	document.getElementById("frm").submit();
}
</script>
<style type="text/css">
#ma{
text-align: center;
width: 350;
line-height:1.5;
}
</style>
<head>
<meta charset="UTF-8">
<title>자재 리스트</title>
</head>
<body>
	<main>
	  <form action="wo-update.do" method="post" id="frm">
	  <div class="table100 ver2 m-b-110">
	  <table data-vertable="ver2" id=ma>
					<tr class="row100 head">
						<th class="column100 column1" data-column="column1">코드값</th>
						<th class="column100 column2" data-column="column2">종류</th>
						<th class="column100 column3" data-column="column3">총 수량</th>
						<th class="column100 column4" data-column="column4">개당 가격</th>

						<!-- 				<th>코드값</th>
				<th>종류</th>
				<th>총 수량</th>
				<th>개당 가격</th></tr> -->
					<tr>
				<td width="100" style="text-align: center;"><input type="text" name="wo_code"  readonly="readonly" value="${dto.wo_code}"></td>
				<td style="text-align: center;"style="text-align: center;"><input type="text" name="wo_type" value="${dto.wo_type}"  readonly="readonly"></td>
				<td style="text-align: center;"><input type="number" name="wo_total" id="wo_total" value="${dto.wo_total }"></td>
				<td style="text-align: center;"><input type="text" name="wo_cost" value="${dto.wo_cost}"  readonly="readonly"></td>
				<td style="text-align: center;"><input type="submit" value="수정" ></td>
			</tr>
			
			</thead>
		</table></div>
		</form>
	</main>
</body>
</html>