<!-- manageController ststs.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="<%=request.getContextPath()%>/webjars/jquery/3.3.1/dist/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link href="./resources/include/css/management.css" rel="stylesheet" type="text/css"> 
<script src="//www.google.com/jsapi"></script>

<script>
/* jQuery 테이블 */
	$(function(){ //jQuery 데이터 테이블 가져와서 씀.
		$("#empList").DataTable();
		//$("#empList").DataTable({ajax:{}}); 아작스 사용시
	
	});
	
	
	
	 /* 이달 객실별 예약 건수 및 판매금액 */
	 $(document).ready(function(){
         $('#statsRoomSell').DataTable({
              pageLength: 10,
             bPaginate: true, /* 페이징 처리 할것인가 */
             bLengthChange: true, /* true 하면 리스트 박스 추가 */
             lengthMenu : [ [ 5, 10, 30, -1 ], [ 5, 10, 30, "All" ] ],
             bAutoWidth: true,
             processing: true, /* 값을 가져올때 로딩 processing ui보여줌 */
             ordering: true, /* 항목 정렬 사용 */
             serverSide: false,
             searching: true  

         });
 }); 
	 
	 
	 /* 이달 총 예약건수 및 판매금액 */
	 $(document).ready(function(){
         $('#statsTotalSell').DataTable({
              pageLength: 10,
             bPaginate: true, /* 페이징 처리 할것인가 */
             bLengthChange: true, /* true 하면 리스트 박스 추가 */
             lengthMenu : [ [ 5, 10, 30, -1 ], [ 5, 10, 30, "All" ] ],
             bAutoWidth: true,
             processing: true, /* 값을 가져올때 로딩 processing ui보여줌 */
             ordering: true, /* 항목 정렬 사용 */
             serverSide: false,
             searching: true  

         });
 }); 
	
	

/* 여기서 부터 구글 차트 자바스크립트 부분 */
	
	/* var colors = ['#e0440e', '#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6'] */ /* 개별로 색 정의할 시 변수 지정 */
	var options = { /* 차트옵션 수정부분 */
		title : '월별 판매수익',
		width : "100%"/* 400 */,
		height : 500,
		 colors: ['#e0440e', '#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6'], /*  */
		 fontSize:20,
		 legend : { position: "right", textStyle: {fontSize: 13}},

	
		is3D: true
	};
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});
	
google.setOnLoadCallback(function() {
//차트에 넣을 data를 ajax 요청해서 가져옴
$.ajax({
			url : "./getStatsChart.do", 
			method : "post",
			type : "json",
			success : function(data) {
				//ajax결과를 chart에 맞는 data 형태로 가공
				var chartData = []; //배열 생성
				chartData.push([ '월', '수익'  ])
				for (i = 0; i < data.length; i++) {
					var subarr = [ data[i].CHECKIN + '월',  data[i].PRICE   ];
					chartData.push(subarr);
				}
				
				//차트 그리기
				var chart = new google.visualization.AreaChart(document
						.querySelector('#chart_div')); /* ColumnChart 부분 명칭 변경하면 여러차트 모양 사용가능 ex)BarChart*/
				chart.draw(google.visualization.arrayToDataTable(chartData),
						options);
			}
		});
	});
	//window.onresize 
	
	
/* 년간 월별 객실이용내역 */
	var options = { /* 차트옵션 수정부분 */
		title : '월별 객실예약내역',
		width : "100%"/* 400 */,
		height : 500,
		 colors: ['#e0440e', '#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6'], /*  */
		 fontSize:20,
		 legend : { position: "right", textStyle: {fontSize: 13}},

	
		is3D: true
	};
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});
	
google.setOnLoadCallback(function() {
//차트에 넣을 data를 ajax 요청해서 가져옴
$.ajax({
			url : "./getStatsChart.do", 
			method : "post",
			type : "json",
			success : function(data) {
				//ajax결과를 chart에 맞는 data 형태로 가공
				var chartData = []; //배열 생성
				chartData.push([ '월', '수익'  ])
				for (i = 0; i < data.length; i++) {
					var subarr = [ data[i].CHECKIN + '월',  data[i].PRICE   ];
					chartData.push(subarr);
				}
				
				//차트 그리기
				var chart = new google.visualization.AreaChart(document
						.querySelector('#chart_div')); /* ColumnChart 부분 명칭 변경하면 여러차트 모양 사용가능 ex)BarChart*/
				chart.draw(google.visualization.arrayToDataTable(chartData),
						options);
			}
		});
	});
