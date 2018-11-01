<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>admin/admin.jsp</title>
</head>
<script>
$(function() {
	$('#adminTabs li a').on('click', function (e) {
		e.preventDefault()
		$(this).tab('show')
	})
})
</script>
<body>
	<div class="container-fluid">
		<div class="row">
			<h2>관리자 페이지</h2>
		</div>

		<!-- 메뉴 탭 -->
		<div class="row">
			<div class="col-md-6">
				<ul class="nav nav-tabs" id="adminTabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="memberTab" href="memberAdmin" aria-controls="memberAdmin" aria-selected="true" data-toggle="tab" role="tab">회원 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="hostTab" href="hostAdmin" aria-controls="hostAdmin" aria-selected="false" data-toggle="tab" role="tab">업주 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="lodgmentTab" href="lodgmentAdmin" aria-controls="lodgmentAdmin" aria-selected="false" data-toggle="tab" role="tab">숙소 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="reservationTab" href="reservationAdmin" aria-controls="reservationAdmin" aria-selected="false" data-toggle="tab" role="tab">예약 내역</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="castTab" href="castAdmin" aria-controls="castAdmin" aria-selected="false" data-toggle="tab" role="tab">캐스트 관리</a>
					</li>
				</ul>
			</div>
			<div class="col-md-6">
				<form class="form-inline d-flex justify-content-end">
					<div class="input-group">
						<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="검색">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button"><i class="fa fa-search"></i></button>
						</div>
					</div>
				</form>
			</div>
		</div>
		
		
		<div class="tab-content">
		
			<!-- 회원 관리 -->
			<div class="tab-pane fade show active" role="tabpanel" id="memberAdmin" aria-labelledby="memberTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">선택</th>
									<th scope="col">이름</th>
									<th scope="col">닉네임</th>
									<th scope="col">이메일</th>
									<th scope="col">보유 포인트</th>
									<th scope="col">가입일</th>
									<th scope="col">관리</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>홍지상</td>
									<td>hong</td>
									<td>hjs@dc.com</td>
									<td>4,500</td>
									<td>2018-10-01</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
			
			<!-- 업주 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="hostAdmin" aria-labelledby="hostTab">
				<div class="row">
					<div class="col-md-12 tab-pane fade" id="">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">선택</th>
									<th scope="col">이름</th>
									<th scope="col">아이디</th>
									<th scope="col">이메일</th>
									<th scope="col">사업자 번호</th>
									<th scope="col">업주 등록일</th>
									<th scope="col">관리</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td class="text-center">정현욱</td>
									<td>wook29</td>
									<td>dcwook@dc.com</td>
									<td>312-56-123456</td>
									<td>2018-10-02</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>손준우</td>
									<td>son28</td>
									<td>proson@dc.com</td>
									<td>124-68-123456</td>
									<td>2018-10-10</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>문준영</td>
									<td>moonjy</td>
									<td>moon@dc.com</td>
									<td>314-52-111111</td>
									<td>2018-10-11</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
			
			<!-- 업체(숙소) 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="lodgmentAdmin" aria-labelledby="lodgmentTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">선택</th>
									<th scope="col">업체명</th>
									<th scope="col">숙소 종류</th>
									<th scope="col">총 객실수</th>
									<th scope="col">객실수</th>
									<th scope="col">가격(1박)</th>
									<th scope="col">최대 인원</th>
									<th scope="col">객실 옵션</th>
									<th scope="col">최대 인원</th>
								</tr>
							</thead>
							<tbody>
								<tr></tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td class="text-center">데일리콤마</td>
									<td>호텔</td>
									<td>40</td>
									<td>312-56-123456</td>
									<td>2018-10-02</td>
									<td>4</td>
									<td>4</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center table-light">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>야놉시다</td>
									<td>모텔</td>
									<td>20</td>
									<td>124-68-123456</td>
									<td>2018-10-10</td>
									<td>6</td>
									<td>6</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>저기요</td>
									<td>게스트하우스</td>
									<td>4</td>
									<td>314-52-111111</td>
									<td>2018-10-11</td>
									<td>12</td>
									<td>12</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			
				<!-- 숙소 관리 경로 표시 -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">숙소 관리</a></li>
							<li class="breadcrumb-item"><a href="#">데일리콤마</a></li>
						</ul>
					</div>
				</div>
				
				<!-- 숙소 관리 - 객실 관리 -->
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">선택</th>
									<th scope="col">객실명</th>
									<th scope="col">객실수</th>
									<th scope="col">가격(1박)</th>
									<th scope="col">최대 인원(객실)</th>
									<th scope="col">가격(1박)</th>
									<th scope="col">최대 인원</th>
									<th scope="col">객실 옵션</th>
									<th scope="col">최대 인원</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td class="text-center">스탠다드</td>
									<td>12</td>
									<td>35,000</td>
									<td>4</td>
									<td>2018-10-02</td>
									<td>4</td>
									<td>4</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input" id="same-address" value="on">
											<label class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>디럭스</td>
									<td>8</td>
									<td>50,000</td>
									<td>4</td>
									<td>2018-10-10</td>
									<td>6</td>
									<td>6</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
				
			<!-- 예약 내역 -->
			<div class="tab-pane fade" role="tabpanel" id="reservationAdmin" aria-labelledby="reservationTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">이름</th>
									<th scope="col">이메일</th>
									<th scope="col">연락처</th>
									<th scope="col">예약 날짜</th>
									<th scope="col">예약 인원</th>
									<th scope="col">예약 금액</th>
									<th scope="col">예약 상태</th>
									<th scope="col">체크인</th>
									<th scope="col">체크아웃</th>
									<th scope="col">일수</th>
									<th scope="col">상태변경일</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<td>정현욱</td>
									<td>wk@dc.com</td>
									<td>010-0000-0000</td>
									<td>2018-10-02</td>
									<td>4</td>
									<td>80,000</td>
									<td>예약완료</td>
									<td>2018-10-11</td>
									<td>2018-10-13</td>
									<td>2박 3일</td>
									<td>2018-10-10</td>
								</tr>
								<tr class="text-center">
									<td>손준우</td>
									<td>son@dc.com</td>
									<td>000-1234-1234</td>
									<td>2018-10-10</td>
									<td>6</td>
									<td>100,000</td>
									<td>입금전</td>
									<td>2018-10-15</td>
									<td>2018-10-18</td>
									<td>3박 4일</td>
									<td>2018-10-09</td>
								</tr>
								<tr class="text-center">
									<td>문준영</td>
									<td>moon@dc.com</td>
									<td>010-2468-2468</td>
									<td>2018-10-11</td>
									<td>2</td>
									<td>40,000</td>
									<td>예약완료</td>
									<td>2018-10-18</td>
									<td>2018-10-19</td>
									<td>1박 2일</td>
									<td>2018-10-12</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
				
			<!-- 캐스트 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="castAdmin" aria-labelledby="castTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-bordered">
							<thead class="thead-inverse">
								<tr class="table-primary text-center">
									<th scope="col">선택</th>
									<th scope="col">업체명</th>
									<th scope="col">숙소 종류</th>
									<th scope="col">객실명</th>
									<th scope="col">객실수</th>
									<th scope="col">가격(1박)</th>
									<th scope="col">최대 인원</th>
									<th scope="col">객실 옵션</th>
									<th scope="col">최대 인원</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td class="text-center">데일리콤마</td>
									<td>호텔</td>
									<td>dcwook@dc.com</td>
									<td>312-56-123456</td>
									<td>2018-10-02</td>
									<td>4</td>
									<td>4</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center table-light">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>야놉시다</td>
									<td>모텔</td>
									<td>proson@dc.com</td>
									<td>124-68-123456</td>
									<td>2018-10-10</td>
									<td>6</td>
									<td>6</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
								<tr class="text-center">
									<th scope="row">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="same-address" value="on"> <label
												class="custom-control-label" for="same-address">&nbsp;</label>
										</div>
									</th>
									<td>저기요</td>
									<td>게스트하우스</td>
									<td>moon@dc.com</td>
									<td>314-52-111111</td>
									<td>2018-10-11</td>
									<td>12</td>
									<td>12</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-primary">수정</a>
											<a href="#" class="btn btn-primary">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row d-flex flex-row">
					<div class="col-md-12 d-flex flex-row justify-content-end">
						<a class="btn btn-outline-primary" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>