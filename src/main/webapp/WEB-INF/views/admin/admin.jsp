<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<link href="<%=request.getContextPath()%>/resources/include/css/admin.css" rel="stylesheet" type="text/css" />

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
							<c:forEach items="${list}" var="member">
							<tr class="text-center">
								<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="same-address" value="on"> <label
											class="custom-control-label" for="same-address">&nbsp;</label>
									</div>
								</th>
								<td>${member.memberNo}</td>
								<td>${member.memberName}</td>
								<td>${member.memberNick}</td>
								<td>${member.memberEmail}</td>
								<td>${member.memberPoint}</td>
								<td>${member.signupDate}</td>
								<td>
									<div class="btn-group">
										<a href="#" class="btn btn-outline-success btn-sm">수정</a>
										<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
									</div>
								</td>
							</tr>
							</c:forEach>
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
		<!-- 페이징 버튼 -->
		<my:paging paging="${paging}" />
		
	</div>
</div>