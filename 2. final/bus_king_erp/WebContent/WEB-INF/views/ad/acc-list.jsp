<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<main>
   <div class="table100 ver2 m-b-110">
      <table data-vertable="ver2" class="accTable">
         <thead>
            <tr class="row100 head">
               <th class="column100 column1" data-column="column1">접수번호</th>
               <th class="column100 column2" data-column="column2">버스번호</th>
               <th class="column100 column3" data-column="column3">사원번호</th>
               <th class="column100 column4" data-column="column4">면허번호</th>
               <th class="column100 column5" data-column="column5">차량상태</th>
               <th class="column100 column6" data-column="column6">확인</th>
               <th class="column100 column7" data-column="column7">
                  <a class="okBtn" onclick="location.href='acc-insertform.do'">추가</a>&nbsp;&nbsp;
                  <a id="addBtn" class="okBtn" onclick="location.href='acc-chart.do'">월별 교통사고 차트</a>
               </th>
<!--                <th style="color:#333">.</th> -->
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${accidentlist}" var="list">
               <tr>
                  <td class="code">${list.acc_no}</td>
                  <td class="carNum">${list.acc_b_no}</td>
                  <td class="price" style="text-align:center">${list.acc_e_no}</td>
                  <td class="price" style="text-align:center">${list.acc_e_license}</td>
                  <td class="state"><span>${list.acc_state}</span></td>
                  <c:if test="${list.acc_state == '운행가능'}">
                     <td class="result"><span></span></td>
                  </c:if>
                  <c:if test="${list.acc_state == '수리요함'}">
                     <td class="result">
                        <a href="acc-repair.do?acc_no=${list.acc_no}&acc_b_no=${list.acc_b_no}" class="stateBtn">정비접수</a>   
                     </td>
                  </c:if>
                  <c:if test="${list.acc_state == '정비접수'}">
                     <td class="result">
                        <%-- <a href="acc-repair.do?acc_no=${list.acc_no}" class="stateBtn">운행가능</a> --%>
                     </td>
                  </c:if>
                  <td class="btn-width" >
                     <span class="btn-wrap">
                        <input type="button" value="수정"
                           class="button type green"
                           onclick="location.href='acc-updateform.do?acc_no=${list.acc_no}'">
                        <input type="button" value="삭제"
                           class="button type red" onclick="delete_btn(${list.acc_no})">
                        <input type="button" value="더보기"
                           class="button type all btn">
                     </span>
                     <aside>
                        <ul>
                           <li>
                              사고난 시각 :
                              <fmt:parseDate
                                 value='${list.acc_date}' var='trading_day'
                                 pattern='yyyy-MM-dd HH:mm' />
                              <fmt:formatDate
                                 value="${trading_day}" pattern="yyyy/MM/dd HH:mm" />
                           </li>
                           <li>
                              사고난 장소 : ${list.acc_located}
                           </li>
                           <li>
                              사고난 내용 : ${list.acc_breakdown}
                           </li>
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
				<a class="first" href="acc-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" href="acc-list.do?pg=${fromPage-1}"><<</a>	
			</c:if>
			<c:if test="${pg<=block}">
				<a class="first" style="color: gray" href="acc-list.do?pg=1">처음 페이지</a>
				<a class="arrow left" style="color: gray"><<</a>
			</c:if>
        	</li>
        	
	        <li>
        	<c:forEach begin="${fromPage}" end="${toPage}" var="i">
				<c:if test="${i==pg}"><a class="active num">${i}</a></c:if>
				<c:if test="${i!=pg}"><a href="acc-list.do?pg=${i}">${i}</a></c:if>
			</c:forEach>  
	        </li>
	        
	        <li> 
	        <c:if test="${toPage<allPage}">
				<a class="arrow right" href="acc-list.do?pg=${toPage+1}">>></a>
				<a class="last" href="acc-list.do?pg=${allPage}">끝 페이지</a>
			</c:if>
			<c:if test="${toPage>=allPage}">
				<a class="arrow right" style="color: gray">>></a>
				<a class="last" style="color: gray" href="acc-list.do?pg=${allPage}">끝 페이지</a>
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

	$("span:contains('수리요함')").css({color:"#A72734"});
	$("span:contains('정비접수')").css({color:"green"});
	$("span:contains('운행가능')").css({color:"#0062C1"});

	function delete_btn(acc_no) {
		//alert(acc_no);
		if(confirm("삭제하시겠습니까?") == true) {
			location.href="acc-delete.do?acc_no="+acc_no;
		}else{
			return;
		}
	}
</script>
</html>