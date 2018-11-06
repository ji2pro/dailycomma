<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

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
					<th scope="col">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_all_" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</th>
					<th scope="col">객실명</th>
					<th scope="col">객실수</th>
					<th scope="col">가격(1박)</th>
					<th scope="col">최대 인원(객실)</th>
					<th scope="col">관리</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-center">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
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
