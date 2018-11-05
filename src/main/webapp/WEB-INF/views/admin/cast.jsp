<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!-- 캐스트 관리 -->
<div class="tab-pane fade" role="tabpanel" id="castAdmin" aria-labelledby="castTab">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover table-sm">
				<thead class="thead-light">
					<tr class="text-center">
						<th scope="col">선택</th>
						<th scope="col">관광 지역</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">승인 상태</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-center">
						<th scope="row">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="same-address" value="on"> <label
									class="custom-control-label" for="same-address">&nbsp;</label>
							</div>
						</th>
						<td>(수원)</td>
						<td>(먹고 놀다 지쳐 잠들 수원 핵잼 핫플)</td>
						<td>(대한민국방방곡곡)</td>
						<td>(2018-10-02 21:09)</td>
						<td>(승인 완료)</td>
						<td>
							<div class="btn-group">
								<a href="#" class="btn btn-outline-success btn-sm">수정</a>
								<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
							</div>
						</td>
					</tr>
					<tr class="text-center table-light">
						<th scope="row">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="same-address" value="on"> <label
									class="custom-control-label" for="same-address">&nbsp;</label>
							</div>
						</th>
						<td>대구</td>
						<td>교통&미식&감성의 3박자 대구</td>
						<td>콤마늬우스</td>
						<td>2018-10-06 20:04</td>
						<td>승인 전</td>
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
</div>
<!-- 페이징 버튼 -->
<my:paging paging="${paging}" />