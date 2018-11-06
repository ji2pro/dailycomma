<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="com.yedam.dailycomma.common.Paging" %>
<%@ attribute name="jsFunc" required="false" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty jsFunc}">
	<c:set var="jsFunc" value="go_page"></c:set>
</c:if>
<ul class="pagination justify-content-center">
	<li class="page-item">이전
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
		<c:if test="${i != paging.page}">
			<li class="page-item"><a class="page-link" href="#" onclick="${jsFunc}(${i})">${i}</a>
		</c:if>
		<c:if test="${i == paging.page}">
			<li class="page-item active">${i}
		</c:if>
	</c:forEach>
	<li class="page-item">다음
</ul>
