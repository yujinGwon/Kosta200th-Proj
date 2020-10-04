<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/hrSubMenu.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

.paysub {
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


<script>
	function formSubmit() {
		document.getElementById("frm").submit();
	}
</script>

<meta charset="UTF-8">
<style type="text/css">
#tb1 {
   text-align: center;
   width: 1400;
   height:100;
   border: 1;
   line-height: 1.5;
   margin: auto;
}
border
="1"
 
style
="width
:
 
500;"
</style>

<main>

	<h2>월별 사원별 급여정보</h2><br>
	<form action="pay-list.do" method="get"  id="frm">
		<select name="pay_year" id="pay_year" style="width: 100px;">
			<option>==연도==</option>
				<c:forEach items="${ylist}" var="ylist">
					<option value="${ylist.pay_year}">${ylist.pay_year}년도</option>
				</c:forEach>
		</select>&nbsp;&nbsp; <select name="pay_month" style="width: 80px;">
			<option>==월==</option>
				<c:forEach items="${mlist}" var="mlist">
					<option value="${mlist.pay_month}">${mlist.pay_month}월</option>
				</c:forEach>
		</select>&nbsp;&nbsp; <select name="pay_e_no" style="width: 100px;">
			<option>==사번==</option>
				<c:forEach items="${elist}" var="elist">
					<option>${elist.pay_e_no}</option>
				</c:forEach>
		</select>&nbsp;
		<input type="submit" value="조회" class="acTHead-input mLeft">
		<!-- <a class="okBtn" onclick="formSubmit(); return false;">검색</a> -->
<!-- 		<input type="button" value="추가하기" onclick="location.href='pay-insertform.do'"> -->

<div class="table100 ver2 m-b-110">
	<input type="button" value="추가하기" class="button modifyBtn paysub" onclick="location.href='pay-insertform.do'">
	<table data-vertable="ver2">
		
				<tr class="">
					<th class="column100 column1">사번</th>
					<th class="column100 column2">성함</th>
					<th class="column100 column3">해당년도</th>
				</tr>
				<tr class="">
					<td style="text-align: center;">${list.pay_e_no}</td>
					<td style="text-align: center;">${list.pay_e_name}</td>
					<td style="text-align: center;">${list.pay_year} 연도</td>
				</tr>

				<tr class="">
					<th class="column100 column1">부서(팀)명</th>
					<th class="column100 column2">직급</th>
					<th class="column100 column3">해당월</th>
				</tr>
				<tr class="">
					<td style="text-align: center;">${list.pay_e_dname}</td>		
					<td style="text-align: center;">${list.pay_e_position}</td>
					<td style="text-align: center;">${list.pay_month} 월</td>
				</tr>
	</table></div><br><br>
	
<div class="table100 ver2 m-b-110">	
   <table id="tb1" border="1">
      <tr>
         <th rowspan="2" class="column100 column1">근태내역</th>
         <th>출근일수</th>
         <th>근무시간</th>
         <th>특근시간</th>
      </tr>
      <tr class="">
      	
         <td>${list.pay_chul} 일</td>
         <td>${list.pay_work} 시간</td>
         <td>${list.pay_work_t} 시간</td>
      </tr>
      <tr>
         <th rowspan="4" class="column100 column2">지급내역</th>
         <th>기본급</th>
         <th>특근수당</th>
         <th>식대</th>
      </tr>
      <tr class="">
         <td>\ ${list.pay_p} 원</td>
         <td>\ ${list.pay_p_t} 원</td>
         <td>\ ${list.pay_bob} 원</td>
      </tr>
      <tr>
         <th>차량지원비</th>
         <th>만근수당</th>
         <td rowspan="2"></td>
      </tr>
      <tr class="">
         <td>\ ${list.pay_car} 원</td>
         <td>\ ${list.pay_m} 원</td>
      </tr>
      <tr>
         <th rowspan="2" class="column100 column3">공제내역</th>
         <th>세금공제</th>
         <td rowspan="2" colspan="2"></td>
      </tr>
      <tr class="">
      	
         <td><font color="red">\ ${list.pay_tax}</font> 원</td> 
      </tr>
      <tr>
         <th colspan="4" rowspan="2" class="column100 column4">월급합계</th>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
      </tr>
      <tr class="row100 head">
      	<td colspan="4"><font color="blue">\ ${list.pay_total}</font> 원</td>
      </tr>
   </table></div>
    
   </form>
   </main>
</body>
</html>