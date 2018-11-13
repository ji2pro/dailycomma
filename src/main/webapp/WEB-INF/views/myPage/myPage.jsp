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

	<!--개인정보 수정  / 비밀번호, 한줄소개 -->
	<div class="py-5">
		<div class="container">
			<form action="updateMember.do" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4" id="photo" style="margin-left: auto; margin-right: auto; margin-top: auto; margin-bottom: auto; width:100%;" align="center" >
							<c:choose>
							<c:when test="${login.memberImg==null}">
								<i class="fas fa-user fa-8x"></i>
							</c:when>
							<c:otherwise>
       						<img src="resources/images/cast/${login.memberImg}" class="rounded-circle img-fluid">
        				 </c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-6 ml-5">
						<ul>
							<li>이름 :<input type="text" name="memberName"
								readonly="readonly" value="${login.memberName}"
								style="border:none" class="ml-3 my-3"></li>
							<li>닉네임 :<input type="text" name="memberNick"
								value="${login.memberNick}"
								style="border:none" class="ml-3 my-3"></li>
							<li>현재 비밀번호 : <button type="button" class="btn btn-primary" data-toggle="modal"data-target="#exampleModal">변경</button>
							<li>비밀번호 변경 :<input type="password" name="memberPw"  class="unRead ml-3 my-3" readonly="readonly" ></li>
							<li>비밀번호 변경 확인:<input type="password" name="pwcheck"  class="unRead ml-3 my-3" readonly="readonly" ></li>
							<li>한줄소개 :<input type="text" size="40" name="memberIntro"
								placeholder="자신을 소개하세요" value="${login.memberIntro}"
								style="border:none" class="ml-3 my-3"></li>
							<li>프로필 사진 : <input type="file" name="uploadFile" class="ml-3 my-3"></li>
						</ul>
						<button class="btn btn-primary btn-lg mt-3 ml-3" type="submit" id="up">정보수정</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<!-- 해당 회원과 관련된 포인트,예약내역,최근 본 숙소 -->
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
	
	
<!-- 모달 창 시작 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">비밀번호 확인</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	현재 비밀번호를 입력해주세요.
      	<input type="password" id="pw">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" >닫기</button>
        <button type="button" class="btn btn-primary" id="pwbtn">확인</button>
      </div>
    </div>
  </div>
</div>
	
	<script>
	 $(function(){								//비밀번호 readonly 제거 하는 스크립트
		 $("#pwbtn").on("click",function(){
			if($("#pw").val()=='${sessionScope.login.memberPw}'){ //input의 값과 세션안에 있는 DB의 비밀번호 값을 비교함.
			 $(".unRead").removeAttr("readonly");
			 alert('비밀번호 변경의 잠금이 풀렸습니다.')
			  $('#exampleModal').modal('hide')
			}
			else
			 alert('비밀번호가 다릅니다.'); 
		 })
	 });
	</script>
	
	<script>
	$(function(){
		$("#up").on("click",function(){
		alert('정보가 수정 되었습니다.')	
		})
	});
	
	</script>
	
	
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