<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!-- 예약 내역 -->
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
				<c:forEach items="${list}" var="reservation">
				<tr class="text-center">
					<td>${reservation.reserveNo}</td>
					<td>${reservation.memberName}</td>
					<td>${reservation.memberEmail}</td>
					<td>(010-0000-0000)</td>
					<td>${reservation.reserveDate}</td>
					<td>${reservation.reservePeople}</td>
					<td>${reservation.reservePrice}</td>
					<td>${reservation.reserveState}</td>
					<td>${reservation.checkin}</td>
					<td>${reservation.checkout}</td>
					<td>(예약일수)</td>
					<td>(상태변경일)</td>
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
<!-- 페이징 버튼 -->
<my:paging paging="${paging}" />