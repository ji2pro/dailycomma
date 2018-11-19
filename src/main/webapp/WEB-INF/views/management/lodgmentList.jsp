<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 업체(숙소) 관리 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center py-5">숙소 목록</h3>
			<table id="lodgmentList" class="table table-hover table-sm">
				<thead class="thead-light">
					<tr class="text-center">
						<th scope="col">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_all_" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</th>
						<th scope="col">업체 번호</th>
						<th scope="col">업체 이름</th>
						<th scope="col">숙소 종류</th>
						<th scope="col">총 객실수</th>
						<th scope="col">숙소 옵션</th>
						<th scope="col">지역</th>
						<!-- <th scope="col">관리</th> -->
					</tr>
				</thead>
				<tbody id="lodgmentTbody">
					<c:forEach items="${list}" var="lod">
					<tr class="text-center" id="${lod.lodgmentNo}">
						<td scope="row">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_" value="${lod.lodgmentNo}" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</td>
						<td>${lod.lodgmentNo}</td>
						<td>${lod.company}</td>
						<td>${lod.lodgmentType}</td>
						<td>${lod.roomCnt}</td>
						<td>${lod.lodgmentInfo}</td>
						<td>${lod.location}</td>
	<!-- 					<td>
							<div class="btn-group">
								<button id="btnEdit" class="btn btn-outline-success btn-sm">수정</button>
								<button id="btnDelete" class="btn btn-outline-danger btn-sm">삭제</button>
							</div>
						</td> -->
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>