<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="<c:url value="/resources/include/js/reservation/reservation.js"/>"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="<%=request.getContextPath()%>/resources/include/js/reservation/Payment.js" type="text/javascript"></script>

<script>
	countryList = sessionStorage.getItem("myPageCountryList");
	if (countryList == null) {
		countryList = [];
	} else {
		countryList = JSON.parse(countryList);
	}
	if (countryList.length >= 5) {
		countryList.pop();
	}
	
	countryList.unshift({  roomNo : '${reserveInfo.roomNo}', company : '${reserveInfo.company}', roomName : '${reserveInfo.roomName}', roomPrice : '${reserveInfo.roomPrice * search.differ }' });
	sessionStorage.setItem("myPageCountryList", JSON.stringify(countryList));
	console.log(countryList);
</script>


<div class="container">
	<div class="row">
		<div role="main" class="col-md-9 mr-auto" style="min-height:700px; ">
			<div class="row pt-5 pb-3">
				<div class="col-md-5">
					<img class="img-fluid d-block"
						src="https://static.pingendo.com/cover-moon.svg">
				</div>
				<div class="col-md-7 pl-3">
					<h2 class="font-weight-bold">${reserveInfo.roomName}</h2>
					<h5>
						${reserveInfo.company}<br> <small class="text-muted">${reserveInfo.address}</small>
					</h5>
					<p>기준 2명 / 최대 ${reserveInfo.roomCapa}명</p>
				</div>
			</div>

			<hr class="py-2">


			<div class="row mb-4">
				<div class="col-md-12">
					<h4 class="font-weight-bold mb-3">할인</h4>
					<div class="form-group row">
						<label for="inputReserveName" class="col-2 col-form-label">포인트할인</label>
						<!-- <div class="col-10 col-md-4">
								<input type="text" class="form-control" id="inputReserveName" placeholder="예약자명을 입력하세요.">
							</div> -->
						<div class="col-md-10">
							<c:if test="${login eq null }">
								<span><a href="#" onclick="setCookie(30)">로그인</a>하면 적립한 포인트를 사용할 수 있어요.</span>
							</c:if>

							<c:if test="${login ne null }">
								<span> <input type="text" id="point" value="0">&nbsp;&nbsp;
									<button type="button" class="btn btn-secondary" id="pointBtn">포인트적용</button> &nbsp; 사용( <em class="my-point" data-sum="${login.memberPoint}"> <fmt:formatNumber value="${login.memberPoint}" pattern="###,###" />
								</em> 보유)
								</span>

							</c:if>

						</div>
					</div>
				</div>
			</div>

			<hr class="py-2">

			<div class="row mb-4">
				<div class="col-md-12">
					<h4 class="font-weight-bold mb-3">필수 입력 사항</h4>
					
					<div class="form-group row">
						<label for="inputReserveName" class="col-2 col-form-label">예약자명</label>
						<div class="col-10 col-md-4">
							<input type="text" class="form-control" id="inputReserveName" placeholder="예약자명을 입력하세요.">
						</div>
						<div class="col-md-5">
							<span>실명을 입력해 주세요.</span>
						</div>
					</div>
					
					<div class="form-group row">
						<label for="inputReservePhone" class="col-2 col-form-label">휴대전화</label>
						
						<div class="col-10 col-md-4">
							<input type="text" class="form-control" id="inputReservePhone" placeholder="휴대전화 번호를 입력하세요.">
						</div>
						
						<div class="col-md-5">
							<span>올바른 연락처를 입력해 주세요.</span>
						</div>
					</div>
				</div>
			</div>

		</div>
		<nav class="col-md-3 d-none d-md-block bg-light sidebar" style="height:500px;">
			<div class="sidebar-sticky">
				<div class="sidebar-top">
					<div class="info-box">
						<div class="dateRangePicker-top row">
							<span class="col-6 mr-auto">체크인</span> <span class="col-6 ml-auto">체크아웃</span>
						</div>
						
						<div class="dateRangePicker row">
							<span class="col-6 mr-auto" id="startDate">${search.checkin }</span>
							<span class="col-6 ml-auto" id="EndDate">${search.checkout }</span>
						</div>
						
						<div class="dateRangePicker-bottom row">
							<span class="col-6 mr-auto">이용 기간</span> <span class="col-6 ml-auto">${search.differ }박 ${search.differ + 1 }일</span>
						</div>
					</div>
				</div>
				<div class="sidebar-bottom">
					<div class="info-box">
						<div class="point-discount row">
							<span class="col-6 mr-auto">포인트 할인</span> 
							<em class="col-6 ml-auto" id="discount-point"> <i> 0</i>P</em>
						</div>
						
						<div class="point-benefit row">
							<span class="col-6 mr-auto">적립 포인트</span> 
							<span> <em class="col-6 ml-auto" id="saving-point"> 
							<i> 
							<fmt:formatNumber value="${reserveInfo.roomPrice * search.differ * 0.005}" pattern="###,###" />
							</i> P
							</em>
							</span>
						</div>
						
						<div class="txt-tip">※ 포인트는 숙박 이용이 완료된 후 적립됩니다.</div>
						<div class="total-payment row">
							<span class="col-6 mr-auto">결제 금액</span> 
							<span class="col-6 ml-auto" id="payment-sum"> <i data-sum="${reserveInfo.roomPrice * search.differ}"> <fmt:formatNumber value="${reserveInfo.roomPrice * search.differ }" pattern="###,###" />원
							</i>
							</span>
						</div>
					</div>
					<form action=<c:url value="/insertReservation"/>>
						<input type="hidden" name="lodgmentNo" value="${reserveInfo.lodgmentNo}">
						<input type="hidden" name="memberNo" value="${login.memberNo}">
						<input type="hidden" name="roomNo" value="${reserveInfo.roomNo}">
						<input type="hidden" name="reservePrice" value="${reserveInfo.roomPrice * search.differ }">	<!-- 결제금액 -->
						<input type="hidden" name="reservePeople" value="1">
						<input type="hidden" name="checkin" value="${search.checkin}">
						<input type="hidden" name="checkout" value="${search.checkout}">
						<input type="hidden" name="reservePoints" value="${reserveInfo.roomPrice * search.differ * 0.005}">	<!-- 적립포인트 -->
						<input type="hidden" name="deductionPoint" value="0">	
						<button type="button" class="btn-payment">결제하기</button>
					</form>
				</div>
			</div>
		</nav>

	</div>
</div>
