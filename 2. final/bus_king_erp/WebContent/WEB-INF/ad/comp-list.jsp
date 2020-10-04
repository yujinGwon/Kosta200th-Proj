<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@include file="/common/header.jsp" %>
	
	<main>
		<table border='1'>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>분류</th>
				<th>작성날짜</th>
				<td><input type="button" value="ADD" onclick="location.href='comp-insertform.do'"></td>
			</tr>
			<c:forEach items="${complaintlist}" var="list">
				<tr>
					<td>${list.c_no}</td>
					<td>${list.c_title}</td>
					<td>${list.c_type}</td>
					<td>
						<fmt:parseDate value='${list.c_date}' var='trading_day' pattern='yyyy-mm-dd'/>
						<fmt:formatDate value="${trading_day}" pattern="yyyy.mm.dd"/>
					</td>
					<td>
						<input type="button" value="EDIT" onclick="location.href='comp-updateform.do?c_no=${list.c_no}'">
						<input type="button" value="DELETE" onclick="location.href='comp-delete.do?c_no=${list.c_no}'">
						<input type="button" value="DETAILED" class="btn">
					</td>
				</tr>
				<tr>
					<td colspan="6"><aside>
						<ul>
							<li>민원 내용 : ${list.c_content}</li>
							<li>버스번호 : ${list.c_b_no}</li>
							<li>기사 사번 : ${list.c_e_no}</li>
							<li>기사 이름 : ${list.c_e_name}</li>
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
			[<a href="comp-list.do?pg=1">◀◀</a>]
			[<a href="comp-list.do?pg=${fromPage-1}">◀</a>]		
		</c:if> <c:if test="${pg<=block}">
					<!-- 5<=10 :true / 15<=10:false -->
			[<span style="color: gray">◀◀</span>]	
			[<span style="color: gray">◀</span>]
		</c:if> <!-- 블록 범위 찍기 --> <c:forEach begin="${fromPage}" end="${toPage}"
					var="i">
					<c:if test="${i==pg}">[${i}]</c:if>
					<c:if test="${i!=pg}">
				[<a href="comp-list.do?pg=${i}">${i}</a>]
			</c:if>
				</c:forEach> <!-- 다음, 이후 --> <c:if test="${toPage<allPage}">
					<!-- 20<21 : true -->
				[<a href="comp-list.do?pg=${toPage+1}">▶</a>]
				[<a href="comp-list.do?pg=${allPage}">▶▶</a>]
		
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