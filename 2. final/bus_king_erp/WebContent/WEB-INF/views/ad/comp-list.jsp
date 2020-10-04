<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>	
<main>
	<div class="table100 ver2 m-b-110">
		<table data-vertable="ver2">
			<thead>
				<tr class="row100 head">
					<th class="column100 column1" data-column="column1">번호</th>
					<th class="column100 column2" data-column="column2">제목</th>
					<th class="column100 column3" data-column="column3" style="width: 15%">분류</th>
					<th class="column100 column4" data-column="column4" style="width: 10%">작성날짜</th>
					<th class="column100 column5" data-column="column5" style="width: 10%">비고</th>
					<th>
						<a class="okBtn" onclick="location.href='comp-insertform.do'">추가</a>
					</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${complaintlist}" var="list">
				<tr>
					<td class="code">${list.c_no}</td>
					<td class="centre">${list.c_title}</td>
					<td class="centre">${list.c_type}</td>
					<td class="date">
						<fmt:parseDate value='${list.c_date}' var='trading_day' pattern='yyyy-mm-dd' /> 
						<fmt:formatDate value="${trading_day}" pattern="yyyy/mm/dd" />
					</td>
					<td>
						<!-- 비고 -->
					</td>
					<td class="btn-width">
						 <span class="btn-wrap">
						<input type="button" value="수정" class="button type green" onclick="location.href='comp-updateform.do?c_no=${list.c_no}'">
						<input type="button" value="삭제" class="button type red" onclick="delete_btn(${list.c_no})"> 
						<input type="button" value="더보기" class="button type all btn" >
					</span>
						<aside>
							<ul>
								<li>민원내용 : ${list.c_content}</li>
								<li>버스번호 : ${list.c_b_no}</li>
								<li>직원사번 : ${list.c_e_no}</li>
								<li>직원이름 : ${list.c_e_name}</li>
							</ul>
						</aside>
					</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
<div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="comp-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" href="comp-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="comp-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="comp-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="comp-list.do?pg=${allPage}">끝 페이지</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray">끝 페이지</a>
			</c:if>
	        </li>
	    </ul>
	</div>	
</main>

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
<script type="text/javascript"> 

function delete_btn(c_no) {
	//alert(c_no);
	if(confirm("삭제하시겠습니까?") == true) {
		location.href="comp-delete.do?c_no="+c_no;
	}else{
		return;
	}
}
</script>
	