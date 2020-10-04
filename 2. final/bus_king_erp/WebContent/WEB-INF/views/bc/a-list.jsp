<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/baechaSubMenu.jsp"%>
<script>
function formSubmit(){ 
   document.getElementById("frm").submit();
}
</script>
<style>
.allocselect{
	width: 25%;
    float: left;
    margin-left: 2.5%;
    background: transparent;
}
.aSelect {
	width: 120px
}
</style>
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
<main>
	<div class="table100 ver2 m-b-110">
		<form action="a-insert.do" method="post" id="frm">

			<table>

				<tr align="center">
					<th style="width: 18.5%;">차량번호 : <select class="aSelect" name="a_b_no">
							<option>선택</option>
							<c:forEach items="${blist}" var="blist">
								<option>${blist.b_no}</option>
							</c:forEach>
					</select></th>
					<th style="width: 17%;">노선 : <select name="a_r_no">
							<option>선택</option>
							<c:forEach items="${rlist}" var="rlist">
								<option>${rlist.r_no}</option>
							</c:forEach>
					</select></th>
					<th style="width: 29%;">버스기사 : <select class="aSelect" name="a_e_no">
							<option>선택</option>
							<c:forEach items="${elist}" var="elist">
								<option>${elist.e_no}:${elist.e_name}</option>
							</c:forEach>
					</select></th>
					<th style="width: 10.5%;">근무조 : <select name="a_time">
							<option>A조</option>
							<option>B조</option>
					</select></th>
					<th style="width: 12.5%;"></th>
					<th style="width: 12.5%;"><a class="okBtn" onclick="formSubmit(); return false;">배차하기</a></th>

					</form>
				</tr>
			</table>
			<br>

			<table class="allocselect">
				<tr>
					<form action="a-list.do" method="post">
						<td>노선 : <select name="a_r">
							<option>전체</option>
							<c:forEach items="${rlist}" var="rlist">
								<option>${rlist.r_no}</option>
							</c:forEach>
						</select></td>
						<td>근무조 : <select name="time" id="time">
								<option>전체</option>
								<option>A조</option>
								<option>B조</option>
						</select></td>
						<td><input type="submit" value="보기"
							class="button modifyBtn editBtn all"></td>
					</form>
				</tr>
				
			</table>
				<table>
					<tr class="row100 head">
						<th style="width: 18.5%;">차량번호</th>
						<th style="width: 17%;">노선</th>
						<th style="width: 29%;">버스기사</th>
						<th style="width: 10.5%;">근무조</th>
						<th style="width: 12.5%;">수정</th>
						<th style="width: 12.5%;">삭제</th>
					</tr>
					<c:forEach items="${allocationlist}" var="list">
						<tr align="center">
							<td>${list.a_b_no}</td>
							<td>${list.a_r_no}</td>
							<td>${list.a_e_no} : ${list.a_e_name}</td>

							<td>${list.a_time}</td>

							<td><input type="button" value="수정"
								class="button modifyBtn editBtn blue"
								onclick="location.href='a-update.do?a_b_no=${list.a_b_no}&a_r_no=${list.a_r_no}&a_e_no=${list.a_e_no}&a_e_name=${list.a_e_name}'"></td>
							<td><input type="button" value="삭제"
								class="button modifyBtn editBtn red"
								onclick="location.href='a-delete.do?a_b_no=${list.a_b_no}&a_r_no=${list.a_r_no}&a_e_no=${list.a_e_no}'"></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="a-list.do?rno=${rno}&zo=${zo}&pg=1">처음 페이지</a>
				<a class="arrow left" href="a-list.do?rno=${rno}&zo=${zo}&pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="a-list.do?rno=${rno}&zo=${zo}&pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>	
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="a-list.do?rno=${rno}&zo=${zo}&pg=${toPage+1}">>></a>
				<a class="last" href="a-list.do?rno=${rno}&zo=${zo}&pg=${allPage}">끝 페이지</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray">끝 페이지</a>
			</c:if>
	        </li>
	    </ul>
	</div>	
</main>
</body>
</html>