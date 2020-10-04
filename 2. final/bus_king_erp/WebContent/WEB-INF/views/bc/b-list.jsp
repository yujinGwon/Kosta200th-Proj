<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
	<%@include file="/common/header.jsp" %>
	<%@include file="/common/baechaSubMenu.jsp" %>
	
<style>

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
		<br>
		<input type="button" value="추가하기" class="bussub button modifyBtn"
						onclick="location.href='b-insertform.do'">
			<table style="margin-top: 40px;">
				<tr class="row100 head">
					<th>차량번호</th>
					<th>연식</th>
					<th>연료</th>
					<th>구분</th>
					<th colspan="2">사고횟수</th>
					<th>상태</th>
					<th>정비</th>
					<th>수정</th>
					<th>삭제</th>
					<th>상세보기</th>
				</tr>
				<c:forEach items="${buslist}" var="list">
					<tr align="center">
						<td>${list.b_no}</td>
						<td>${list.b_year}년</td>
						<td>${list.b_energy}</td>
						
						<td>${list.b_type}</td>
						<td align="right" width="40">${list.b_acc}</td>
						<td align="left" width="20">&nbsp;회</td>
						<td>${list.b_state}</td>
 
						<c:if test="${list.b_state == '대기중'}">
							<td class="result" width="110">
								<a href="b-repair.do?b_no=${list.b_no}&b_state=${list.b_state}" class="stateBtn" style="margin-left: 0%">정비접수 </a>	
							</td>
						</c:if>
						<c:if test="${list.b_state == '운행중' || list.b_state == '정비접수' || list.b_state == '정비중'}">
							<td class="result" width="110"><span> </span></td>
						</c:if>
						<td><input type="button" value="수정" class="button modifyBtn editBtn blue"
							onclick="location.href='b-update.do?b_no=${list.b_no}'"></td>
						<td><input type="button" value="삭제" class="button modifyBtn editBtn red"
							onclick="location.href='b-delete.do?b_no=${list.b_no}'"></td>
						<td class="btn-width">
							<span  class="btn-wrap" style="margin-left: 0%">
								<input type="button" value="더보기"
									class="button modifyBtn editBtn btn all">
							</span>
							<aside>
								<ul>
									<li>주행거리 : ${list.b_mile}</li>
									<li>운행 시작 날짜 : ${list.b_start}</li>
									<li>최근 정비 날짜 : ${list.b_recent}</li>
								</ul>
							</aside>
						</td>
					</tr>
				</c:forEach>
			</table>
			
		</div>
	<div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="b-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" href="b-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="b-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="b-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="b-list.do?pg=${allPage}">끝 페이지</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray">끝 페이지</a>
			</c:if>
	        </li>
	    </ul>
	</div>
	</main>

<script type="text/javascript"> 

$("input:contains('정비접수')").css({color:"#A72734"});

</script>
</body>
</html>