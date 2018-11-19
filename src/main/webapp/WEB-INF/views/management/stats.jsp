<!-- manageController ststs.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="<c:url value="/resources/include/css/management.css" />" rel="stylesheet" type="text/css">
<!-- DataTables -->
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="//www.google.com/jsapi"></script>

<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set> 

<script>
$(function() {
	/* jQuery 테이블 */
	$("#empList").DataTable();
	//$("#empList").DataTable({ajax:{}}); 아작스 사용시
	
	/* 이달 객실별 예약 건수 및 판매금액 */
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
	
	/* 이달 총 예약건수 및 판매금액 */
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
 
$(function() {	 
	createDropDown();
	
	$('#btn-div').click(function(){
		var btn = $('.dropdown').eq(0).find('.dropdown-toggle');
		console.log("======btn-div=======" + btn.text());
		callbackDiv(btn.text());
	});
	
	$('#btn-reserve').click(function(){
		var btn = $('.dropdown').eq(1).find('.dropdown-toggle');
		console.log("======btn-reserve=======" + btn.text());
		callbackReserve(btn.text());
	});
});
	

/* 여기서 부터 구글 차트 자바스크립트 부분 */
	
	/* var colors = ['#e0440e', '#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6']  */ /* 개별로 색 정의할 시 변수 지정 */
	var options1 = { /* 차트옵션 수정부분 */
		title : '월별 수익금액', 
		width : "50%"/* 400 */,
		height : 500,
		colors: ['#88bbee', '#e6693e', '#ec8f6e' ,'#f3b49f', '#f6c7b6'],
		fontSize:23,
		legend : { position: "right", textStyle: {fontSize: 13}},
		is3D: true
	};
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});
	
	/* var colors = ['#e0440e', '#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6']  */
	var options2 = { /* 차트옵션 수정부분 */
		title : '월별 객실예약건수',
		width : "50%"/* 400 */,
		height : 500, 
		colors: ['#ff99aa','#e6693e','#ec8f6e' ,'#f3b49f', '#f6c7b6' ],
		fontSize:23,
		legend : { position: "right", textStyle: {fontSize: 13}},
		is3D: true
	};
	
google.setOnLoadCallback(function() {
	//차트에 넣을 data를 ajax 요청해서 가져옴
	callbackDiv();

	callbackReserve();
});
	//window.onresize 

function callbackDiv(year) {
	var check = checkException(year);

	if(check == true){
		var date = new Date();
		year = date.getFullYear();	
	}

	$.ajax({
		url : "./getStatsChart.do", 
		data : { year : year },
		method : "post",
		type : "json",
		success : function(data) {
			//ajax결과를 chart에 맞는 data 형태로 가공
			var chartData = []; //배열 생성
			chartData.push([ '월', '수익'  ])
			for (i = 0; i < data.length; i++) {
				var subarr = [ data[i].CHECKIN + '월',  data[i].PRICE /* , 'color:'+ colors[i] */   ];
				chartData.push(subarr); 
			}
			
			//차트 그리기
			var chart = new google.visualization.AreaChart(document
					.querySelector('#chart_div')); /* ColumnChart 부분 명칭 변경하면 여러차트 모양 사용가능 ex)BarChart*/
			chart.draw(google.visualization.arrayToDataTable(chartData), options1);
		}
	});
}
	
function callbackReserve(year){

	var check = checkException(year);
	
	if(check == true){
		var date = new Date();
		year = date.getFullYear();	
	}
	
	$.ajax({
		url : "./getReserveChart.do", 		
		data :  { year : year },		
		method : "post",
		type : "json",
		success : function(data) {
			//ajax결과를 chart에 맞는 data 형태로 가공
			var chartData = []; //배열 생성
			chartData.push([ '월', '예약건수'  ])
			for (i = 0; i < data.length; i++) {
				var subarr = [ data[i].CHECKIN + '월',  data[i].RESERVENUM /* , 'color:'+ colors[i] */   ];
				chartData.push(subarr); 
			}
	
			//차트 그리기
			var chart = new google.visualization.ColumnChart(document
					.querySelector('#chart_reserve')); /* ColumnChart 부분 명칭 변경하면 여러차트 모양 사용가능 ex)BarChart*/
			chart.draw(google.visualization.arrayToDataTable(chartData), options2);
		}
	});	
}

function createDropDown() {
	var date = new Date();
	var year = date.getFullYear();	
	console.log(year);

	for(var i=0; i<2; i++){
		var dropdown = $('.dropdown').eq(i).find('.dropdown-menu');
				
		for(var j=0;j<10;j++){
			var btn = "<button type='button' class='dropdown-item' data-target='"+(year-j)+
						"' onclick='setYearDropdown("+(year-j)+","+i+")'>"+(year-j)+"</button>";
			dropdown.append(btn);
		}			
	}		
}

function setYearDropdown(year, idx){
	var btn = $('.dropdown').eq(idx).find('.dropdown-toggle');
	btn.text(year);
}

function checkException(x){
	if(x == undefined || x==null || x=='') return true;
	return false;	
}
</script>


<div class="container">

<div class="btn-group">
	<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		사장님 통계관리
	</button> 
	<div class="dropdown-menu">
		<a class="dropdown-item" href="<c:url value="/managementList.do"/>">예약자 리스트</a>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="<c:url value="/stats.do"/>">통계관리</a>
	</div>
</div>

<!-- 이달 객실별 예약 건수 및 판매금액 -->
<div align="center" class="titleInterval"><h1>이달 객실별 예약 건수 및 판매금액</h1></div>
<table id="statsRoomSell" class="table table-striped table-bordered table-hover tableAlign tableFontSize" >
	<thead>
		<tr style="background:#ffaabb;">
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
<div align="center" class="titleInterval"><h1>이달 총 예약건수 및 판매금액</h1></div>
<table id="statsTotalSell" class="table table-striped table-bordered table-hover tableAlign tableFontSize">
	<thead>
			<tr style="background:#ffaabb;">
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


<!-- 화면에 뿌릴때 -->

<%-- <c:out value="${sysYear}" /> --%>


<!-- chart_div 차트 부분 -->

		<div class="row chartButtonInterval">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">${sysYear}</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				</div>
			</div>
			<button type="button" class="btn btn-secondary" id="btn-div">검색</button>
		</div>

		<div id="chart_div"></div>

		<div class="row chartButtonInterval">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">${sysYear}</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				</div>

				<button type="button" class="btn btn-secondary" id="btn-reserve">검색</button>
			</div>
		</div>

		<div id="chart_reserve"></div>
</div>
 