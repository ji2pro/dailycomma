<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

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
<!-- 페이징 버튼 -->
<my:paging paging="${paging}" />