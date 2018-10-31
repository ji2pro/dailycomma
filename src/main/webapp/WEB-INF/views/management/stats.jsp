<!-- manageController ststs.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  	 
<script>
	$(function(){ //jQuery 데이터 테이블 가져와서 씀.
		$("#empList").DataTable();
		//$("#empList").DataTable({ajax:{}}); 아작스 사용시
	});
</script>

<title>stats.do</title>

</head>
<body>
<table id="empList">
	<thead>
		<tr>
			<th>방</th>
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
	<div align="center"><h1>2018년 월별 객실이용내역</h1></div>
		<tr><td>Standard</td><td>23건</td><td>21건</td><td>21건</td><td>23건</td><td>18건</td><td>13건</td><td>18건</td><td>12건</td><td>12건</td><td>212건</td><td>12건</td><td>12건</td></tr>
		<tr><td>Deluxe</td><td>25건</td><td>31건</td><td>1건</td><td>12건</td><td>17건</td><td>12건</td><td>10건</td><td>51건</td><td>13건</td><td>13건</td><td>13건</td><td>231건</td></tr>
		<tr><td>Suit</td><td>66건</td><td>23건</td><td>24건</td><td>12건</td><td>54건</td><td>12건</td><td>14건</td><td>2건</td><td>11건</td><td>14건</td><td>12건</td><td>12건</td></tr>
		<tr><td>Superior</td><td>44건</td><td>22건</td><td>33건</td><td>43건</td><td>35건</td><td>77건</td><td>53건</td><td>33건</td><td>22건</td><td>33건</td><td>55건</td><td>77건</td></tr>
	</tbody>
</table>
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





 