<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>admin/admin.jsp</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h2>관리자 페이지</h2>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a href="" class="active nav-link"
						data-toggle="tab" data-target="#tabone">회원 관리</a></li>
					<li class="nav-item"><a class="nav-link" href=""
						data-toggle="tab" data-target="#tabtwo">업주 관리</a></li>
					<li class="nav-item"><a href="" class="nav-link"
						data-toggle="tab" data-target="#tabthree">숙소 관리</a></li>
					<li class="nav-item"><a href="" class="nav-link"
						data-toggle="tab" data-target="#tabthree">예약 내역</a></li>
					<li class="nav-item"><a href="" class="nav-link"
						data-toggle="tab" data-target="#tabthree">캐스트 관리</a></li>
				</ul>
			</div>
			<div class="col-md-6">
				<form class="form-inline d-flex justify-content-end">
					<div class="input-group">
						<input type="text" class="form-control" id="inlineFormInputGroup"
							placeholder="검색">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
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
	
		<!-- 업주 관리 -->
		<div class="row">
			<div class="col-md-12">
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
		
		<!-- 숙소 관리 -->
		<div class="row">
			<div class="col-md-12 py-2">
				<table class="table table-hover table-striped table-bordered">
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
			
		<!-- 숙소 관리 -->
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">숙소 관리</a></li>
					<li class="breadcrumb-item"><a href="#">데일리콤마</a></li>
				</ul>
			</div>
		</div>
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
						<tr class="text-center table-light">
							<th scope="row">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="same-address" value="on"> <label
										class="custom-control-label" for="same-address">&nbsp;</label>
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
		
		<!-- 예약 내역 -->
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
							<td class="text-center">정현욱</td>
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
		
		<!-- 캐스트 관리 -->
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>