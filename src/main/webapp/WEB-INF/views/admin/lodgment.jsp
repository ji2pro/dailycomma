<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

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
					<th scope="col">관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="lodgment">
				<tr class="text-center" id="${lodgment.lodgmentNo}">
					<td scope="row">
						<label class="custom-control custom-checkbox">
							<input type="checkbox" name="_selected_" value="${lodgment.lodgmentNo}" class="custom-control-input">
							<span class="custom-control-indicator"></span>
						</label>
					</td>
					<td>${lodgment.lodgmentNo}</td>
					<td><a id="selectedTr" href="lodgment/${lodgment.lodgmentNo}" data-target="#lodgmentAdmin">${lodgment.company}</a></td>
					<td>${lodgment.lodgmentType}</td>
					<td>${lodgment.roomCnt}</td>
					<td>${lodgment.lodgmentInfo}</td>
					<td>${lodgment.hostName}</td>
					<td>${lodgment.location}</td>
					<td>
						<div class="btn-group">
							<a href="#" class="btn btn-outline-success btn-sm">수정</a>
							<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>
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
		<a class="btn btn-outline-danger" href="#">선택 삭제</a>
	</div>
</div>
<!-- 페이징 버튼 -->
<my:paging paging="${paging}" />

<!-- 객실 목록 -->
<%-- <div class="collapse" id="${lodgment.lodgmentNo}_rooms">
	<table id="roomList" class="table table-hover table-sm">
		<thead class="thead-light">
			<tr class="text-center">
				<th scope="col">
					<label class="custom-control custom-checkbox">
						<input type="checkbox" name="_selected_all_" class="custom-control-input">
						<span class="custom-control-indicator"></span>
			  		</label>
			  	</th>
				<th scope="col">객실 번호</th>
				<th scope="col">객실 이름</th>
				<th scope="col">객실 수</th>
				<th scope="col">가격(1박)</th>
				<th scope="col">최대 인원(1객실)</th>
				<th scope="col">관리</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
</div> --%>

<script>
/* $(function() {
	lodgmentSelect();
});

//숙소 객실목록 조회 요청
function lodgmentSelect() {
	//조회 버튼 클릭
	$('body').on('click', '.selectedTr', function() {
		var lodgmentNo = $(this).closest('tr').attr('id');
		//특정 숙소 조회
		$.ajax({
			url: 'lodgment/' + lodgmentNo,
			type: 'GET',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			error: function(xhr, status, msg) {
				alert("상태값 : " + status + " Http 에러메시지 : " + msg);
			},
			success: function(data) {
				var rooms = $(this).closest('tr').get(0)
				$.each(data, function(idx, item) {
					($('<tr class="text-center">'))
					.append($('<td scope="row">'
							+ '<label class="custom-control custom-checkbox">'
							+ '<input type="checkbox" name="_selected_" value="${room.roomNo}" class="custom-control-input">'
							+ '<span class="custom-control-indicator"></span>'
							+ '</label>'))
					.append($('<td>').html(item.roomNo))
					.append($('<td>').html(item.roomName))
					.append($('<td>').html(item.roomQuantity))
					.append($('<td>').html(item.roomPrice))
					.append($('<td>').html(item.roomCapa))
					.append($('<div class="btn-group">'
							+ '<a href="#" class="btn btn-outline-success btn-sm">수정</a>'
							+ '<a href="#" class="btn btn-outline-danger btn-sm">삭제</a>'
							+ '</div>'))
					.appendTo($('#roomList'));
				});
				$('#'+lodgmentNo).after($('#roomList'));
// 				$('#roomList').show();
				$('#'+lodgmentNo+'_rooms').collapse();
			}
		});
	})
}//roomList */
</script>
