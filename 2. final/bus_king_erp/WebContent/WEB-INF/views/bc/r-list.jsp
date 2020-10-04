<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
	<%@include file="/common/header.jsp" %>
	<%@include file="/common/baechaSubMenu.jsp" %>
	
<style>

.routesub {
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

<script lang="javascript">
	function showPopup(rno) {
		var url = "r-img.do?r_no="+rno
		window.open(url, "a",
			"width=800, height=600, left=100, top=50");
	}
</script>


	<main>
		<div class="table100 ver2 m-b-110">
		<br>
		<input type="button" value="추가하기" class="button modifyBtn routesub" onclick="location.href='r-insertform.do'">
			<table border="1" style="margin-top: 40px;">
				<tr class="row100 head">
					<th>노선번호</th>
					<th>출발지</th>
					<th>도착지</th>
					<th>첫차 시간</th>
					<th>막차 시간</th>
					<th colspan="2">배차 간격</th>
					<th>수정</th>
					<th>삭제</th>
					<th>상세보기</th>
					
				</tr>
				<c:forEach items="${routelist}" var="list">
					<tr align="center">
						<td>${list.r_no}</td>
						<td>${list.r_start}</td>
						<td>${list.r_end}</td>
						
						<td>${list.r_s_time}</td>
						<td>${list.r_e_time}</td>
						<td align="right">${list.r_interval}</td>
						<td align="left">&nbsp;분</td>
	
						<td><input type="button" value="수정" class="button modifyBtn editBtn blue"
							onclick="location.href='r-update.do?r_no=${list.r_no}'"></td>
						<td><input type="button" value="삭제" class="button modifyBtn editBtn red"
							onclick="location.href='r-delete.do?r_no=${list.r_no}'"></td>
						<td class="btn-width">
							<span class="btn-wrap" style="margin-left: 0%">
								<input type="button" value="상세보기" class="button modifyBtn editBtn all" onclick="showPopup('${list.r_no}');">
							</span>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	<div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="r-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" href="r-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="r-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="r-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="r-list.do?pg=${allPage}">끝 페이지</a>
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