<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/baechaSubMenu.jsp" %>

<html>
<head>
<!-- 30초후 페이지 새로고침 -->
<meta http-equiv="refresh" content="30, ${pageContext.request.contextPath}/bc/bri.do">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <style type="text/css">
  </style>
</head>

<style>
.routeimg{
	background-image: url('../resources/img/nosun.png');
	background-size: 1000px 400px;
	padding: 10px;
	margin-left: 10%;
	margin-right: 10%;
	margin-top: 5%;
	position: inherit;
	width: 1000px;
	height: 400px;
}
.nosun{
	background: transparent;
	border: 1;
	width: 600px;
    height: 365px;
    margin-top: -31px;
    margin-left: 182px;
}

td{
	width: 120px;
}
</style>

<body>
 <main>
<div class="routeimg">
	<table class="nosun">
				<tr align="center">
					<td id="st1">&nbsp;&nbsp;</td>
					<td id="st2">&nbsp;&nbsp;</td>
					<td id="st3">&nbsp;&nbsp;</td>
					<td id="st4">&nbsp;</td>
					<td id="st5">&nbsp;</td>
				</tr>
				<tr align="center">
					<td id="st10">&nbsp;</td>
					<td id="st9">&nbsp;</td>
					<td id="st8">&nbsp;</td>
					<td id="st7">&nbsp;</td>
					<td id="st6">&nbsp;</td>
				</tr>
				<tr align="center">
					<td id="st11">&nbsp;</td>
					<td id="st12">&nbsp;</td>
					<td id="st13">&nbsp;</td>
					<td id="st14">&nbsp;</td>
					<td id="st15">&nbsp;</td>
				</tr>
			</table>
 </div>

<script type="text/javascript">

		let bri = ${bri};

		for(var i = 0; i < bri.length; i++){
			var st = '#st' + bri[i][2];
			var tag = '<span style="background-color:#FFF">' + bri[i][0] + '<br>빈자리 : ' + bri[i][1] + "</span>";
			$(st).html(tag);
		}
	
	
</script>

</main>
</body>
</html>