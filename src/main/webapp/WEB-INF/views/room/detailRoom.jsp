<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="javax.naming.Context" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/include/css/room/bundle.css" />" rel="stylesheet" type="text/css">
    <script src="<c:url value="/resources/include/js/room/detailRooms.js" />"></script>
	<script>
    	var path = "<c:url value='/'/>"
    </script>
    <%--<script> $(document).ready(funcion(){
        $('#carousel').carousel,'cycle');
    });
    </script>--%>
</head>

<body>
<!-- 전체 이미지 -->
<div class="row">
	<div class="col-md-12">
		<div class="carousel slide" data-ride="carousel" id="carousel-all">
			<div class="carousel-inner">
				<c:forTokens items="${getAllImg}" delims="||" var="img" varStatus="status">
				<c:if test="${status.first}">
					<div class="carousel-item active">
<%--                                 <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/room/${img}'/>"/> --%>
						<span class="image-wrap" style="background: url('<c:url value="/resources/images/room/${img}"/>') center center / cover no-repeat"></span>
					</div>
				</c:if>
				<c:if test="${!status.first}">
					<div class="carousel-item">
<%--                                 <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/room/${img}'/>"/> --%>
						<span class="image-wrap" style="background: url('<c:url value="/resources/images/room/${img}"/>') center center / cover no-repeat"></span>
					</div>
				</c:if>
				</c:forTokens>
			</div>
			<a class="carousel-control-prev" href="#carousel-all" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#carousel-all" role="button" data-slide="next" style="">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
</div>

<!--호텔 정보-->
<div class="container">
	<section>
		<div class="place-detail">
			<h2 class="detail-info__title">${getDetailRooms[0].company}</h2>
			<div class="detail-info__address">
				<div>상세 주소 : ${getDetailRooms[0].address}</div>
				<div>연락처 : ${getDetailRooms[0].hostPhone}</div>
				<div>구분 : ${getDetailRooms[0].lodgmentType}</div>
			</div>
			<br> 
            <!-- <div class="detail-info__score"><span class="score-rap"><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score05"></i></span><em>react-text: 1983후기
                /react-text --><!-- react-text: 19843147/react-text --><!-- react-text: 1985개
                /react-text</em></div> 
            <!-- <div class="detail-info__tag tag-rap">react-text: 1987 /react-text<i
                    class="tag-primary">쿠폰혜택</i><i class="tag-primary">TOP100</i><i class="tag-primary">MY ROOM</i><i
                    class="tag-primary">좋은숙박연구소</i><i class="tag-primary">현장적립</i><i class="tag-primary">최저가보상</i>
                react-text: 1988 /react-text</div>
            <ul class="detail-info__tip">
                <li>react-text: 2145미리예약시 /react-text --><!-- react-text: 21462%/react-text
                    react-text: 2147 적립/react-text</li>
            </ul> -->
        </div>
        <!-- <div class="detail-theme"><h4 class="sc-out">편의시설 및 테마</h4>
            <div class="detail-theme__inner">
                <ul class="theme-list">
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0531/2016053116003268e408ba-4e47-47b8-abc0-d193316c483b.png"
                            alt="주차가능"><span>주차가능</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0823/201608231726576c463ada-81be-424a-bf86-28b943930a10.png"
                            alt="비즈니스"><span>비즈니스</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/1107/20161107101441f54956e7-d661-4ba0-a17c-e663b5684cb4.png"
                            alt="글램핑"><span>글램핑</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0531/201605311605014ea4ef57-5eda-4564-a3d2-4fd80c74372d.png"
                            alt="파티룸"><span>파티룸</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0823/20160823172944fe239a1a-76ba-4b79-a82a-66baf600f8ae.png"
                            alt="24시간데스크"><span>24시간데스크</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0823/2016082317303242545e55-6fef-43fd-b391-22f2005e3481.png"
                            alt="객실내PC"><span>객실내PC</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2017/0522/20170522150205d63c20fa-213b-4567-a6b0-6f77e97ec19e.png"
                            alt="무료영화"><span>무료영화</span></li>
                    <li class="theme-item"><img
                            src="//yaimg.yanolja.com/files/2016/0823/20160823171448286686e8-1fd6-45e2-a154-be8f66f46bfc.png"
                            alt="객실금연"><span>객실금연</span></li>
                </ul>
            </div>
        </div> -->
        <div class="place-badge">
            <div class="coupon-rap">
                <button type="button" class="btn-bestpick"><i class="icon-badge-bestpick"></i></button>
                <button type="button" class="btn-coupon"><i class="icon-badge-coupon"></i></button>
            </div>
        </div>
    </section>
