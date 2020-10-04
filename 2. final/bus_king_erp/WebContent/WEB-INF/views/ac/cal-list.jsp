<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accountSubMenu.jsp" %>
<style type="text/css">
	.page{
	  text-align: center;
	  width: 100%;}
	
	.pagination {
	  list-style: none;
	  display: inline-block;
	  padding: 0;
	  margin-top: 20px;}
	
	.pagination li {
	  display: inline;
	  text-align: center;}
	
	/* 숫자들에 대한 스타일 지정 */
	.pagination a {
	  float: left;
	  display: block;
	  font-size: 14px;
	  text-decoration: none;
	  padding: 5px 12px;
	  color: #96a0ad;
	  line-height: 1.5;}
	
	.first{
	  margin-right: 15px;
	 }
	
	.last{
	  margin-left: 15px;
		width: auto  
  	}
	
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
	    /* width: 20px;
	    height: 20px;
	    line-height: 20px; */
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

	$("span.number").number( true, 2 );


	
	function formSubmit(){ 
		document.getElementById("frm").submit();
	}
</script>
<main> 
	<form action="cal-insertform.do" method="post" id="frm">
		<div class="table100 ver2 m-b-110">
			<table data-vertable="ver2" id=="number_table">
				<thead>
					<tr class="row100 head">
						<th class="column100 column1" data-column="column1">정산코드</th>
						<th class="column100 column2" data-column="column2">정산날짜</th>
						<th class="column100 column3 carNum" data-column="column3">차량번호</th>
						<th class="column100 column4" data-column="column4">카드매출합계</th>
						<th class="column100 column5" data-column="column5">현금매출합계</th>
						<th class="column100 column6" data-column="column6">일별매출합계</th>
						<th class="column100 column7" data-column="column7">설명</th>
						<th class="column100 column8" data-column="column8">비고</th>
						<th colspan="2" class="column100 column9" data-column="column9">
							<!-- <input	type="button" value="추가" class="addBtn"
							onclick="location.href='cal-insertform.do'"> -->
							<a class="okBtn" href="cal-insertform.do" 
							>추가</a>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${callist}" var="list">
						<tr>
							<td class="code">${list.cal_code}</td>
							<td class="date"><fmt:parseDate value='${list.cal_date}'
								var='trading_day' pattern='yyyy-mm-dd' />
							<fmt:formatDate value="${trading_day}"
								pattern="yyyy-mm-dd" /></td>
							<td class="carNum">${list.cal_b_no}</td>
							
							<td class="price" id="numbers">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.cal_hap_c}" />
							</td>
							<td class="price">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.cal_hap_m}" />
							</td>
							<td class="price">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.cal_total}" />
							</td>
							<td class="note" style="text-align: center">${list.cal_nametag}</td>
							<td class="bigo">${list.cal_bigo}</td>
							<td class="last">
								<input type="button" value="수정" class="button modifyBtn editBtn"
								onclick="location.href='cal-update.do?cal_code=${list.cal_code}'">
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form>
	
	<div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="cal-list.do?pg=1">처음</a>
				<a class="arrow left" href="cal-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="cal-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="cal-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="cal-list.do?pg=${allPage}">끝</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray">끝</a>
			</c:if>
	        </li>
	    </ul>
	</div>	

	</main>
	
</body>
</html>