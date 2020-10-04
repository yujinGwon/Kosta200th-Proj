<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/hrSubMenu.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

.commsub {
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

<script>
   function formSubmit2() {
      document.getElementById("frm2").submit();
   }
</script>

<script lang="javascript">
   function showPopup() {
      window.open("comm-insertform.do", "a",
            "width=400, height=300, left=100, top=50");
   }
</script>

<main>
	<br>
   	<h2>부서별 근태 현황</h2><br>
    <div class="acThead">
   <form action="comm-list.do" method="get" id="frm">
         <select name="comm_year_d" id="comm_year_d" style="width: 80px;"> <!-- class="acTHead-select" -->
            <option>=연도=</option>
                <c:forEach items="${ylist}" var="ylist">
                  <option value="${ylist.comm_year}">${ylist.comm_year}년</option>
               </c:forEach>
         </select>&nbsp;&nbsp; <select name="comm_month_d" style="width: 60px;">
            <option>=월=</option>
               <c:forEach items="${mlist}" var="mlist">
                  <option value="${mlist.comm_month}">${mlist.comm_month}월</option>
               </c:forEach>
         </select>&nbsp;&nbsp; <select name="comm_day_d" style="width: 80px;">
            <option>=일자=</option>
               <c:forEach items="${dlist}" var="dlist">
                  <option value="${dlist.comm_day}">${dlist.comm_day}일</option>
               </c:forEach>
         </select>&nbsp;
         <input type="submit" value="조회" class="acTHead-input mLeft"><br><br>
         
        	${comm_year_d}년 ${comm_month_d}월 ${comm_day_d}일
        	 	
<%--          <input type="TEXT" name="comm_year_d" value="${comm_year_d}">
         <input type="TEXT" name="comm_month_d" value="${comm_month_d}">
         <input type="TEXT" name="comm_day_d" value="${comm_day_d}"> --%>
         
        <!--  <a class="button red" onclick="formSubmit(); return false;">검색</a> -->
        
         <input type="hidden" name="comm_year_m" value="${comm_year_m}">
         <input type="hidden" name="comm_month_m" value="${comm_month_m}">
         <input type="hidden" name="comm_e_no_m" value="${comm_e_no_m}">
         </form>
         </div>
         
         <form action="comm-list.do" method="get" id="frm">
         <div class="table100 ver2 m-b-110">
         <input type="button" value="추가하기" class="button modifyBtn commsub" onclick="location.href='comm-insertform.do'">
         <table data-vertable="ver2">
            <thead>
               <tr class="">
                  <th class="column100 column1" data-column="column1">부서</th>
                  <th class="column100 column2" data-column="column2">출근</th>
                  <th class="column100 column3" data-column="column3">결근</th>
                  <th class="column100 column4" data-column="column4">병가</th>
                  <th class="column100 column5" data-column="column5">휴가</th>
                  <th class="column100 column6" data-column="column6">총원</th>
               </tr>
            </thead>

            <tbody>
               <c:forEach items="${comm_list_d}" var="d_list">
                  <tr>
                     <td style="text-align: center;">${d_list.c2_e_dname}</td>
                     <td style="text-align: center;">${d_list.c2_chul} 명</td>
                     <td style="text-align: center;">${d_list.c2_gyul} 명</td>
                     <td style="text-align: center;">${d_list.c2_byung} 명</td>
                     <td style="text-align: center;">${d_list.c2_hyu} 명</td>
                     <td style="text-align: center;">${d_list.c2_chong} 명</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
   </form>
   <br>
   <br>
   <br>

<!-- <input type="button" value="추가하기" onclick="location.href='comm-insertform.do'"> &nbsp;&nbsp; 
   <input type="button" value="팝업창 호출" onclick="showPopup();" /> -->

   <h2>사원별 근태 현황</h2><br>
   <form action="comm-list.do" method="get" id="frm2">
      <select name="comm_year_m" style="width: 80px;">
         <option>=연도=</option>
            <c:forEach items="${ylist}" var="ylist">
               <option value="${ylist.comm_year}">${ylist.comm_year}년</option>
            </c:forEach>
      </select>&nbsp;&nbsp; <select name="comm_month_m" style="width: 60px;">
         <option>=월=</option>
            <c:forEach items="${mlist}" var="mlist">
               <option value="${mlist.comm_month}">${mlist.comm_month}월</option>
            </c:forEach>
      </select>&nbsp;&nbsp; <select name="comm_e_no_m" style="width: 80px;">
         <option>=사번=</option>
            <c:forEach items="${elist}" var="elist">
               <option value="${elist.comm_e_no}">${elist.comm_e_no}번</option>
            </c:forEach>
      </select>&nbsp;<!-- <input type="submit" value="검색"> -->
         <input type="hidden" name="comm_year_d" value="${comm_year_d}">
         <input type="hidden" name="comm_month_d" value="${comm_month_d}">
         <input type="hidden" name="comm_day_d" value="${comm_day_d}">
         <input type="submit" value="조회" class="acTHead-input mLeft">
     <!--  <a class="button blue" onclick="formSubmit2(); return false;">검색</a> -->

      <div class="table100 ver2 m-b-110">
         <table data-vertable="ver2">
            <thead>
               <tr class="">
                  <th class="column100 column1" data-column="column1">사번</th>
                  <th class="column100 column2" data-column="column2">이름</th>
                  <th class="column100 column3" data-column="column3">연도</th>
                  <th class="column100 column4" data-column="column4">월</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${comm_list_m}" var="m_list">
                  <tr class="">
                     <td style="text-align: center;">${m_list.comm_e_no}</td>
                     <td style="text-align: center;">${m_list.comm_e_name}</td>
                     <td style="text-align: center;">${m_list.comm_year} 연도</td>
                     <td style="text-align: center;">${m_list.comm_month} 월</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <table data-vertable="ver2">
            <thead>
               <tr class="">
                  <th class="column100 column1" data-column="column1">출근 일 수</th>
                  <th class="column100 column2" data-column="column2">결근 일 수</th>
                  <th class="column100 column3" data-column="column3">병가 일 수</th>
                  <th class="column100 column4" data-column="column4">휴가 일 수</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${comm_list_m}" var="m_list">
                  <tr class="">
                     <td style="text-align: center;">${m_list.c3_chul} 일</td>
                     <td style="text-align: center;">${m_list.c3_gyul} 일</td>
                     <td style="text-align: center;">${m_list.c3_byung} 일</td>
                     <td style="text-align: center;">${m_list.c3_hyu} 일</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
   </form>
</main>
</body>
</html>