</div>

<!--객실정보 리스트-->
<div class="container py-1" id="roomListContainer">
    <div class="row">
        <div class="col-md-12 mb-5">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active show" href="" data-toggle="tab" data-target="#tabone">객실</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link postScript" data-toggle="tab" data-target="#tabtwo" id="${getDetailRooms[0].lodgmentNo}">후기</a>
                </li>
            </ul>
            <div class="tab-content mt-2">
                <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                    <c:forEach var="list" items="${getDetailRooms}" varStatus="each">
                        <div class="row py-4 place-room__row">
                            <div class="col">
                                <div class="place-room__title">
                                    <em>${list.roomName}</em>
								</div>
                                <div class="place-room__tip">
                                    <span>객실 정보 : ${list.roomInfo}</span>
								</div>
                                <div class="place-room__tip">
                                    <span>기준 2명 (최대 인원 ${list.roomQuantity}명)</span>
                                </div>
                                <div class="py-2">
                                    <span class="room-label f-right">숙박 <fmt:formatNumber value="${list.roomPrice}" pattern="#,###" />원</span>
                                </div>
                                
                                <c:if test="${list.enable == '1'}">
                                	<button class="place-room__reserve-btn btn-reserve_on" onclick="reserve_click('${list.roomNo}')">예약하기</button>
                            	</c:if>
                            	<c:if test="${list.enable == '0'}">
                            		<button class="place-room__reserve-btn btn-reserve_off">예약 마감</button>
                            	</c:if>
                            	
                            </div>

                            <div class="col">
                                <div id="carousel-${each.count}" class="carousel slide carousel-each" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <c:forTokens items="${list.roomImg}" delims="||" var="img" varStatus="status">
                                            <c:if test="${status.first}">
                                                <div class="carousel-item active">
                                                    <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/room/${img}'/>"/>
                                                </div>
                                            </c:if>
                                            <c:if test="${!status.first}">
                                                <div class="carousel-item">
                                                    <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/room/${img}'/>"/>
                                                </div>
                                            </c:if>
                                        </c:forTokens>
                                    </div>
                                    <a class="carousel-control-prev" href="#carousel-${each.count}" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon"></span>
                                        <span class="sr-only">이전</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carousel-${each.count}" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon"></span>
                                        <span class="sr-only">다음</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <!-- 후기 리스트 -->
                <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                    <div class="place-room__message">
                        <i class="badge-live">바른 후기</i>는 숙소에 직접 방문한 회원만 작성할 수 있습니다.
                        <c:if test="${login ne null}">
                            <button type="button" class="review-post__insert-btn" style="float:right" id="${getDetailRooms[0].lodgmentNo}">후기 등록</button>
                        </c:if>
                    </div>
                    <div class="review-box" id="postResult">

                    </div>
                    <ul class="review-list">

                    </ul>
                    <fieldset id="insertPostFieldset">

                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>

<%--    <div class="login-cont">
        <div class="inp-txt-member">
            <select>
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>
            <input type="text" name="email" value="" placeholder="제목을 입력 해주세요">
        </div>

        <div class="inp-txt-member">
            <textarea rows="4" cols="100" placeholder="내용을 입력 해주세요."style="resize: none;"></textarea>
        </div>
        <button type="submit" name="button" class="btn-gradation" id="btnToJoinEnd">
            다음
        </button>
    </div>--%>

</body>
</html>