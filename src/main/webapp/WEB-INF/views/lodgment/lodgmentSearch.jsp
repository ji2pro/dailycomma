<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/include/js/lodgment/Search.js?ver=1"/>"></script>
<!-- Custom Stylesheets -->
<link rel="stylesheet" href="./resources/include/css/jquery-ui.theme.css?ver=1" />
<link rel="stylesheet" href="./resources/include/css/lodgmentSearch.css?ver=1" />

<div class="datepicker-container">
	<div class="datepicker-content">
		
		<form action="<c:url value="/updateSearch.do"/>" class="form-inline">
			<label class="my-1 mr-2" for="datepicker">체크인</label>
			<input type="text" name="checkin" id="datepicker" autocomplete="off" class="form-control" value="${search.checkin}">
            <label class="my-1 mr-2" for="datepicker2">체크아웃</label>
			<input type="text" name="checkout" id="datepicker2" autocomplete="off" class="form-control" value="${search.checkout}">
			
			<button type="submit" class="btn btn-primary">검색</button>
		</form>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col mb-3" style="min-height: 700px;">
			<div class="dropdown" style="display: inline-block;">
				<button type="button" class="btn btn-default btn-lg dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					기본순 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" id="lodgType">
					<li role="presentation" value="Daegu">
						<a role="menuitem" tabindex="-1">글자순</a>
					</li>
					<li role="presentation" value="Seoul">
						<a role="menuitem" tabindex="-1">인기순</a>
					</li>
					<li role="presentation" value="Busan">
						<a role="menuitem" tabindex="-1">가격순</a>
					</li>
				</ul>
			</div>
			<div class="dropdown" style="display: inline-block;">
				<button class="btn btn-defalute btn-lg dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
					가격대 선택 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2" id="loc">
					<li role="presentation" value="Daegu">
						<a role="menuitem" tabindex="-1">5만원 이하</a>
					</li>
				</ul>
			</div>

			<c:forEach items="${lod}" var="temp">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<img class="card-img-left" src="<%=request.getContextPath()%>/resources/images/lodgment/${temp.lodgmentImg}" width="300" height="200" alt="Card image cap">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-dark" href="./detailRooms.do/${temp.lodgmentNo}">${temp.company}</a>
						</h3>
						<i class="price-label label-reserve">예약가</i> 
						<span class="score-rap text-warning" data-grade="${temp.avgGrade}">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
						</span> 
						<span>${temp.peopleCnt}</span>

						<p class="card-text mb-auto">
							${search.checkin}
							${search.checkout}
						</p>
						<div class="d-flex flex-wrap">
					<c:if test="${temp.hashTag ne null }">	
						<c:forEach items="${temp.hashTag}" var="hash">
							<%-- <a href="<c:url value="/hashTagSearch/${hash.hashtagContent}"/>" class="mr-3">${hash.hashtagContent}</a> --%>
							<a href="<c:url value="/updateSearch.do?searchKeyword=${hash.hashtagContent}"/>" class="mr-3">${hash.hashtagContent}</a>
						</c:forEach>
					</c:if>	
						</div>
					</div>
						

				</div>
			</c:forEach>
		</div>
	</div>
</div>