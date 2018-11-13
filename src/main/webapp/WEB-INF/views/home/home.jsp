<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/include/js/home/home.js"/>"></script>

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
						</div>
						
						<div class="popover-wrapper">
							<div class="popover-container">
								<button type="button" class="option-btn">
									<em>유형 선택</em>
									<i class="fa fa-chevron-down" aria-hidden="true"></i>
								</button>
							</div>
							<div class="popover-content popover-search-option animate-bounce-down" data-popover-content="true">
								<div class="layer-search-option layer-radio-list">
									<div class="radio-list">
										<div class="inp-radio inp-radio-active">
											<input type="radio" title="모텔" name="lodgType" value="A1" id="A1">
											<label for="A1"><a>모텔</a></label>
										</div>
										<div class="inp-radio">
											<input type="radio" title="호텔" name="lodgType" value="A2" id="A2">
											<label for="A2"><a>호텔</a></label>
										</div>
										<div class="inp-radio">
											<input type="radio" title="펜션" name="lodgType" value="A3" id="A3">
											<label for="A3"><a>펜션</a></label>
										</div>
										<div class="inp-radio">
											<input type="radio" title="게스트하우스" name="lodgType" value="A4" id="A4">
											<label for="A4"><a>게스트하우스</a></label>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					
					<div class="option-item item-option-area">
						<div class="option-title-wrap">
							<span class="option-title">지역</span>
						</div>
						
						<div class="popover-wrapper">
							<div class="popover-container">
								<button type="button" class="option-btn">
									<em>지역 선택</em>
									<i class="fa fa-chevron-down" aria-hidden="true"></i>
								</button>
							</div>
							<div class="popover-content popover-search-option animate-bounce-down" data-popover-content="true">
								<div class="layer-search-option layer-area-list">
									<div class="area-list">
										<div class="area-radio area-radio-active">
											<input type="radio" title="서울" name="loc" value="C1" id="C1">
											<label for="C1"><a>서울</a></label>
										</div>
										<div class="area-radio">
											<input type="radio" title="부산" name="loc" value="C2" id="C2">
											<label for="C2"><a>부산</a></label>
										</div>
										<div class="area-radio">
											<input type="radio" title="강릉" name="loc" value="C3" id="C3">
											<label for="C3"><a>강릉</a></label>
										</div>
										<div class="area-radio">
											<input type="radio" title="대구" name="loc" value="C4" id="C4">
											<label for="C4"><a>대구</a></label>
										</div>
										<div class="area-radio">
											<input type="radio" title="제주도" name="loc" value="C5" id="C5">
											<label for="C5"><a>제주도</a></label>
										</div>
									</div>
								</div>
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
									<div class="input-group date" id="datetimepicker8"
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
				<button type="submit" class="btn-search-stay color-gradation">숙소 검색</button>
			</div>
		</form>
	</div>	
</section>

<section class="myposition-area">
	<div class="myposition-cnt">
		<i class="fa fa-location-arrow"></i> <strong>대구광역시 중구 태평로 18</strong>
	</div>
</section>

<section class="quicklink-area">
	<div class="quicklink-list">
		<a class="quicklink-item"> 모텔 </a> <a class="quicklink-item"> 호텔 </a>
		<a class="quicklink-item"> 펜션 </a> <a class="quicklink-item"> 게스트하우스 </a>
	</div>
</section>
