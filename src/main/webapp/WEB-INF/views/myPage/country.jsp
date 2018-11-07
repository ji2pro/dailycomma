<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="reta">
	최근 본 숙소
	<table class="table mt-3">
		<tbody class="lineset">
			<tr>
				<th>숙소 이름</th>
				<th>객실 종류</th>
				<th>가격</th>
			</tr>

			<c:forEach items="${country}" var="co">
				<tr>
					<td>${co.company}</td>
					<td>${co.roomName}</td>
					<td>${co.roomPrice}원</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
