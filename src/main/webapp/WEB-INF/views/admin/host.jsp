<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

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
					<c:forEach items="${list}" var="host">
					<tr class="text-center">
						<th scope="row">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="same-address" value="on"> <label
									class="custom-control-label" for="same-address">&nbsp;</label>
							</div>
						</th>
						<td>${host.hostName}</td>
						<td>${host.hostId}</td>
						<td>${host.hostEmail}</td>
						<td>${host.hostPhone}</td>
						<td>${host.businessNo}</td>
						<td>${host.signupDate}</td>
						<td>승인 ?</td>
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