</script>

<title>stats.do</title>

</head>
<body>

<!--  -->
<div align="center"><h1>2018년 월별 객실이용내역</h1></div>
<table id="empList" class="table table-striped table-bordered table-hover tableAlign wrap ">
	<thead>
		<tr>
			<th>객실</th>
			<th>1월</th>
			<th>2월</th>
			<th>3월</th>
			<th>4월</th>
			<th>5월</th>
			<th>6월</th>
			<th>7월</th>
			<th>8월</th>
			<th>9월</th>
			<th>10월</th>
			<th>11월</th>
			<th>12월</th>
		</tr>
	</thead>
	<tbody align="center">
	<c:forEach items="${statsList}" var="roomlist"> 
		<tr><td>${roomlist.roomName}</td><td>23건</td><td>21건</td><td>21건</td><td>23건</td><td>18건</td><td>13건</td><td>18건</td><td>12건</td><td>12건</td><td>12건</td><td>12건</td><td>12건</td></tr>
	</c:forEach>
	</tbody>
	
</table>



	
<!-- 이달 객실별 예약 건수 및 판매금액 -->
<div align="center"><h1>이달 객실별 예약 건수 및 판매금액</h1></div>
<table id="statsRoomSell" style="font-size: 15px;" class="table table-striped table-bordered table-hover tableAlign wrap " >
	<thead>
		<tr style="background:#ffaabb; text-align:center;">
			<th>객실명</th>
			<th>예약수</th>
			<th>판매금액</th>
		</tr>
	</thead>
	
	<tbody>
		 <c:forEach items="${statsList}" var="roomlist"> 
			<tr>
				<td>${roomlist.roomName}</td>    
				<td>${roomlist.reservationNum}</td>
				<td>${roomlist.totalPrice}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>


<!-- 이달 총 예약건수 및 판매금액 -->
<div align="center"><h1>이달 총 예약건수 및 판매금액</h1></div>
<table id="statsTotalSell" class="table table-striped table-bordered table-hover tableAlign wrap ">
	<thead>
			<tr>
				<th>총 예약건수</th>
				<th>총 판매금액</th>
			</tr>
	</thead>
	
	<tbody align="center">
		<c:forEach items="${totalList}" var="priceTotal">
			<tr>
				<td>${priceTotal.reservationNum}</td>
				<td>${priceTotal.totalPrice}</td> 
			</tr> 
		</c:forEach>
	</tbody>
</table>




<!-- chart_div 차트 부분 -->
<div id="chart_div"></div>

</body>
</html>













<!-- <section class="search-area">
    <div class="search-panel">
        <p class="search-paragraph">
            데일리 콤마와 함께<br>
            삶의 <span>휴식</span>을 가져보세요.
        </p>

        <div class="search-option">
            <div class="option-list">
                <div class="option-item item-option-roomtype">
                    <div class="option-title-wrap">
                        <span class="option-title">숙소 유형</span>
                    </div>
                </div>

                <div class="option-item item-option-area">
                    <div class="option-title-wrap">
                        <span class="option-title">지역</span>
                    </div>
                    <i class="left-item-bar"></i>
                    <i class="right-item-bar"></i>
                </div>

                <div class="option-item item-option-calendar">
                    <div class="option-title-wrap">
                        <span class="option-title f-left">체크인</span>
                        <span class="option-title f-right">체크아웃</span>
                    </div>
                    <div class="option-btn"></div>
                </div>
                
            </div>
				<button type="button" class="btn btn-search-stay color-gradation">숙소 검색</button>
        </div>
    </div>
</section>
<section class="myposition-area">
    <div class="myposition-cnt">
        <i class="fa fa-location-arrow"></i><strong>대구광역시 중구 태평로 18</strong>
    </div>
</section>
<section class="quicklink-area">
    <div class="quicklink-list">
        <a class="quicklink-item">
            모텔
        </a>
        <a class="quicklink-item">
            호텔
        </a>
        <a class="quicklink-item">
            펜션
        </a>
        <a class="quicklink-item">
            게스트하우스
        </a>
    </div>
</section> -->





 