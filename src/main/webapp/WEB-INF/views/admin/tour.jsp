<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/tour.js"></script>

<form name="tourPagingForm" id="tourPagingForm">
	<input type="hidden" name="page" value="1">
	<input type="hidden" name="sort" value="tour_id">
	<input type="hidden" name="tourState" value="">
</form>
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
					<th scope="col">관광 ID</th>
					<th scope="col">관광 지역</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">승인 상태</th>
					<th scope="col">관리</th>
				</tr>
			</thead>
			<tbody id="tourTbody">
				<c:forEach items="${list}" var="tour">
				<tr class="text-center">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${tour.tourId}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${tour.tourId}</td>
					<td>${tour.tourLocation}</td>
					<td>${tour.tourTitle}</td>
					<td>${tour.memberName}</td>
					<td>${tour.tourDate}</td>
					<td>
						<c:if test="${tour.tourState == 'B1'}">
							승인
						</c:if>
						<c:if test="${tour.tourState == 'B2'}">	
							미승인
						</c:if>
						<c:if test="${tour.tourState == 'B3'}">
							대기
						</c:if>					
					
					</td>					
					<td>
						<div class="btn-group">
							<c:if test="${tour.tourState == 'B1'}">
								<button id="TourbtnDelete" class="btn btn-outline-danger btn-sm"
								onclick="checkTour('unapprove','${tour.tourId}')">승인취소</button>
							</c:if>
							<c:if test="${tour.tourState == 'B2'}">	
								<button id="TourbtnEdit" class="btn btn-outline-success btn-sm" 
								onclick="checkTour('approve','${tour.tourId}')">승인</button>
							</c:if>
							<c:if test="${tour.tourState == 'B3'}">
								<button id="TourbtnEdit" class="btn btn-outline-success btn-sm"
								onclick="checkTour('approve','${tour.tourId}')">승인</button>
								<button id="TourbtnDelete" class="btn btn-outline-danger btn-sm"
								onclick="checkTour('unapprove','${tour.tourId}')">거부</button>
							</c:if>							
						
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
		<button id="tourDeleteSelected" class="btn btn-outline-danger">선택 삭제</button>
	</div>
</div>
<div id="tourPaging">
	<my:paging paging="${paging}" jsFunc="go_page"/> 
</div>
<!-- 페이징 버튼 -->
<%-- <my:paging paging="${paging}" /> --%>