<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="reta">
	사용가능 포인트 <a>${po.memberPoint}</a>
	<table class="table mt-3">
		<tbody class="lineset">
			<tr>
				<th>내역</th>
				<th>포인트</th>
				<th>날짜</th>
			</tr>
			<c:forEach items="${point}" var="po">
				<tr>
					<td>체크아웃</td>
					<td>${po.reservePoints}</td>
					<td>${po.checkOut}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>