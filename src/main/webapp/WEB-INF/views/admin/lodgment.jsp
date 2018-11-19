<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/lodgment.js"></script>

<form name="lodgmentPagingForm" id="lodgmentPagingForm">
	<input type="hidden" name="page" value="1">
	<input type="hidden" name="sort" value="lodgment_no">

	<input type="hidden" name="searchCondition" value="">
	<input type="hidden" name="searchKeyword" value="">
</form>
<!-- 업체(숙소) 관리 -->
<div class="row">
	<div class="col-md-12">
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
					<th scope="col">업주 이름</th>
					<th scope="col">지역</th>
					<!-- <th scope="col">관리</th> -->
				</tr>
			</thead>
			<tbody id="lodgmentTbody">
				<c:forEach items="${list}" var="lodgment">
				<tr class="text-center" id="${lodgment.lodgmentNo}">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${lodgment.lodgmentNo}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${lodgment.lodgmentNo}</td>
<%-- 					<td><a id="selectedTr" href="rooms/${lodgment.lodgmentNo}" data-target="#lodgmentAdmin">${lodgment.company}</a></td> --%>
					<td><a id="selectedTr" href="#" onclick="window.open('rooms/${lodgment.lodgmentNo}','lodgment','width=1200, height=500')">${lodgment.company}</a></td>
					<td>${lodgment.lodgmentType}</td>
					<td>${lodgment.roomCnt}</td>
					<td>${lodgment.lodgmentInfo}</td>
					<td>${lodgment.hostName}</td>
					<td>${lodgment.location}</td>
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
<div class="row">
	<div class="col-md-12 d-flex flex-row justify-content-end mb-4">
		<button id="lodgmentDeleteSelected" class="btn btn-outline-danger">선택 삭제</button>
	</div>
</div>
<div id="lodgmentPaging">
	<my:paging paging="${paging}" jsFunc="go_page"/> 
</div>
<!-- 페이징 버튼 -->
<%-- <my:paging paging="${paging}" /> --%>