<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/resources/include/css/room/bundle.css">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
          crossorigin="anonymous">

    <script>
    	var path = "<c:url value='/'/>"
    </script>

    <script src="<%=request.getContextPath()%>/resources/include/js/room/detailRooms.js"></script>

    <%--<script> $(document).ready(funcion(){
        $('#carousel').carousel,'cycle');
    });
    </script>--%>
    <link rel="stylesheet" href="theme.css">
    <style>
        textarea:focus {
            outline: none;
        }

        .roomtitle {
            font-size: 28px;
            color: #333;
        }

        .color-gradation {
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%, #dffff5), color-stop(100%, #dfb8ff));
            color: rgba(97, 99, 98, 0.61);
        }

        .roomtip {
            font-size: 14px;
            margin-top: 10px;
        }

        .f-right {
            float: right;
        }

        .room-label {
            font-size: 20px;
            font-weight: 900;
            margin-top: 10px;
        }

    </style>
</head>

<body>
<%--전체 이미지--%>
<div class="py-5">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="carousel slide" data-ride="carousel" id="carousel2">
                        <div class="carousel-inner">
                            <c:forTokens items="${getAllImg}" delims="||" var="img" varStatus="status">
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
                    <a class="carousel-control-prev" href="#carousel2" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span></a>
                    <a class="carousel-control-next" href="#carousel2" role="button" data-slide="next" style="">
                        <span class="carousel-control-next-icon"></span> </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%--호텔정보--%>
<div class="container">
    <section>
        <div class="place-detail column2"><h2 class="detail-info__title">${getDetailRooms[0].company}</h2>
            <div class="detail-info__address">
                <div>상세 주소 : ${getDetailRooms[0].address}</div>
                <div>연락처 : ${getDetailRooms[0].hostPhone}</div>
                <div>구분 : ${getDetailRooms[0].lodgmentType}</div>
            </div>
            <div class="detail-info__score"><span class="score-rap"><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score05"></i></span><em><!-- react-text: 1983 -->후기
                <!-- /react-text --><!-- react-text: 1984 -->3147<!-- /react-text --><!-- react-text: 1985 -->개
                <!-- /react-text --></em></div>
            <div class="detail-info__tag tag-rap"><!-- react-text: 1987 --> <!-- /react-text --><i
                    class="tag-primary">쿠폰혜택</i><i class="tag-primary">TOP100</i><i class="tag-primary">MY ROOM</i><i
                    class="tag-primary">좋은숙박연구소</i><i class="tag-primary">현장적립</i><i class="tag-primary">최저가보상</i>
                <!-- react-text: 1988 --> <!-- /react-text --></div>
            <ul class="detail-info__tip">
                <li><!-- react-text: 2145 -->미리예약시 <!-- /react-text --><!-- react-text: 2146 -->2%<!-- /react-text -->
                    <!-- react-text: 2147 --> 적립<!-- /react-text --></li>
            </ul>
        </div>
        <div class="detail-theme"><h4 class="sc-out">편의시설 및 테마</h4>
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
        </div>
        <div class="place-badge">
            <div class="coupon-rap">
                <button type="button" class="btn-bestpick"><i class="icon-badge-bestpick"></i></button>
                <button type="button" class="btn-coupon"><i class="icon-badge-coupon"></i></button>
            </div>
        </div>
    </section>
</div>
<%--객실정보 리스트--%>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active show" href="" data-toggle="tab" data-target="#tabone">객실</a>
                    </li>
                    <li class="nav-item">
                        <a href="" class="nav-link postScript" data-toggle="tab" data-target="#tabtwo"
                           id="${getDetailRooms[0].lodgmentNo}">후기</a>
                    </li>
                </ul>
                <div class="tab-content mt-2">

                    <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                        <c:forEach var="list" items="${getDetailRooms}">
                            <div class="row py-4 border-bottom border-secondary">
                                <div class="col">
                                    <div class="place-room__title" data-reactid="182"><em
                                            data-reactid="183">${list.roomName}</em></div>
                                        <%--div class="roomtitle">${list.roomName}</div>--%>
                                    <div class="place-room__tip" data-reactid="184"><span
                                            data-reactid="185">객실 정보 : ${list.roomInfo}</span></div>
                                        <%-- <div class="roomtip">객실 정보 : ${list.roomInfo}</div>--%>
                                    <div class="place-room__tip" data-reactid="184"><span data-reactid="185">기준2명 (최대인원${list.roomQuantity}명</span></div>
                                    <%--<div class="roomtip">기준2명 (최대인원${list.roomQuantity}명)</div>--%>
                                    <div class="py-3"><span class="room-label f-right">숙박${list.roomPrice}원</span></div>
                                    
                                    <c:if test="${list.enable == '1'}">
                                    	<button class="place-room__reserve-btn btn-reserve_on"> 예약하기</button>
                                        <%--<a class="place-room__reserve-btn btn-reserve_on" href=""><button>예약 하기</button></a>--%>
                                	</c:if>
                                	<c:if test="${list.enable == '0'}">
                                		<button class="place-room__reserve-btn btn-reserve_off"> 예약마감</button>
                                	</c:if>
                                	
                                </div>

                                <div class="col">
                                    <div class="carousel slide" data-ride="carousel" id="carousel">
                                        <div class="carousel-inner">
                                            <c:forTokens items="${list.roomImg}" delims="||" var="img"
                                                         varStatus="status">
                                                <c:if test="${status.first}">
                                                    <div class="carousel-item active">
                                                        <img class="d-block img-fluid w-100"
                                                             src="<c:url value='/resources/images/room/${img}'/>"/>
                                                    </div>
                                                </c:if>
                                                <c:if test="${!status.first}">
                                                    <div class="carousel-item">
                                                        <img class="d-block img-fluid w-100"
                                                             src="<c:url value='/resources/images/room/${img}'/>"/>
                                                    </div>
                                                </c:if>
                                            </c:forTokens>
                                        </div>
                                        <a class="carousel-control-prev" href="#carousel" role="button"
                                           data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                            <span class="sr-only">Previous</span> </a>
                                        <a class="carousel-control-next" href="#carousel" role="button"
                                           data-slide="next" style=""> <span
                                                class="carousel-control-next-icon"></span> <span
                                                class="sr-only">Next</span> </a>
                                    </div>
                                        <%--<img class="d-block img-fluid w-100 rounded" src="../../객실이미지1.png">--%>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <%--후기 리스트--%>
                    <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                        <div class="place-room__message"><i class="badge-live">바른후기</i>는 숙소에 직접
                            방문한 회원만 작성할 수 있습니다.
                            <c:if test="${memberLogin ne null}">
                               <%-- ${membarLogin.memberNick}--%>
                                <button type="button" class="review-post__insert-btn" style="float:right" id="${getDetailRooms[0].lodgmentNo}">후기등록</button>
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