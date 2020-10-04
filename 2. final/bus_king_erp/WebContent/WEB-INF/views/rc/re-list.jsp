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
<title>차량점검리스트</title>

</head>
<body>
	<main>
		<form action="" method="post" >
			<div class="table100 ver2 m-b-110">
			<br>
				<input type="button" value="추가하기" class="bussub button modifyBtn"
				onclick="location.href='re-insertform.do'"><br>
				<table data-vertable="ver2">
						<tr class="row100 head">
						<th>정비코드</th>
						<th>버스 차량번호</th>
						<th>정비 접수일</th>
						<th>정비 완료일</th>
						<th>정비 내역</th>
						<th>가격</th>
						<th>정비 상태</th>
						<th>비고</th>
						<th></th>
						<th></th>
						<th></th>
						</tr>

						<c:forEach items="${repairlist}" var="repairlist">
							<tr align="center">
								<td>${repairlist.re_code}</td>
								<td width="130px;">${repairlist.re_b_no}번버스</td>
								<td><fmt:parseDate value='${repairlist.re_date}'
										var='re_date' pattern='yyyy-mm-dd' /> <fmt:formatDate
										value="${re_date}" pattern="yyyy.mm.dd" /></td>
								<td><fmt:parseDate value='${repairlist.re_date2}'
										var='re_date2' pattern='yyyy-mm-dd' /> <fmt:formatDate
										value="${re_date2}" pattern="yyyy.mm.dd" /></td>
								<td>${repairlist.re_breakdown}</td>
								<td>${repairlist.re_cost}원</td>
								<td>${repairlist.re_state}</td>
								<td>${repairlist.re_bigo}</td>
								<td class="last" colspan="7" style="background: transparent">
								<c:if test="${repairlist.re_state == '정비접수'}">
								<input type="button"  value="정비완료" class="type button all"
									onclick="location.href='re-ac.do?re_code=${repairlist.re_code}&re_b_no=${repairlist.re_b_no}&re_state=정비완료'" disabled="disabled">
								<input type="button"  value="수정" class="type button blue"
									onclick="location.href='re-updateform.do?re_code=${repairlist.re_code}'">
								<input type="button"  value="삭제" class="type button red"
									onclick="location.href='re-delete.do?re_code=${repairlist.re_code}'"> 
								</c:if>
								<c:if test="${repairlist.re_state == '정비중'}">
								<input type="button"  value="정비완료" class="type button all"
									onclick="location.href='re-ac.do?re_code=${repairlist.re_code}&re_b_no=${repairlist.re_b_no}&re_state=정비완료'">
								<input type="button"  value="수정" class="type button blue"
									onclick="location.href='re-updateform.do?re_code=${repairlist.re_code}'">
								<input type="button"  value="삭제" class="type button red"
									onclick="location.href='re-delete.do?re_code=${repairlist.re_code}'"> 
								</c:if>
								<c:if test="${repairlist.re_state == '정비완료'}">
								<input type="button"  value="정비완료" class="type button all"
									onclick="location.href='re-ac.do?re_code=${repairlist.re_code}&re_b_no=${repairlist.re_b_no}&re_state=정비완료'" disabled="disabled">
								<input type="button"  value="수정" class="type button blue"
									onclick="location.href='re-updateform.do?re_code=${repairlist.re_code}'" disabled="disabled">
								<input type="button"  value="삭제" class="type button red"
									onclick="location.href='re-delete.do?re_code=${repairlist.re_code}'"> 
								</c:if>
								</td>
							</tr>
						</c:forEach>
				</table>
			</div>

		</form>
	<div class="page" align="center">
			<ul class="pagination modal">
				<li><c:if test="${pg>block}">
						<a class="first" href="re-list.do?pg=1">처음 페이지</a>
						<a class="arrow left" href="re-list.do?pg=${fromPage-1}"><<</a>
					</c:if> <c:if test="${pg<=block}">
						<a class="first" style="color: gray">처음 페이지</a>
						<a class="arrow left" style="color: gray"><<</a>
					</c:if></li>

				<li><c:forEach begin="${fromPage}" end="${toPage}" var="i">
						<c:if test="${i==pg}">
							<a class="active num">${i}</a>
						</c:if>
						<c:if test="${i!=pg}">
							<a href="re-list.do?pg=${i}">${i}</a>
						</c:if>
					</c:forEach></li>

				<li><c:if test="${toPage<allPage}">
						<a class="arrow right" href="re-list.do?pg=${toPage+1}">>></a>
						<a class="last" href="re-list.do?pg=${allPage}">끝 페이지</a>
					</c:if> <c:if test="${toPage>=allPage}">
						<a class="arrow right" style="color: gray">>></a>
						<a class="last" style="color: gray">끝 페이지</a>
					</c:if></li>
			</ul>
		</div>
	</main>
</body>
</html>
