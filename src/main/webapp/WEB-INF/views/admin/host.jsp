<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/host.js"></script>

<form name="hostPagingForm" id="hostPagingForm">
	<input type="hidden" name="page" value="1">
	<input type="hidden" name="sort" value="host_id">
	<input type="hidden" name="lodgmentState" value="">
	
	<input type="hidden" name="searchCondition" value="">
	<input type="hidden" name="searchKeyword" value="">
</form>

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
			<tbody id="hostTbody">
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
						${host.signupDate}
					</td>
					
					<td>
						<c:if test="${host.lodgmentState == 'B1'}">
							승인
						</c:if>
						<c:if test="${host.lodgmentState == 'B2'}">	
							미승인
						</c:if>
						<c:if test="${host.lodgmentState == 'B3'}">
							대기
						</c:if>				
					</td>
					<td>
						<div class="btn-group">
							<c:if test="${host.lodgmentState == 'B1'}">
								<button id="hostbtnDelete" class="btn btn-outline-danger btn-sm"
								onclick="sortHost('unapprove','${host.lodgmentNo}')">승인취소</button>
							</c:if>
							<c:if test="${host.lodgmentState == 'B2'}">	
								<button id="hostbtnEdit" class="btn btn-outline-success btn-sm" 
								onclick="sortHost('approve','${host.lodgmentNo}')">승인</button>
							</c:if>
							<c:if test="${host.lodgmentState == 'B3'}">
								<button id="hostbtnEdit" class="btn btn-outline-success btn-sm"
								onclick="sortHost('approve','${host.lodgmentNo}')">승인</button>
								<button id="hostbtnDelete" class="btn btn-outline-danger btn-sm"
								onclick="sortHost('unapprove','${host.lodgmentNo}')">거부</button>
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
		<button id="btnDeleteSelected" class="btn btn-outline-danger">선택 삭제</button>
	</div>
</div>

<div id="hostPaging">
	<my:paging paging="${paging}" jsFunc="go_page"/> 
</div>
<!-- 페이징 버튼 -->
<%-- <my:paging paging="${paging}" /> --%>
