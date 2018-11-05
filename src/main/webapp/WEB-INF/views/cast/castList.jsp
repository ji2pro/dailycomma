<!-- 패키지 cast 의 CastController 와 연결 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./resources/include/css/cast/cast-css.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.4/imagesloaded.js"></script>
	<script src="./resources/include/js/cast/cast-js.js"></script>
</head>

<meta charset="utf-8" />
<title>캐스트 상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap 4.1.3 -->
<link rel="stylesheet" type="text/css" href="bootstrap-4.1.3/css/bootstrap.min.css" />
<script src="bootstrap-4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<!-- Custom Stylesheets -->

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link href="./resources/include/css/detailCast.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="container-fluid" id="wrapper">


		<div id="topContent" class="contents">
			<!--S: .con_inner -->
			<div class="con_inner">
				<div class="con_detail bord_b">
					<div id="side_menu" class="side_menu">
						<ul>
							<li name="btnLike"><a href="#none"><span class="bl_like"></span></a></li>
							<li name="btnComment" style="display: none;"><a href="#none"
								class="reply" style="display: none;"><span
									class="bl_reply reply" style="display: none;"></span></a></li>
							<li name="btnBookmark"><a href="#none"><span
									class="bl_bookmark"></span></a></li>
							<li><button type="button"
									onclick="javascript:sendFacebook();">
									<span class="bl_facebook"></span>
								</button></li>
							<li><a href="#none" onclick="copyURL();"><span
									class="bl_share"></span></a></li>
							<li class="mg_top"><a href="#"><span class="bl_top"></span></a></li>
						</ul>
					</div>
					<div class="inner_bg">
						<!-- <div class="detail_user">
							<div class="user_pic">
								<a href="/caster/31772064" name="jsonProfileImg"><img
									src="http://yaimg.yanolja.com/v5/2018/01/09/17/5a548408d6e2d7.61872229.jpg"
									alt="" style="position: static; width: 100%; height: 100%;"></a>
							</div>
							<a href="/caster/31772064" class="user_name"
								name="jsonCasterLink"><span name="jsonNickName">잠깐여행</span></a>
						</div> -->
						<div class="detail_title">
							<h3 class="sc_out"></h3>
							<p id="jsonTitle">인생샷착즙기 반짝뽕쨕 빛축제7</p>
							<div class="count">
								<span class="day" id="jsonRegisterdDate">2018-09-27
									18:15:24</span><span style="color:red; margin-left:20px;" class="fas fa-heart"></span><b name="jsonLikeCount">5</b><span
									class="ico_read"></span><span class="fas fa-glasses"></span><b id="readCount">686</b>
							</div>
							<a href="#none" class="reply" style="display: none;"><span>댓글</span><b
								name="jsonCommentCount"></b></a>
						</div>
						<div class="detail_area">
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f7305dc71.19082667.jpg">
							</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f73abbd13.09747372.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=37149"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb2294b34564.47882131.jpg"></a>&nbsp;
							</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f7272b250.11914022.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=37545&#10;"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg"></a>&nbsp;
							</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f756f98e3.09955824.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=38167"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb2294b34564.47882131.jpg"></a>​
							</p>
							<p style="text-align: center;" align="center">&nbsp;</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f74313563.60615426.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=37162"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg"></a>​
							</p>
							<p style="text-align: center;" align="center">&nbsp;</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f7739c2e6.52090245.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=20281&#10;"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg"></a>​​
							</p>
							<p style="text-align: center;" align="center">&nbsp;</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f75eee839.79453570.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=35365&#10;"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg"></a>​​
							</p>
							<p style="text-align: center;" align="center">&nbsp;</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<br>
								<img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f76f02fc5.72321635.jpg"><a
									href="yanoljamotel://Leisure?target=detail&amp;param[idx]=35700&#10;"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg"></a>​​​
							</p>
							<p style="text-align: center;" align="center">&nbsp;</p>
							<p
								style="text-align: center; width: 100%; margin: 0px; padding: 0px;"
								align="center">
								<a
									href="yanoljamotel://Leisure?target=list&amp;param[keyword]=빛"
									target="_self"><img name="target_contents_images"
									src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb23d2580405.29569008.jpg"></a>&nbsp;
							</p>
							<p style="text-align: center;" align="center">
								<br>
								<span style="color: rgb(255, 255, 255);">&nbsp;</span><span
									style="color: rgb(255, 255, 255);">#</span><span
									style="color: rgb(255, 255, 255);"><span
									style="color: rgb(255, 255, 255);">만</span>원이하 #금주데이트 #1박2일코스
									#추천가을여행 #당일치기 #빛축제 #야간데이트 #심야데이트 #데이트코스 #라이트월드</span>
							</p>
							<p style="text-align: center;" align="center">
								<span style="color: rgb(255, 255, 255);">&nbsp;​</span>
							</p>
							<p style="text-align: center;" align="center">
								<span style="color: rgb(255, 255, 255);">&nbsp;</span>
							</p>
							<div class="bt_rap">
								<div class="bt_detail">
									<ul>
										<li><button type="button" name="btnLike">
												<span class="ico_detaillike"></span>
											</button>
											<span class="bt_txt">좋아요</span><b name="jsonLikeCount">5</b></li>
										<li><button type="button" name="btnBookmark">
												<span class="ico_detailbook"></span>
											</button>
											<span class="bt_txt">북마크</span><b id="jsonBookCount">0</b></li>
										<li><button type="button" onclick="sendFacebook();">
												<span class="ico_detailface"></span>
											</button>
											<span class="bt_txt">페이스북공유</span></li>
										<li><button type="button" onclick="copyURL();">
												<span class="ico_detaillink link_url"></span>
											</button>
											<span class="bt_txt">링크공유</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--S: .inner_bg-->
					<div class="inner_bg type">
						<div class="inner_box">
							<div class="user_cast">
								<div class="user_pic">
									<a href="/caster/31772064" name="jsonProfileImg"><img
										src="http://yaimg.yanolja.com/v5/2018/01/09/17/5a548408d6e2d7.61872229.jpg"
										alt="" style="position: static; width: 100%; height: 100%;"></a>
								</div>
								<div class="user_txt">
									<a href="/caster/31772064" class="user_name"
										name="jsonCasterLink"><strong name="jsonNickName">잠깐여행</strong></a>
									<p name="oneLineIntro">잠깐, 여행을 떠나보세요!</p>
									<div class="count">
										<span>구독</span><b name="jsonSubscriberCounter">7</b>
									</div>
								</div>
								<div class="bt_read">
									<button type="button" class="jsonSubscribedStatus">
										<span class="bt_reading"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<!--E: .inner_bg-->

					<!--S: .inner_bg-->
					<div class="inner_bg">
						<div class="reply_area" style="display: none;">
							<div class="re_txt">
								<span>댓글</span><b name="jsonCommentCount"></b>
							</div>
							<div class="re_inner">
								<div class="edit_rap">
									<div class="re_write">
										<textarea name="commentText" rows="4" cols="50"
											placeholder="댓글을 입력해주세요"></textarea>
										<div class="bt_rap">
											<button type="submit" class="btn_saveComment">
												<b title="commentWrite">댓글쓰기</b>
											</button>
										</div>
									</div>
								</div>
								<div class="re_box"></div>

								<p id="jsonPaging"></p>

							</div>
						</div>
						<div class="reply_area" style="display: none;">
							<div class="re_txt relatePlace" style="display: none;">
								<span>관련장소</span><b id="relatePlaceCnt">0</b>
								<div class="bt_rap"></div>
							</div>
							<div class="re_inner">
								<ul class="place_rap"></ul>
							</div>
						</div>

					</div>
					<!--E: .inner_bg-->
				</div>
			</div>
			<!--E: .con_inner -->
		</div>
	</div>
    <h1>Masonry - imagesLoaded progress</h1>
<div class="grid">
  <div class="grid-sizer"></div>    

<%--  <c:forEach items="${tours}" var="t">
  <div class="grid-item" id="${t.tourId}">    
    <div class="card" style="width: 23rem;">
    <c:forTokens items="${t.tourImg}" var="img" delims=",">
        <img class="card-img-top" src="resources/images/cast/${img}" alt="Card image cap">
    </c:forTokens>    
        <div class="card-body">
          <h5 class="card-title">${t.tourTitle}</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div> 
</c:forEach>   --%>   
  
 <!--  <div class="grid-item">
     <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-2.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  
  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-3.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
     <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-4.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-5.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
      <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-6.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  
  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-7.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  <div class="grid-item">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/golden-hour.jpg" />
  </div>
  <div class="grid-item">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/flight-formation.jpg" />
  </div> -->
</div>
</body>
</html>





