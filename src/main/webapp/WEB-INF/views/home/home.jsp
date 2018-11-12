<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<c:url value="/resources/include/js/home/home.js"/>"></script>

<script>
	$(function() {
		$('#lodgType').on("click", "li", function() {
			var temp = $(this).attr("value");
			$('input:hidden[name="lodgmentType"]').val(temp);
		});

		$('#loc').on("click", "li", function() {
			var temp = $(this).attr("value");
			$('input:hidden[name="location"]').val(temp);
		});

	});
</script>

<section class="search-area">
	<div class="search-panel">
		<p class="search-paragraph">
			데일리 콤마와 함께<br> 삶의 <span>휴식</span>을 가져보세요.
		</p>
		<form action="<c:url value="/getMainSearch.do"/>">
			<div class="search-option">
				<div class="option-list">
					<div class="option-item item-option-roomtype">
						<div class="option-title-wrap">
							<span class="option-title">숙소 유형</span>
							<div class="dropdown ml-2">
								<button class="btn btn-secondary btn-lg dropdown-toggle color-gradation"
										type="button" id="dropdownMenu1" data-toggle="dropdown"
										aria-expanded="true">
									<span class="caret">유형 선택</span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu1" id="lodgType">
									<li role="presentation" value="A1">
										<a role="menuitem" tabindex="-1">모텔</a>
									</li>
									<li role="presentation" value="A2">
										<a role="menuitem" tabindex="-1">호텔</a>
									</li>
									<li role="presentation" value="A3">
										<a role="menuitem" tabindex="-1">펜션</a>
									</li>
									<li role="presentation" value="A4">
										<a role="menuitem" tabindex="-1">게스트 하우스</a>
									</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="option-item item-option-area">
						<div class="option-title-wrap">
							<span class="option-title">지역</span>
							<div class="dropdown ml-2">
								<button
									class="btn btn-secondary btn-lg dropdown-toggle color-gradation"
									type="button" id="dropdownMenu2" data-toggle="dropdown"
									aria-expanded="true">
									유형 선택 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu2" id="loc">
									<li role="presentation" value="C1">
										<a role="menuitem" tabindex="-1">서울</a>
									</li>
									<li role="presentation" value="C2">
										<a role="menuitem" tabindex="-1">부산</a>
									</li>
									<li role="presentation" value="C3">
										<a role="menuitem" tabindex="-1">강릉</a>
									</li>
									<li role="presentation" value="C4">
										<a role="menuitem" tabindex="-1">대구</a>
									</li>
									<li role="presentation" value="C5">
										<a role="menuitem" tabindex="-1">제주도</a>
									</li>
								</ul>
							</div>
						</div>
						<i class="left-item-bar"></i> <i class="right-item-bar"></i>
					</div>

					<div class="option-item item-option-calendar">
						<div class="option-title-wrap">
							<span class="option-title f-left">체크인</span>
							<span class="option-title f-right">체크아웃</span>
						</div>

						<div class="option-btn">
							<div class="container">
								<div class="col">
									<div class="input-group date" id="datetimepicker7"
										data-target-input="nearest">
										<input type="text" name="checkin" id="datepicker" autocomplete="off">
										<div class="input-group-append" data-target="#datetimepicker7"
											data-toggle="datetimepicker">
<!-- 											<div class="input-group-text">
												<i class="fa fa-calendar"></i>
											</div> -->
										</div>
									</div>
								</div>

								<div class="col">
									<div class="input-group date  " id="datetimepicker8"
										data-target-input="nearest">
										<input type="text" name="checkout" id="datepicker2" autocomplete="off">
										<div class="input-group-append" data-target="#datetimepicker8"
											data-toggle="datetimepicker">
<!-- 											<div class="input-group-text">
												<i class="fa fa-calendar"></i>
											</div> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<input type="hidden" name="lodgmentType"> 
						<input type="hidden" name="location">	

					</div>
				</div>
				<button type="submit" class="btn btn-search-stay color-gradation">숙소 검색</button>
			</div>
		</form>
	</div>
</section>
<section class="myposition-area">
	<div class="myposition-cnt">
		<i class="fa fa-location-arrow"></i><strong>대구광역시 중구 태평로 18</strong>
	</div>
</section>
<section class="quicklink-area">
	<div class="quicklink-list">
		<a class="quicklink-item"> 모텔 </a> <a class="quicklink-item"> 호텔 </a>
		<a class="quicklink-item"> 펜션 </a> <a class="quicklink-item"> 게스트하우스 </a>
	</div>
</section>





