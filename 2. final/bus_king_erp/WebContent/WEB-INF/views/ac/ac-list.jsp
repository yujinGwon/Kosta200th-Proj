<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
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
	  margin-right: 15px;}
	
	.last{
	  margin-left: 15px;
	  width: auto}
	
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
	   /*  width: 20px;
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
function formSubmit(){ 
   document.getElementById("frm").submit();
}
</script>

<main>

   <div class="acTHead">
      <input type="hidden" value="${temp }" name="temp">
      <input type="hidden" value="${datetemp }" name="datetemp">
      <form action="ac-list.do" method="post"
         style="margin-left: 8px">
         <input type="hidden" value="매입" name="cnt_state">
         <input type="submit" value="매입" class="button red">
      </form>
      <form action="ac-list.do" method="post">
         <input type="hidden" value="매출" name="cnt_state">
         <input type="submit" value="매출" class="button blue">
      </form>
      <form action="ac-list.do" method="post">
         <input type="hidden" value="${temp }" name="temp">
          <input type="hidden" value="${datetemp }" name="datetemp">
         <select name="month" class="acTHead-select">
            <option>월별조회</option>
            <option>1월</option>
            <option>2월</option>
            <option>3월</option>
            <option>4월</option>
            <option>5월</option>
            <option>6월</option>
            <option>7월</option>
            <option>8월</option>
            <option>9월</option>
            <option>10월</option>
            <option>11월</option>
            <option>12월</option>
         </select>
         <input type="submit" value="조회" class="acTHead-input mLeft">
      </form>
      <form action="ac-list.do" method="post">
         <input type="hidden" value="${temp }" name="temp">
          <input type="hidden" value="${datetemp }" name="datetemp">
         <input type="date" name="day" class="acTHead-input"/>
         <input type="submit" value="일별조회" class="acTHead-input mLeft">
      </form>
   </div>

   <form action="ac-list.do" method="post" id="frm">
      <div class="table100 ver2 m-b-110">
         <table data-vertable="ver2">
            <thead class="acTHead">
               <tr class="row100 head">
                  <th class="column100 column1"
                     data-column="column1">
                     <select name="cnt_code">
                        <option>전체</option>
                        <option>급여</option>
                        <option>정비</option>
                        <option>연료</option>
                        <option>범칙금</option>
                        <option>정산</option>
                     </select>
                  </th>
                  <th class="column100 column2"
                     data-column="column2">
                     내역
                  </th>
                  <th class="column100 column3"
                     data-column="column3">
                     비용
                  </th>
                  <th class="column100 column4"
                     data-column="column4">
                     날짜
                  </th>
                  <th class="column100 column5"
                     data-column="column5">
                     매입∙매출
                  </th>
                  <th class="column100 column6"
                     data-column="column6">
                     비고
                  </th>
                  <th>
                     <a class="okBtn" onclick="formSubmit(); return false;">검색</a>
                  </th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${accountList}" var="list">
                  <tr>
                     <td class="code">${list.ac_code}</td>
                     <td class="centre">${list.ac_name}</td>
                     <td class="price">${list.ac_cost}</td>
                     <td class="date">
                        <fmt:parseDate value='${list.ac_date}'
                           var='trading_day' pattern='yyyy-mm-dd' />
                        <fmt:formatDate value="${trading_day}"
                           pattern="yyyy-mm-dd" />
                     </td>
                     <td class="centre" id="state"><span>${list.ac_state}</span></td>
                     <td class="note">${list.ac_bigo}</td>
                     <td>
                        <input type="button" value="수정" class="editBtn"
                           onclick="location.href='ac-update.do?ac_code=${list.ac_code}'">
                        <!-- <input type="button" value="DETAILED"
                           class="btn"> -->
                     </td>
                  </tr>
               </c:forEach>
               
            </tbody>
         </table>
      </div>
   </form>   
   
   <div class="acUl">
      <div class="acUl-con">
         <ul>
            <li> 일매출 :
               <span>${ dayplus }</span>
            </li>
            <li> 일매입 :
               <span>${ dayminus }</span>
            </li>
            <li> 총금액 :
               <span>${ daysum }</span>
            </li>
         </ul>
         <ul>
            <li> 월매출 :
               <span>${ monthplus }</span>
            </li>
            <li> 월매입 :
               <span>${ monthminus }</span>
            </li>
            <li> 총금액 :
               <span>${ monthsum }</span>
            </li>
         </ul>
      </div>
   </div>

   <div class="page">
     	<ul class="pagination modal">
	        <li> 
        	<c:if test="${pg>block}">
				<a class="first" href="ac-list.do?temp=${temp}&datetemp=${datetemp}&pg=1">처음</a>
				<a class="arrow left" href="ac-list.do?temp=${temp}&datetemp=${datetemp}&pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray">처음</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="ac-list.do?temp=${temp}&datetemp=${datetemp}&pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="ac-list.do?temp=${temp}&datetemp=${datetemp}&pg=${toPage+1}">>></a>
				<a class="last" href="ac-list.do?temp=${temp}&datetemp=${datetemp}&pg=${allPage}">끝</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray">끝</a>
			</c:if>
	        </li>
	    </ul>
	</div>	

</main>
<script type="text/javascript"> 

$("span:contains('매입')").css({color:"#A72734"});
$("span:contains('매출')").css({color:"#0062C1"});

</script>
</body>
</html>