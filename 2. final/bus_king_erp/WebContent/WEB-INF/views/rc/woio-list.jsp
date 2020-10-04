<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/repairSubMenu.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</style>
<script> 
function bnt1(wo2_no) {
	//alert(c_no);
	if (confirm("삭제하시겠습니까?") == true) {
		location.href="wo2-delete.do?wo2_no="+wo2_no;
	} else {
		return;
	}
}
</script>
<style type="text/css">
#ma {
border:1px;
text-align: center;
margin-right: auto;
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
 	 <!-- <script language="javascript"> -->
	 <form action="" method="post" >
			<div class="table100 ver2 m-b-110">
			<table data-vertable="ver2" id=ma>
				<tr class="row100 head">
							<th class="column100 column1" data-column="column1">No</th>
							<th class="column100 column2" data-column="column2">입/출고</th>
							<th class="column100 column3" data-column="column3">버스번호</th>
							<th class="column100 column4" data-column="column4">종류</th>
							<th class="column100 column5" data-column="column5">수량</th>
							<th class="column100 column6" data-column="column6">입/출고 날짜</th>
							<th class="column100 column7" data-column="column7"></th>
						</tr>
			<c:forEach items="${wo2}" var="wo2">
			<tr>
				<td>${wo2.wo2_no}</td>
				<td>${wo2.wo2_iptype}</td>
				<td>${wo2.wo2_b_no}</td>
				<td>${wo2.wo2_type}</td>
				<td>${wo2.wo2_number} 개</td>
			<td><fmt:parseDate value='${wo2.wo2_date}' var='wo2_date' pattern='yyyy-mm-dd'/>
             <fmt:formatDate value="${wo2_date}" pattern="yyyy.mm.dd"/></td>
             		<td>
					<input type="button" value="삭제" class="button type red"
					onclick="bnt1(${wo2.wo2_no})"></td>
				<!-- <input type="submit" value="수정"></td> -->
				<!-- <td><input type="button" value="수정" name="button" onclick="myfun()"></td> -->
				</tr>
			</c:forEach>	
		</table></div><br><br>
		<div class="btn-wrap" style="margin-bottom: 50px;  margin-left: 100px;" align="center">
				<input type="button" value="입고/출고 입력" class="editBtn formBtn" onclick="location.href='woio-insertform.do'" style="display: inline;">
				<input type="button"  value="수량목록" class="editBtn formBtn" onclick="location.href='wo-list.do'" style="width: 102px; display: inline;">
			</div>
			
		</form>
<div class="page" align="center">
			<ul class="pagination modal">
				<li><c:if test="${pg>block}">
						<a class="first" href="woio-list.do?pg=1">처음 페이지</a>
						<a class="arrow left" href="woio-list.do?pg=${fromPage-1}"><<</a>
					</c:if> <c:if test="${pg<=block}">
						<a class="first" style="color: gray">처음 페이지</a>
						<a class="arrow left" style="color: gray"><<</a>
					</c:if></li>

				<li><c:forEach begin="${fromPage}" end="${toPage}" var="i">
						<c:if test="${i==pg}">
							<a class="active num">${i}</a>
						</c:if>
						<c:if test="${i!=pg}">
							<a href="woio-list.do?pg=${i}">${i}</a>
						</c:if>
					</c:forEach></li>

				<li><c:if test="${toPage<allPage}">
						<a class="arrow right" href="woio-list.do?pg=${toPage+1}">>></a>
						<a class="last" href="woio-list.do?pg=${allPage}">끝 페이지</a>
					</c:if> <c:if test="${toPage>=allPage}">
						<a class="arrow right" style="color: gray">>></a>
						<a class="last" style="color: gray">끝 페이지</a>
					</c:if></li>
			</ul>
		</div>
</main>
</body>
</html>