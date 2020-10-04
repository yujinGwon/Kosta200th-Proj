<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@include file="/common/header.jsp" %>
<%@include file="/common/accountSubMenu.jsp" %>

<style type="text/css">
	input {
		display: inline-block !important;
		margin-right: 0
	}
	.code {
		width: 120px;
	}
	.code, .date {
		padding-left: 10px
	}
	.state {
		width: 50px;
		text-align: center
	}
	
</style>

<body>
	<main>
		<form action="ac-update.do" method="post" style="width:'80%'">
		<div class="table100 ver2 m-b-110">
			<table data-vertable="ver2">
				<thead>
					<tr class="row100 head">
						<th class="column100 column1" data-column="column1">정산코드</th>
						<th class="column100 column2" data-column="column2">내역</th>
						<th class="column100 column4" data-column="column4">비용</th>
						<th class="column100 column5" data-column="column5">날짜</th>
						<th class="column100 column6" data-column="column6">매입∙매출</th>
						<th class="column100 column7" data-column="column7">비고</th>
						<th colspan="2" class="column100 column9" data-column="column9">
						 <!-- <input type="button" value="BACK" onclick="location.href='ac-list.do'"> -->
						 <a class="okBtn" href="ac-list.do">추가</a>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="align:center"><input type="text"  value="${dto.ac_code}" readonly="readonly" 
							name="ac_code" id="ac_code" class="code"></td>
						<td>
							<input type="text" name="ac_name" id="ac_name" value="${dto.ac_name}" class="date"  readonly="readonly">
						</td>
						<td>
							<input type="text" name="ac_cost" id="ac_cost" value="${dto.ac_cost}" class="price" readonly="readonly">
						</td>
						<td>
							<fmt:parseDate value='${dto.ac_date}'
								var='trading_day' pattern='yyyy-mm-dd' />
							<fmt:formatDate value="${trading_day}"
								pattern="yyyy.mm.dd" />
						</td>
						<td class="state">
							<input type="text" name="ac_state" id="ac_state" value="${dto.ac_state}"
							style="text-align: center" readonly="readonly" class="">
						</td>
						<td align="center"><input type="text" name="ac_bigo" id="ac_bigo" value="${dto.ac_bigo}" style="background: rgb(232, 240, 254); padding: 5px 2px"></td>
						<td><input type="submit" value="EDIT" class="button editBtn" style="margin: 0 5px 0 20px">
							<input type="reset" value="CANCLE" onclick="location.href='ac-list.do'" class="button editBtn red">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		</form>
	</main>

</body>
</html>