<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/repairSubMenu.jsp"%>
<style>
<style type="text/css">
	.page{
	  text-align: center;  // div 사이즈 영역 안에서의 center
	  width: 50%;}
	
	.pagination {
	  list-style: none;
	  display: inline-block;
	  padding: 0;
	  margin-top: 20px;}
	
	.pagination li {
	  display: inline;
	  text-align: center;}
	
	// 숫자들에 대한 스타일 지정
	.pagination a {
	  float: left;
	  display: block;
	  font-size: 14px;
	  text-decoration: none;
	  padding: 5px 12px;
	  color: #96a0ad;
	  line-height: 1.5;}
	
	.first{
	  margin-right: 15px;}
	
	.last{
	  margin-left: 15px;}
	
	.first:hover, .last:hover, .left:hover, .right:hover{
	  color: #2e9cdf;}
	
	.pagination a.active {
	  cursor: default;
	  color: #ffffff;}
	
	.pagination a:active {
	  outline: none;}
	
	.modal .num {
	 	margin-left: 3px;
	    padding: 5px 11px;
	    width: 20px;
	    height: 20px;
	    line-height: 20px;
	    -moz-border-radius: 100%;
	    -webkit-border-radius: 100%;
	    border-radius: 0%;
  	}
	
	.modal .num:hover {
	  background-color: #2e9cdf;
	  color: #ffffff;}
	
	.modal .num.active, .modal .num:active {
	  background-color: rgba(25, 103, 46, 0.83);
	  cursor: pointer;}
	
	.arrow-left {
	  width: 0;
	  height: 0;
	  border-top: 10px solid transparent;
	  border-bottom: 10px solid transparent;
	  border-right:10px solid blue; }

.bussub {
	float: right;
	margin-right: 2.5%;
	
	/* margin-left: 2.5%; */
    padding-left: 0px;
    padding: 5px 10px;
    font-size: 12px;
    border: solid .5px #60ad5e;
    color: #4c8c4a;
    /* background: transparent; */
    cursor: pointer;
}
</style>
<script type="text/javascript"> 
	function bnt1(f_code) {
		//alert(c_no);
		if (confirm("삭제하시겠습니까?") == true) {
			location.href="f-delete.do?f_code="+f_code;
		} else {
			return;
		}
	}
/* 
	   function delete_btn(acc_no) {
		      //alert(acc_no);
		      if(confirm("삭제하시겠습니까?") == true) {
		         location.href="acc-delete.do?acc_no="+acc_no;
		      }else{
		         return;
		      }
		   } */
</script>
<style type="text/css">
#ma {
	text-align: center;
	width: 350;
	line-height: 1.5;
}
</style>
<meta charset="UTF-8">
<title>차량점검리스트</title>

</head>
<body>
	<main>
		<div class="table100 ver2 m-b-110">
			<br> <input type="button" value="추가하기"
				class="bussub button modifyBtn"
				onclick="location.href='f-insertform.do'"><br>
			<table data-vertable="ver2">
				<tr class="row100 head">
					<th>No</th>
					<th>버스 차량번호</th>
					<th>주유 타입</th>
					<th>주유 날짜</th>
					<th>결제 날짜</th>
					<th>충전 & 주유 량</th>
					<th>충전&주유 비용</th>
					<th>결제내역</th>
					<th>회계내역</th>
					<th>비고(특이사항)</th>
					<th></th>
					<th></th>
				</tr>
				<c:forEach items="${fuel}" var="list">
					<tr align="center">
						<td class="code">${list.f_code}</td>
						<td>${list.f_b_no}</td>
						<td>${list.f_b_energy}</td>
						<td><fmt:parseDate value='${list.f_date}' var='f_date'
								pattern='yyyy-mm-dd' /> <fmt:formatDate value="${f_date}"
								pattern="yyyy.mm.dd" /></td>
						<td><fmt:parseDate value='${list.f_date2}' var='f_date2'
								pattern='yyyy-mm-dd' /> <fmt:formatDate value="${f_date2}"
								pattern="yyyy.mm.dd" /></td>
						<td>${list.f_charge}(L/Kw)</td>
						<td>${list.f_cost}원</td>
						<td>${list.f_payment}</td>
						<td>${list.f_nametag}</td>
						<td>${list.f_bigo}</td>
						
						
						<c:if test="${list.f_payment == '결제전'}">
						<td><input type="button" value="결제" class="type button all"
							onclick="location.href='f-update.do?f_code=${list.f_code}&f_payment=결제완료'">
							<input type="button" value="삭제" class="button type red"
							onclick="bnt1(${list.f_code})"></td>
						</c:if>
						<c:if test="${list.f_payment == '결제완료'}">
						<td><input type="button" value="결제" class="type button all"
							onclick="location.href='f-update.do?f_code=${list.f_code}&f_payment=결제완료'" disabled="disabled">
							<input type="button" value="삭제" class="button type red"
							onclick="bnt1(${list.f_code})"></td>
						</c:if>
						

					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="page" align="center">
			<ul class="pagination modal">
				<li><c:if test="${pg>block}">
						<a class="first" href="f-list.do?pg=1">처음 페이지</a>
						<a class="arrow left" href="f-list.do?pg=${fromPage-1}"><<</a>
					</c:if> <c:if test="${pg<=block}">
						<a class="first" style="color: gray">처음 페이지</a>
						<a class="arrow left" style="color: gray"><<</a>
					</c:if></li>

				<li><c:forEach begin="${fromPage}" end="${toPage}" var="i">
						<c:if test="${i==pg}">
							<a class="active num">${i}</a>
						</c:if>
						<c:if test="${i!=pg}">
							<a href="f-list.do?pg=${i}">${i}</a>
						</c:if>
					</c:forEach></li>

				<li><c:if test="${toPage<allPage}">
						<a class="arrow right" href="f-list.do?pg=${toPage+1}">>></a>
						<a class="last" href="f-list.do?pg=${allPage}">끝 페이지</a>
					</c:if> <c:if test="${toPage>=allPage}">
						<a class="arrow right" style="color: gray">>></a>
						<a class="last" style="color: gray">끝 페이지</a>
					</c:if></li>
			</ul>
		</div>

	</main>
</body>
</html>
