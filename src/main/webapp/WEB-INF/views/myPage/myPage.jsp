<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<%=request.getContextPath()%>/resources/include/css/myPage.css" rel="stylesheet" type="text/css" />
<!-- jQuery UI -->
<%-- <script src="<%=request.getContextPath()%>/webjars/jquery/1.12.0/jquery.min.js"></script> --%>
<!-- 부트스트랩 아이콘 -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
	integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
	integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="py-5">
		<div class="container">
			<form action="updateMember.do">
				<div class="row">
					<div class="col-md-4" style="margin-left: auto; margin-right: auto; margin-top: auto; margin-bottom: auto; width:100%;" align="center" >
						<c:choose>
							<c:when test="${memberLogin.memberImg==null}">
								<i class="fas fa-user fa-9x"></i>
							</c:when>
							<c:otherwise>
       						<img src="resources/images/cast/${memberLogin.memberImg}" class="rounded-circle">
        				 </c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-6 ml-5">
						<ul>
							<li>이름 :<input type="text" name="memberName"
								readonly="readonly" value="${memberLogin.memberName}"
								style="border:none" class="ml-3 my-3"></li>
							<li>닉네임 :<input type="text" name="memberNick"
								value="${memberLogin.memberNick}"
								style="border:none" class="ml-3 my-3"></li>
							<li>비밀번호 :<input type="password" name="memberPw"
								value="${memberLogin.memberPw}"
								style="border:none" class="ml-3 my-3"></li>
							<li>한줄소개 :<input type="text" size="40" name="memberIntro"
								placeholder="자신을 소개하세요" value="${memberLogin.memberIntro}"
								style="border:none" class="ml-3 my-3"></li>
						</ul>
						<button class="btn btn-primary btn-lg mt-3 ml-3" type="button">정보수정</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="py-5">
		<div class="container">
			<div class="row">
				<ul class="nav nav-tabs mb-3" id="myPageTabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link" id="pointTab"
							href="point.do" aria-controls="point" aria-selected="true"
							data-target="#point" data-toggle="tab" role="tab">포인트</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="reserveTab"
						href="reserve.do" aria-controls="reserve" aria-selected="true"
						data-target="#reserve" data-toggle="tab" role="tab">예약 내역</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="countryTab"
						href="country.do" aria-controls="country" aria-selected="true"
						data-target="#country" data-toggle="tab" role="tab">최근 본 숙소</a>
					</li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane fade" role="tabpanel" id="point"
					aria-labelledby="pointTab"></div>
				<div class="tab-pane fade" role="tabpanel" id="reserve"
					aria-labelledby="reserveTab"></div>
				<div class="tab-pane fade" role="tabpanel" id="country"
					aria-labelledby="countryTab"></div>
			</div>
		</div>
	</div>


	<script>
		$(function() {
			/*
			 * Ajax Tabs(탭 클릭할 때마다 페이지 출력하기)
			 */
			$('#myPageTabs li a').on('click',function(e) {
						e.preventDefault()

						var loadurl = $(this).attr('href'), 
									  target = $(this).attr('data-target');

						$.get(loadurl, function(data) {
							$(target).html(data);
						});

						$(this).tab('show');
			});
			
			$('.btn .btn-primary .btn-lg').click(function(){
				
			});
			//기본 첫 페이지 출력(페이지 들어오면 보이도록.)
			$.get('point.do', function(data) {
				$('#point').html(data);
			});
			$('#myPageTabs li:first-child a').tab('show');
		});
	</script>
</body>

</html>