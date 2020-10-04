<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@include file="/common/header.jsp" %>
	
	<main>
		<table border='1'>
			<tr>
				<th>범칙금코드</th>
				<th>버스번호</th>
				<th>직원 사원번호</th>
				<th>면허번호</th>
				<th>금액</th>
				<th>납부상태</th>
				<th>위반일시</th>
				<th>결제여부</th>
				<td><input type="button" value="ADD" onclick="location.href='p-insertform.do'"></td>
			</tr>
			<c:forEach items="${penaltylist}" var="list">
				<tr>
					<td>${list.p_code}</td>
					<td>${list.p_b_no}</td>
					<td>${list.p_e_no}</td>
					<td>${list.p_e_licence}</td>
					<td>${list.p_cost}</td>
					<td>${list.p_payment}</td>
					<td>
						<fmt:parseDate value='${list.p_date}' var='trading_day' pattern='yyyy-mm-dd'/>
						<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/>
					</td>
					<td><input type='button' onclick="location.href='p-update.do?p_code=${list.p_code}'" value='납부'/></td>
					<td>
						<input type="button" value="EDIT" onclick="location.href='p-updateform.do?p_code=${list.p_code}'">
						<input type="button" value="DELETE" onclick="location.href='p-delete.do?p_code=${list.p_code}'">
						<input type="button" value="DETAILED" class="btn">
					</td>
				</tr>
				<tr>
					<td colspan="6"><aside>
						<ul>
							<li>위반 장소 : ${list.p_located}</li>
							<li>담당 경찰서 : ${list.p_police}</li>
							<li>내용 : ${list.p_history}</li>
							<li>비고 : ${list.p_bigo}</li>
						</ul>
					</aside>
					</td>
				</tr>
			</c:forEach>
		</table>
		<table width="600">
		<tr>
			<td align="center">
				<!-- 처음 이전 링크 --> <c:if test="${pg>block}">
					<!-- 5>10 : false / 15>10 : true -->
			[<a href="p-list.do?pg=1">◀◀</a>]
			[<a href="p-list.do?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="p-list.do?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="p-list.do?pg=${toPage+1}">▶</a>]
				[<a href="p-list.do?pg=${allPage}">▶▶</a>]
		
		</c:if> <c:if test="${toPage>=allPage}">
					<!-- 21>=21 :true -->
				[<span style="color: gray">▶</span>]
				[<span style="color: gray">▶▶</span>]
		
		</c:if>

			</td>
		</tr>
	</table>
	</main>
</body>
</html>