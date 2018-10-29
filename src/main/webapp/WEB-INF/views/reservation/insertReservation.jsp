<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>insertReservation.jsp</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div role="main" class="col-md-9 mr-sm-auto col-lg-9 px-4">
				<div class="row py-5">
					<div class="col-md-5">
						<img class="img-fluid d-block"
							src="https://static.pingendo.com/cover-moon.svg">
					</div>
					<div class="col-md-7 pl-3">
						<h2 class="font-weight-bold">스탠다드</h2>
						<h5>
							대구 동천동 폭스<br><small class="text-muted">대구광역시 북구 동천동 897-3</small>
						</h5>
						<p>기준 2명 / 최대 2명</p>
					</div>
				</div>
				<hr class="py-3">
				<div class="row mb-4">
					<div class="col-md-12">
						<h4 class="font-weight-bold mb-3">필수 입력 사항</h4>
						<form>
							<div class="form-group row">
								<label for="inputReserveName" class="col-2 col-form-label">예약자명</label>
								<div class="col-10 col-md-4">
									<input type="text" class="form-control" id="inputReserveName"
										placeholder="예약자명을 입력하세요.">
								</div>
								<div class="col-md-5">
									<span>실명을 입력해 주세요.</span>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputReservePhone" class="col-2 col-form-label">휴대전화</label>
								<div class="col-10 col-md-4">
									<input type="text" class="form-control" id="inputReservePhone"
										placeholder="휴대전화 번호를 입력하세요.">
								</div>
								<div class="col-md-5">
									<span>올바른 연락처를 입력해 주세요.</span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<nav class="col-md-3 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<div class="sidebar-top">
						<div class="info-box">
							<div class="dateRangePicker-top row">
								<span class="col-6 mr-auto">체크인</span>
								<span class="col-6 ml-auto">체크아웃</span>
							</div>
							<div class="dateRangePicker row">
								<span class="col-6 mr-auto" id="startDate">2018-10-20</span>
								<span class="col-6 ml-auto" id="EndDate">2018-10-24</span>
							</div>
							<div class="dateRangePicker-bottom row">
								<span class="col-6 mr-auto">이용 기간</span>
								<span class="col-6 ml-auto">4박 5일</span>
							</div>
						</div>
					</div>
					<div class="sidebar-bottom">
						<div class="info-box">
							<div class="point-discount row">
								<span class="col-6 mr-auto">포인트 할인</span>
								<em class="col-6 ml-auto">- 0P</em>
							</div>
							<div class="point-benefit row">
								<span class="col-6 mr-auto">적립 포인트</span>
								<em class="col-6 ml-auto">+ 0P</em>
							</div>
							<div class="txt-tip">
								※ 포인트는 숙박 이용이 완료된 후 적립됩니다.
							</div>
							<div class="total-payment row">
								<span class="col-6 mr-auto">결제 금액</span>
								<span class="col-6 ml-auto">120,000원</span>
							</div>
						</div>
						<button type="button" class="btn-payment">결제하기</button>
					</div>
				</div>
			</nav>
		</div>
	</div>
</body>
</html>