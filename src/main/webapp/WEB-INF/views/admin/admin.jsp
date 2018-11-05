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
					<a class="nav-link" id="memberTab" href="member.do"
					   aria-controls="memberAdmin" aria-selected="true"
					   data-target="#memberAdmin" data-toggle="tab" role="tab">회원 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="hostTab" href="host.do"
					   aria-controls="hostAdmin" aria-selected="false"
					   data-target="#hostAdmin" data-toggle="tab" role="tab">업주 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lodgmentTab" href="lodgment.do"
					   aria-controls="lodgmentAdmin" aria-selected="false"
					   data-target="#lodgmentAdmin" data-toggle="tab" role="tab">숙소 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="reservationTab" href="reservation.do"
					   aria-controls="reservationAdmin" aria-selected="false"
					   data-target="#reservationAdmin" data-toggle="tab" role="tab">예약 내역</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="castTab" href="cast.do"
					   aria-controls="castAdmin" aria-selected="false"
					   data-target="#castAdmin" data-toggle="tab" role="tab">캐스트 관리</a>
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
		<div class="tab-pane fade" role="tabpanel" id="castAdmin" aria-labelledby="castTab"></div>
	</div>
</div>

<script>
$(function() {
	/*
	* Ajax Tabs(탭 클릭할 때마다 페이지 출력하기)
	*/
	$('#adminTabs li a').on('click', function(e) {
		e.preventDefault()
		
		var loadurl = $(this).attr('href'),
	        target = $(this).attr('data-target');

	    $.get(loadurl, function(data) {
			$(target).html(data);
		});

		$(this).tab('show');
	});
	//기본 첫 페이지 출력(페이지 들어오면 보이도록.)
	$.get('member.do', function(data) {
		$('#memberAdmin').html(data);
	});
	$('#adminTabs li:first-child a').tab('show');
});
</script>