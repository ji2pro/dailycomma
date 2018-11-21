<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/include/css/room/bundle.css" />" rel="stylesheet" type="text/css">
    
    <c:if test="${sessionScope.member eq null}">
    	<c:set var="memberNo" value="no"/>
    </c:if>
    <c:if test="${sessionScope.member ne null}">
    	<c:set var="memberNo" value="${sessionScope.login.memberNo}"/>
    </c:if>
     
    <script>
        var path = "<c:url value='/'/>";
       	var smemberNo = "${memberNo}";
    </script>
    <script>
        function api(location) {
            window.open(path+"festivalList.do?location="+location, "fe","width=1200,height=900");
        }
    </script>

    <script src="<c:url value="/resources/include/js/room/detailRooms.js" />"></script>


</head>

<body>
<!-- 전체 이미지 -->
<div class="row">
	<div class="col-md-12">
		<div class="carousel slide" data-ride="carousel" id="carousel-all">
			<div class="carousel-inner">
				<c:forTokens items="${getAllImg}" delims="," var="img" varStatus="status">
				<c:if test="${status.first}">
					<div class="carousel-item active">
						<span class="image-wrap" style="background: url('<c:url value="/resources/images/lodgment/${img}"/>') center center / cover no-repeat"></span>
					</div>
				</c:if>
				<c:if test="${!status.first}">
					<div class="carousel-item">
						<span class="image-wrap" style="background: url('<c:url value="/resources/images/lodgment/${img}"/>') center center / cover no-repeat"></span>
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
			<h2 class="detail-info__title">${getDetailRooms[0].company} <h1><button class="btn btn-info" style="float: right;" onclick="api('${getDetailRooms[0].location}');">축제 정보 보기</button></h1></h2>
			<div class="detail-info__address">
				<div>상세 주소 : ${getDetailRooms[0].address}</div>
				<div>연락처 : ${getDetailRooms[0].hostPhone}</div>
				<div>구분 : ${getDetailRooms[0].lodgmentType}</div>
			</div>
			<br>
        </div>

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
                    <a href="" class="nav-link postScript lodgmentNo" lodgmentNo="${getDetailRooms[0].lodgmentNo}" data-toggle="tab" data-target="#tabtwo" id="${getDetailRooms[0].lodgmentNo}">후기</a>
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
                                        <c:forTokens items="${list.roomImg}" delims="," var="img" varStatus="status">
                                            <c:if test="${status.first}">
                                                <div class="carousel-item active">
                                                    <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/lodgment/${img}'/>"/>
                                                </div>
                                            </c:if>
                                            <c:if test="${!status.first}">
                                                <div class="carousel-item">
                                                    <img class="d-block img-fluid w-100" src="<c:url value='/resources/images/lodgment/${img}'/>"/>
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
                        <c:if test="${getDetailRooms[0].memberNo != '0'}">
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
</body>
</html>