<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/accidentSubMenu.jsp" %>

<style type="text/css">
	#chart_button {
		margin: auto;
		margin-left: 2.5%;
		float: left;
		margin-top: 2.5%;
		background: #eee;
	}
	#chart_button:hover {
		color: #eee;
		background: #333;
}
</style>
<main>
<button id="chart_button" type="button" class="button type all btn" onclick="location.href='acc-list.do'" >뒤로</button>
<!-- google charts -->
<div id="chart_div" style="width: 95%; height:350px; margin: auto; margin-top: 5.5%"  ></div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

		// 구글 차트
		google.charts.load('current', {'packages': ['corechart']}); //차트 스타일
		google.charts.setOnLoadCallback(drawChart);

		//차트 그리기 함수
		function drawChart() {
			
			// json 데이터를 데이터 테이블로 변환
			var data = google.visualization.arrayToDataTable(${str})  
		        
			// 옵션
			var options = {
				title: '월별 교통사고 차트',
				vAxis: {maxValue:5, minValue:0}, 
			}
			
			// 차트 그리기
	      	var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

			chart.draw(data, options);
       	}
</script>


</main>
</html>