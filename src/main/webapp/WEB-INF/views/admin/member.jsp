<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<script src="<%=request.getContextPath()%>/resources/include/js/admin/member.js"></script>



<form name="memberPagingForm" id="memberPagingForm">
	<input type="hidden" name="page" value="1">
	<input type="hidden" name="sort" value="member_no">
	<input type="hidden" name="searchCondition" value="">
	<input type="hidden" name="searchKeyword" value="">
</form>
<!-- 회원 관리 -->
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
					<th scope="col">회원 번호</th>
					<th scope="col">이름</th>
					<th scope="col">닉네임</th>
					<th scope="col">이메일</th>
					<th scope="col">보유 포인트</th>
					<th scope="col">가입일</th>
					<th scope="col">관리</th>
					<th scope="col">회원상태</th>
				</tr>
			</thead>
			<tbody id="memberTbody">
				<c:forEach items="${list}" var="member">
				<tr class="text-center">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${member.memberNo}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${member.memberNo}</td>
					<td>${member.memberName}</td>
					<td>${member.memberNick}</td>
					<td>${member.memberEmail}</td>
					<td>${member.memberPoint}</td>
					<td>
						<fmt:parseDate value="${member.signupDate}" var="signupDate_D" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${signupDate_D}" var="signupDate_FD" pattern="yyyy.MM.dd"/>
						${signupDate_FD}
					</td>
					<td>
						<c:if test="${member.memberWithdraw == 'F1'}">
							일반회원
						</c:if>
						<c:if test="${member.memberWithdraw == 'F2'}">
							탈퇴회원
						</c:if>
					</td>
					
					<td>
						<div class="btn-group">
							<c:if test="${member.memberWithdraw == 'F1'}">
								<button class="btn btn-outline-danger btn-sm" onclick="checkWithdraw('F2','${member.memberNo}')">회원정지</button>
							</c:if>
							<c:if test="${member.memberWithdraw == 'F2'}">
								<button class="btn btn-outline-success btn-sm" onclick="checkWithdraw('F1','${member.memberNo}')">회원복구</button>
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
		<button id="memberDeleteSelected" class="btn btn-outline-danger">선택 삭제</button>
	</div>
</div>
<div id="memberPaging">
	<my:paging paging="${paging}" jsFunc="go_page"/> 
</div>
<!-- 페이징 버튼 -->
<%--  <my:paging paging="${paging}" jsFunc="go_page"/>  --%>
