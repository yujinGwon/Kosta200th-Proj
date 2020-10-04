<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accountSubMenu.jsp" %>
<style type="text/css">
	.form {
		width: 80%;
		margin: 5% 10%
	}
	.form-con {
		width: 100%;
		margin-top: 50px
	}
	.form-con .btn-wrap {
	    position: relative;
		left: 50%;
		margin-left: -100px
	}
	.left-side {
		float: left;
		margin-left: 80px;
	}
	.right-side {
		position: relative;
		float: right;
		margin-right: 80px;
	}
	.form-con textarea {
		height: 150px
	}
	.form-con .btn-wrap {
		width: 100%;
		position: relative;
		left: 0;
		margin-left: 0;
		bottom: 0;
		background: green
	}
	.form-con .formBtn {
		position: absolute;
		margin-left: 0;
		margin-top: 5px;
		width: 280px;
		left: 0;
		box-shadow: 0px 0px 10px 0px #60ad5e;
	}
	.form-con .add {
		margin: 22px 0;
		letter-spacing: 1.3px
	}
</style>
<main>
<form action="cal-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center">정산등록</legend>
	<div class="form-con">
		<ul class="left-side">
			<li>
				<span>*정산날짜</span>
				<input type="date" name="cal_date" id="cal_date" placeholder="정산날짜" class="resized-input">
			</li>
			<li>
				<span>*차량번호</span>
				<select name="cal_b_no" id="cal_b_no" style="background-position: 95% 50%; width: 280px; display: block;">
					<c:forEach items="${blist}" var="blist">
						<option>${blist.b_no}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<span>*카드매출합계</span>
				<input type="text" name="cal_hap_c" id="cal_hap_c"placeholder="카드매출합계" class="resized-input">
			</li>
			<li>
				<span>*현금매출합계</span>
				<input type="text" name="cal_hap_m" id="cal_hap_m"placeholder="현금매출합계" class="resized-input">
			</li>
			<li>
				<span>*일별매출합계</span>
				<input type="text" name="cal_total" id="cal_total"placeholder="일별매출합계" class="resized-input">
			</li>
		</ul>
		<ul class="right-side">
			<li>
				<span>*설명
					<textarea rows="11" cols="30" name="cal_nametag" id="cal_nametag"placeholder="설명"></textarea>
				</span>
			</li>
			<li>
				<span>비고</span>
				<input type="text" name="cal_bigo" id="cal_bigo"placeholder="비고" class="resized-input">
			</li>
			<li>
				<span style="color: rgb(219, 225, 226)">hidden</span>
				<input type="submit" value="추가" class="editBtn formBtn add">
			</li>
		</ul>
	
		<!-- <div class="btn-wrap">
		</div> -->
	
	</div>
</fieldset>	
</form>
</main>	

</body>
</html>