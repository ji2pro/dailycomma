<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="<c:url value="/resources/include/css/management/lodgmentList.css" />" rel="stylesheet" type="text/css">

<!-- 숙소 목록 -->
<div class="container">
	<div class="row mb-5">
		<div class="col-md-12 mb-5">
			<h3 class="text-center py-5">등록한 숙소</h3>
			<table id="lodgmentList" class="table table-hover table-bordered mb-5">
				<thead class="thead-light">
					<tr class="text-center">
						<!-- <th scope="col">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_all_" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</th> -->
						<th scope="col">업체 번호</th>
						<th scope="col">업체 이름</th>
						<th scope="col">숙소 종류</th>
						<th scope="col">총 객실수</th>
						<!-- <th scope="col">숙소 옵션</th> -->
						<th scope="col">지역</th>
						<!-- <th scope="col">관리</th> -->
					</tr>
				</thead>
				<tbody id="lodgmentTbody">
					<c:forEach items="${lodgmentList}" var="lod">
					<tr class="text-center" id="${lod.lodgmentNo}">
						<%-- <td scope="row">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_" value="${lod.lodgmentNo}" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</td> --%>
						<td>${lod.lodgmentNo}</td>
						<td>${lod.company}</td>
						<td>${lod.lodgmentType}</td>
						<td>${lod.roomCnt}</td>
						<%-- <td>${lod.lodgmentInfo}</td> --%>
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
			
			<table class="table table-hover table-bordered mb-5">
				<thead class="thead-light">
					<tr class="text-center">
						<!-- <th scope="col">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_all_" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</th> -->
						<th scope="col">객실 번호</th>
						<th scope="col">객실 이름</th>
						<th scope="col">객실 수</th>
						<th scope="col">가격(1박)</th>
						<th scope="col">최대 인원(1객실)</th>
<!-- 						<th scope="col">관리</th> -->
					</tr>
				</thead>
				<tbody id="roomTbody">
					<c:forEach items="${roomList}" var="room">
					<tr class="text-center">
						<%-- <td scope="row">
							<label class="custom-control custom-checkbox">
								<input type="checkbox" name="_selected_" value="${room.roomNo}" class="custom-control-input">
								<span class="custom-control-indicator"></span>
							</label>
						</td> --%>
						<td>${room.roomNo}</td>
						<td>${room.roomName}</td>
						<td>${room.roomQuantity}</td>
						<td><fmt:formatNumber value="${room.roomPrice}" pattern="#,###" />원</td>
						<td>${room.roomCapa}</td>
						<!-- <td>
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