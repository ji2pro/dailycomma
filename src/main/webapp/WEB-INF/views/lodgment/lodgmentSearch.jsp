<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value="/resources/include/js/lodgment/Search.js"/>"></script>
<!-- Custom Stylesheets -->
<link rel="stylesheet" href="./resources/include/css/jquery-ui.theme.css" />
<link rel="stylesheet" href="./resources/include/css/lodgmentSearch.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<!-- 별모양 링크 -->

<!-- 캘린더 -->
<%-- <script src="<c:url value="/resources/include/js/lodgment/calendar.js"/>"></script>
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
 --%>

<div class="datepicker-container">
	<div class="datepicker-content">
<!-- 		<i class="icon-staylist icon-calendar-on"></i>  -->
		<!-- <input type="text" name="datefilter" value="" style="margin-top: .40rem!important;"/>-->
		<!-- <input type="text" name="daterange" value="" style="margin-top: .40rem!important;"/>-->
		<form action="updateSearch.do" class="form-inline">
			<label class="my-1 mr-2" for="datepicker">체크인</label>
			<input type="text" name="checkin" id="datepicker" autocomplete="off" class="form-control">
			<label class="my-1 mr-2" for="datepicker2">체크아웃</label>
			<input type="text" name="checkout" id="datepicker2" autocomplete="off" class="form-control">
			<button type="submit" class="btn btn-primary">검색</button>
		</form>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col md-3">
			<div class="dropdown ml-2" style="display: inline-block;">
				<button type="button" class="btn btn-defalute btn-lg dropdown-toggle"
					id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					기본순 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" id="lodgType">
					<li role="presentation" value="Daegu">
						<a role="menuitem" tabindex="-1">글자순</a>
					</li>
					<li role="presentation" value="Seoul">
						<a role="menuitem" tabindex="-1">인기순</a>
					</li>
					<li role="presentation" value="Busan">
						<a role="menuitem" tabindex="-1">가격순</a>
					</li>
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
						tabindex="-1">5만원 이하</a></li>
				</ul>
			</div>

			<c:forEach items="${lod}" var="temp">
				<div class="card flex-md-row mb-5 shadow-sm h-md-250">
					<img class="card-img-left" src="resources/images/lodgment/roomTest.jpg" width="300" height="200" alt="Card image cap">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-dark" href="./detailRooms.do/${temp.lodgmentNo}">${temp.company}</a>
						</h3>
						<i class="price-label label-reserve">예약가</i> 
						<span class="score-rap text-warning" data-grade="${temp.avgGrade}">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
						</span> 
						<span>${temp.peopleCnt}</span>

						<p class="card-text mb-auto">
							${search.checkin}
							${search.checkout}
						</p>

					</div>
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
<!-- 		<div class="col sm-1" align="right"> -->
<!-- 			<img src="resources/images/cast/googleMapTest.jpg"> -->
<!-- 		</div> -->
	</div>
</div>