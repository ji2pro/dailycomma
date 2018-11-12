<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!-- 캐스트(관광포스트) 관리 -->
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
					<th scope="col">관광 지역</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">승인 상태</th>
					<th scope="col">관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="tour">
				<tr class="text-center">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${tour.tourId}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${tour.tourLocation}</td>
					<td>${tour.tourTitle}</td>
					<td>${tour.memberName}</td>
					<td>${tour.tourDate}</td>
					<td>${tour.tourState}</td>
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