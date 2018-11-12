<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/admin.js"></script>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/member.js"></script>
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
					<a class="nav-link" id="memberTab" href="./member"
					   aria-controls="memberAdmin" aria-selected="true"
					   data-target="#memberAdmin" data-toggle="tab" role="tab"
					 >회원 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="hostTab" href="./host"
					   aria-controls="hostAdmin" aria-selected="false"
					   data-target="#hostAdmin" data-toggle="tab" role="tab">업주 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lodgmentTab" href="./lodgment"
					   aria-controls="lodgmentAdmin" aria-selected="false"
					   data-target="#lodgmentAdmin" data-toggle="tab" role="tab">숙소 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="reservationTab" href="./reservation"
					   aria-controls="reservationAdmin" aria-selected="false"
					   data-target="#reservationAdmin" data-toggle="tab" role="tab">예약 내역</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="tourTab" href="./tour"
					   aria-controls="tourAdmin" aria-selected="false"
					   data-target="#tourAdmin" data-toggle="tab" role="tab">캐스트 관리</a>
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
		<div class="tab-pane fade" role="tabpanel" id="memberAdmin" aria-labelledby="memberTab"></div>
		<div class="tab-pane fade" role="tabpanel" id="hostAdmin" aria-labelledby="hostTab"></div>
		<div class="tab-pane fade" role="tabpanel" id="lodgmentAdmin" aria-labelledby="lodgmentTab"></div>
		<div class="tab-pane fade" role="tabpanel" id="reservationAdmin" aria-labelledby="reservationTab"></div>
		<div class="tab-pane fade" role="tabpanel" id="tourAdmin" aria-labelledby="tourTab"></div>
	</div>
</div>