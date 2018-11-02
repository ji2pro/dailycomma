<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<div class="container-fluid">
		<div class="row">
			<h2 class="px-3 py-3">관리자 페이지</h2>
		</div>

		<!-- 메뉴 탭 -->
		<div class="row">
			<div class="col-md-9">
				<ul class="nav nav-tabs mb-3" id="adminTabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="memberTab" href="#memberAdmin" aria-controls="memberAdmin" aria-selected="true" data-target="" data-toggle="tab" role="tab">회원 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="hostTab" href="#hostAdmin" aria-controls="hostAdmin" aria-selected="false" data-toggle="tab" role="tab">업주 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="lodgmentTab" href="#lodgmentAdmin" aria-controls="lodgmentAdmin" aria-selected="false" data-toggle="tab" role="tab">숙소 관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="reservationTab" href="#reservationAdmin" aria-controls="reservationAdmin" aria-selected="false" data-toggle="tab" role="tab">예약 내역</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="castTab" href="#castAdmin" aria-controls="castAdmin" aria-selected="false" data-toggle="tab" role="tab">캐스트 관리</a>
					</li>
				</ul>
			</div>
			<div class="col-md-3">
				<form class="form-inline">
					<div class="input-group ml-auto">
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
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">선택</th>
									<th scope="col">회원 번호</th>
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
									<td>100001</td>
									<td>홍지상</td>
									<td>hong</td>
									<td>hjs@dc.com</td>
									<td>4,500</td>
									<td>2018-10-01</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
			
			<!-- 업주 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="hostAdmin" aria-labelledby="hostTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">선택</th>
									<th scope="col">이름</th>
									<th scope="col">아이디</th>
									<th scope="col">이메일</th>
									<th scope="col">연락처</th>
									<th scope="col">사업자 번호</th>
									<th scope="col">업주 등록일</th>
									<th scope="col">업주 승인</th>
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
									<td>010-1111-1111</td>
									<td>312-56-123456</td>
									<td>2018-10-02</td>
									<td>승인 완료</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>010-1114-1114</td>
									<td>2018-10-10</td>
									<td>승인 완료</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>010-1212-1212</td>
									<td>2018-10-11</td>
									<td>승인 완료</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
			
			<!-- 업체(숙소) 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="lodgmentAdmin" aria-labelledby="lodgmentTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">선택</th>
									<th scope="col">지역</th>
									<th scope="col">업체 번호</th>
									<th scope="col">업체명</th>
									<th scope="col">숙소 종류</th>
									<th scope="col">총 객실수</th>
									<th scope="col">숙소 옵션</th>
									<th scope="col">업주명</th>
									<th scope="col">관리</th>
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
									<td>대구</td>
									<td>777771</td>
									<td>데일리 콤마</td>
									<td>호텔</td>
									<td>40</td>
									<td>와이파이/주차 가능/VOD/조식/석식</td>
									<td>정현욱</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>서울</td>
									<td>777774</td>
									<td>야놉시다</td>
									<td>모텔</td>
									<td>20</td>
									<td>와이파이/주차/VOD/거울룸/커플 PC</td>
									<td>문준영</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>경산</td>
									<td>777776</td>
									<td>저기요</td>
									<td>게스트하우스</td>
									<td>15</td>
									<td>와이파이/주차/노트북 대여/조식 운영</td>
									<td>손준우</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			
				<!-- 숙소 관리 경로 표시 -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">숙소 관리</a></li>
							<li class="breadcrumb-item"><a href="#">데일리 콤마</a></li>
						</ul>
					</div>
				</div>
				
				<!-- 숙소 관리 - 객실 관리 -->
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">선택</th>
									<th scope="col">객실명</th>
									<th scope="col">객실수</th>
									<th scope="col">가격(1박)</th>
									<th scope="col">최대 인원(객실)</th>
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
									<td class="text-center">스탠다드</td>
									<td>12</td>
									<td>35,000</td>
									<td>4</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
				
			<!-- 예약 내역 -->
			<div class="tab-pane fade" role="tabpanel" id="reservationAdmin" aria-labelledby="reservationTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">예약번호</th>
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
									<td>111111</td>
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
									<td>111112</td>
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
									<td>111113</td>
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
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
				
			<!-- 캐스트 관리 -->
			<div class="tab-pane fade" role="tabpanel" id="castAdmin" aria-labelledby="castTab">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm">
							<thead class="thead-light">
								<tr class="text-center">
									<th scope="col">선택</th>
									<th scope="col">관광 지역</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col">작성일</th>
									<th scope="col">승인 상태</th>
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
									<td>수원</td>
									<td>먹고 놀다 지쳐 잠들 수원 핵잼 핫플</td>
									<td>대한민국방방곡곡</td>
									<td>2018-10-02 21:09</td>
									<td>승인 완료</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>대구</td>
									<td>교통&미식&감성의 3박자 대구</td>
									<td>콤마늬우스</td>
									<td>2018-10-06 20:04</td>
									<td>승인 전</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
									<td>제주</td>
									<td>인생샷 풍년이라는 갬성만렙 '가을제주'</td>
									<td>콤마여행</td>
									<td>2018-10-09 21:45</td>
									<td>승인 완료</td>
									<td>
										<div class="btn-group">
											<a href="#" class="btn btn-outline-success btn-sm">수정</a>
											<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
						<a class="btn btn-outline-danger" href="#">선택 삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
