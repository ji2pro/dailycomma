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

			<c:forEach items="${list}" var="country">
				<tr>
					<td>${country.company}</td>
					<td>${country.roomName}</td>
					<td>${country.roomPrice}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
