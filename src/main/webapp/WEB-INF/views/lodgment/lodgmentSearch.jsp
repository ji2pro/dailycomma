<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<title>Daily Comma</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="<c:url value="/resources/include/js/home/home.js"/>"></script>

<!-- Custom Stylesheets -->
<link rel="stylesheet" type="text/css"
	href="./resources/include/css/lodgmentSearch.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- 별모양 링크 -->

<!-- 캘린더 -->
<script
	src="<c:url value="/resources/include/js/lodgment/calendar.js"/>"></script>



<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script>
	$('document').ready(function() {

	});

	function gradeCal() {
		var length = $('.score-rap').length;

		for (var i = 0; i < length; i++) {
			var grade = $('.score-rap').eq(i).attr('data-grade');
		}

	}
</script>


<script>
	$(function() {
		$("#lodgType li a").click(
				function() {
					$("#dropdownMenu1:first-child").html(
							$(this).text() + ' <span class="caret"></span>');
				});
		$("#loc li a").click(
				function() {
					$("#dropdownMenu2:first-child").html(
							$(this).text() + ' <span class="caret"></span>');
				});
	});
</script>

<script>
	$(document).ready(function() {
		gradeCal();
	});

	function gradeCal() {

		var length = $('.score-rap').length;

		for (var i = 0; i < length; i++) {

			var grade = $('.score-rap').eq(i).attr('data-grade');
			console.log("grade=========" + grade);
			var star = $('.score-rap').eq(i).children("i");

			gradeScope(star, grade);
			star.addClass('starColor');
		}
	}

	function gradeScope(star, grade) {

		if (grade >= 9.5) { //5개
			for (var i = 0; i < 5; i++)
				star.eq(i).attr('class', 'fas fa-star');
		} else if (grade >= 9) { //4.5
			for (var i = 0; i < 4; i++)
				star.eq(i).attr('class', 'fas fa-star');
			star.eq(4).attr('class', 'fas fa-star-half-alt');
		} else if (grade >= 7.5) { //4
			for (var i = 0; i < 4; i++)
				star.eq(i).attr('class', 'fas fa-star');
			star.eq(4).attr('class', 'far fa-star');
		} else if (grade >= 7) { //3.5
			for (var i = 0; i < 3; i++)
				star.eq(i).attr('class', 'fas fa-star');
			star.eq(3).attr('class', 'fas fa-star-half-alt');
			star.eq(4).attr('class', 'far fa-star');
		} else if (grade >= 5.5) { //3
			for (var i = 0; i < 3; i++)
				star.eq(i).attr('class', 'fas fa-star');
			for (var i = 3; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		} else if (grade >= 5) { //2.5
			for (var i = 0; i < 2; i++)
				star.eq(i).attr('class', 'fas fa-star');
			star.eq(2).attr('class', 'fas fa-star-half-alt');
			for (var i = 3; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		} else if (grade >= 3.5) { //2
			for (var i = 0; i < 2; i++)
				star.eq(i).attr('class', 'fas fa-star');
			for (var i = 2; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		} else if (grade >= 3) { //1.5
			star.eq(0).attr('class', 'fas fa-star');
			star.eq(1).attr('class', 'fas fa-star-half-alt');
			for (var i = 2; i < 5; i++)
				star.eq(1).attr('class', 'far fa-star');
		} else if (grade >= 1.5) { //1
			star.eq(0).attr('class', 'fas fa-star');
			for (var i = 1; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		} else if (grade >= 1) { //0.5
			star.eq(0).attr('class', 'fas fa-star-half-alt');
			for (var i = 1; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		} else { //0
			for (var i = 0; i < 5; i++)
				star.eq(i).attr('class', 'far fa-star');
		}

	}
</script>

</head>
<body>
	<div class="container-fluid" id="wrapper">
		<div class="row">
			<div class="datepicker-container">
				<i class="icon-staylist icon-calendar-on"></i> <input type="text"
					name="datefilter" value="" />
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div class="dropdown ml-2" style="display: inline-block;">
					<button class="btn btn-defalute btn-lg dropdown-toggle"
						type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true">
						기본순 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1" id="lodgType">
						<li role="presentation" value="Daegu"><a role="menuitem"
							tabindex="-1">글자순</a></li>
						<li role="presentation" value="Seoul"><a role="menuitem"
							tabindex="-1">인기순</a></li>
						<li role="presentation" value="Busan"><a role="menuitem"
							tabindex="-1">가격순</a></li>
					</ul>
				</div>
				<div class="dropdown ml-2" style="display: inline-block;">
					<button class="btn btn-defalute btn-lg dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-expanded="true">
						가격대 선택 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu2" id="loc">
						<li role="presentation" value="Daegu"><a role="menuitem"
							tabindex="-1">글자순</a></li>
					</ul>
				</div>

				<c:forEach items="${lod}" var="temp">
					<div class="card flex-md-row mb-4 shadow-sm h-md-250">
						<div class="card-body d-flex flex-column align-items-start">
							<h3 class="mb-0">

								<a class="text-dark" href="#">${temp.company}</a>

							</h3>
							<i class="price-label label-reserve">예약가</i> <span
								class="score-rap" data-grade="${temp.avgGrade}"> <i
								class="starColor"></i> <i class="starColor"></i> <i
								class="starColor"></i> <i class="starColor"></i> <i
								class="starColor"></i> <i class='fas fa-star starColor'></i> <i
								class='fas fa-star-half-alt starColor'></i> <i
								class='far fa-star starColor'></i>
							</span> <span>${temp.peopleCnt }</span>


							<p class="card-text mb-auto">This is a wider card with
								supporting text below as a natural lead-in to additional
								content.</p>

						</div>
						<img class="card-img-right"
							src="/dailycomma/lodgment-Image/room.jpg" width="230"
							height="260" alt="Card image cap">
					</div>
				</c:forEach>
			</div>
			<!--             <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                <div class="card-body d-flex flex-column align-items-start">
                    <strong class="d-inline-block mb-2 text-success">Design</strong>
                    <h3 class="mb-0">
                        <a class="text-dark" href="#">Post title</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 11</div>

                    <span class="score-rap"><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score05"></i></span>
                    <p class="card-text mb-auto">This is a wider card with
                        supporting text below as a natural lead-in to additional content.</p>
                    <a href="#">Continue reading</a>
                </div>
                <img class="card-img-right flex-auto d-none d-lg-block"
                     src="//yaimg.yanolja.com/resize/place/v4/2017/08/21/11/640/599a445240a802.32248447.jpg"
                     width="200" height="200" alt="Card image cap">
            </div> -->
			<!--        <span><i class="quadrange maker-motel"></i><em>모텔</em></span><span><i
                        class="quadrange maker-hotel"></i><em>호텔</em></span><span><i
                        class="quadrange maker-pension"></i><em>펜션</em></span><span><i
                        class="quadrange maker-guesthouse"></i><em>게스트하우스</em></span><span><i
                        class="quadrange maker-nopartner"></i><em>비제휴</em></span>-->
			<div class="col">
				<img src="resources/images/cast/googleMapTest.jpg" width="100%"
					height="100%">
			</div>
		</div>
	</div>
</body>

<script>
	$(function() {
		$('input[name="daterange"]').daterangepicker(
				{
					opens : 'left'
				},
				function(start, end, label) {
					console.log("A new date selection was made: "
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD'));
				});
	});
</script>
<script type="text/javascript"></script>
</html>