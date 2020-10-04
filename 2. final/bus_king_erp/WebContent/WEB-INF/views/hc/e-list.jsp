<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/hrSubMenu.jsp" %>
<style>
.inputEmp {
   border: solid .5px #777;
   padding: 4px 10px;
   margin-right: 5px
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
<script>
function formSubmit(){ 
   document.getElementById("frm").submit();
}
</script>
<main>
   <form action="e-list.do" method="post"  id="frm">
         <div class="table100 ver2 m-b-110">
         <table data-vertable="ver2">
            <thead>
<tr>
      <td><input type="button" value="사원등록" onclick="location.href='e-insertform.do'" class="type button blue"></td>
      <td><input type="button" onclick="location.href='e-list.do'" value="전체보기" class="type button all"></td>
      <td><input type="text"  maxlength="6" name="search" placeholder="사원번호 입력"class="inputEmp"></td>
      <td><input type="submit" value="검색" class="type button red" ></td>
      
</tr>
         <tr class="row100 head">
                  <th class="column100 column1" data-column="column1">사원번호</th>
                  <th class="column100 column2" data-column="column2">이름</th>
                  <th class="column100 column3 carNum" data-column="column3">주민등록번호</th>
                  <th class="column100 column4" data-column="column4">부서</th>
                  <th class="column100 column5" data-column="column5">직급</th>
                  <th class="column100 column6" data-column="column6">차량번호</th>
                  <th class="column100 column7" data-column="column7">운전면허</th>
                  <th class="column100 column8" data-column="column8">계약서 작성여부</th>
                  <th class="column100 column9" data-column="column9">운전경력</th>
                  <th class="column100 column10" data-column="column10">남은 휴가일</th>
         </tr>
         </thead>
         <c:forEach items="${employerlist}" var="list">
            <tr>
               <td align="center">${list.e_no}</td>
               <td align="center"><a href="e-updateform.do?e_no=${list.e_no}">${list.e_name}</a></td>
               <td align="center">${list.e_jumin}</td>               
               <td align="center">${list.e_dname}</td>
               <td align="center">${list.e_position}</td>
               <td align="center">${list.e_b_no}</td>
               <td align="center">${list.e_license}</td>
               <td align="center">${list.e_contract}</td>
               <td align="center">${list.e_career}</td>
               <td align="center">${list.e_break}</td>
               
               
               <!-- <td><input type="button" value="DETAILED" class="btn"></td> -->
            </tr>
         </c:forEach>
      </table>
      
      </div>
      </form>
      <div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="e-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" href="e-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="e-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="e-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="e-list.do?pg=${allPage}">끝 페이지</a>
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