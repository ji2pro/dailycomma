<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!-- 업주 관리 -->
<div class="row">
	<div class="col-md-12">
		<table class="table table-hover table-sm">
			<thead class="thead-light">
				<tr class="text-center">
					<th scope="col">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_all_" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</th>
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
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${host.hostId}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${host.hostName}</td>
					<td>${host.hostId}</td>
					<td>${host.hostEmail}</td>
					<td>${host.hostPhone}</td>
					<td>${host.businessNo}</td>
					<td>
						<fmt:parseDate value="${host.signupDate}" var="signupDate_D" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${signupDate_D}" var="signupDate_FD" pattern="yyyy.MM.dd"/>
						${signupDate_FD}
					</td>
					<td>(승인)</td>
					<td>
						<div class="btn-group">
							<button id="btnEdit" class="btn btn-outline-success btn-sm">수정</button>
							<button id="btnDelete" class="btn btn-outline-danger btn-sm">삭제</button>
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
		<button id="btnDeleteSelected" class="btn btn-outline-danger">선택 삭제</button>
	</div>
</div>
<!-- 페이징 버튼 -->
<my:paging paging="${paging}" />
