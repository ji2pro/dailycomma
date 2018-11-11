<%--
  Created by IntelliJ IDEA.
  User: JunYoung
  Date: 2018-11-11
  Time: 오후 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>apiTest.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/resources/include/css/room/apiTest.css">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
          crossorigin="anonymous">
    <script src="<%=request.getContextPath()%>/resources/include/js/room/apiTest.js"></script>
</head>
<body>
<div class="sub-container" id="sub-container-type1">

    <div class="container-inner">
        <p class="location-lst">
            <span>하이라이트</span>
            <span class="active">축제&amp;행사</span>

        </p>
        <ul class="lst-type-card  active">
            <!-- 인터파크 이벤트 컨텐츠 노출 제외 조건 추가   17007909 -->
            <li>
                <a href="http://korean.visitseoul.net/event-festival/event-festival/DDP-LED-장미정원_/540?curPage=1">
                    <div class="img-cont"><img
                            src="http://korean.visitseoul.net/comm/getImage?srvcId=POST&amp;parentSn=540&amp;fileTy=POSTTHUMB&amp;fileNo=3&amp;thumbTy=M"
                            alt="DDP LED 장미정원"></div>
                    <div class="lst-infor-wrap">
                        <div class="lst-infor-title">DDP LED 장미정원</div>
                        <div class="lst-infor-text">
                            <div class="lst-infor-text-inner">2015.04.18 ~ 2020.12.31</div>
                        </div>
                        <div class="lst-infor-link">
                            자세히 보기<i class="ion-ios-arrow-thin-right"></i>
                        </div>
                    </div>
                    <div class="ico-arrow"><span></span></div>
                </a>
            </li>
            <!-- 인터파크 이벤트 컨텐츠 노출 제외 조건 추가   17007909 -->
            <li>
                <a href="/event-festival/김홍도--Alive-Sight-Insight_/27321?curPage=1">
                    <div class="img-cont"><img
                            src="http://korean.visitseoul.net/comm/getImage?srvcId=POST&amp;parentSn=27321&amp;fileTy=POSTTHUMB&amp;fileNo=1&amp;thumbTy=M"
                            alt="김홍도  Alive: Sight, Insight"></div>
                    <div class="lst-infor-wrap">
                        <div class="lst-infor-title">김홍도 Alive: Sight, Insight</div>
                        <div class="lst-infor-text">
                            <div class="lst-infor-text-inner">2018.09.18 ~ 2019.02.24</div>
                        </div>
                        <div class="lst-infor-link">
                            자세히 보기<i class="ion-ios-arrow-thin-right"></i>
                        </div>
                    </div>
                    <div class="ico-arrow"><span></span></div>
                </a>
            </li>
            <!-- 인터파크 이벤트 컨텐츠 노출 제외 조건 추가   17007909 -->
            <li>
                <a href="/event-festival/2018-서울사진축제_/27297?curPage=1">
                    <div class="img-cont"><img
                            src="http://korean.visitseoul.net/comm/getImage?srvcId=POST&amp;parentSn=27297&amp;fileTy=POSTTHUMB&amp;fileNo=3&amp;thumbTy=M"
                            alt="2018 서울사진축제"></div>
                    <div class="lst-infor-wrap">
                        <div class="lst-infor-title">2018 서울사진축제</div>
                        <div class="lst-infor-text">
                            <div class="lst-infor-text-inner">2018.11.01 ~ 2019.02.10</div>
                        </div>
                        <div class="lst-infor-link">
                            자세히 보기<i class="ion-ios-arrow-thin-right"></i>
                        </div>
                    </div>
                    <div class="ico-arrow"><span></span></div>
                </a>
            </li>

        </ul>

        <!-- paging -->
        <div class="paging-lst"><a href="#" onclick="return false;" class="icon prev"><i class="ion-chevron-left"></i><i
                class="ion-chevron-left"></i><span class="hd-element">처음 페이지</span></a><a href="#"
                                                                                          onclick="return false;"
                                                                                          class="icon prev"><i
                class="ion-chevron-left"></i><span class="hd-element">이전 페이지</span></a><a href="?curPage=1"
                                                                                          class="on">1</a><a
                href="?curPage=2">2</a><a href="#" onclick="return false;" class="icon next"><i
                class="ion-chevron-right"></i><span class="hd-element">다음 페이지</span></a><a href="?curPage=2"
                                                                                           class="icon next"><i
                class="ion-chevron-right"></i><i class="ion-chevron-right"></i><span
                class="hd-element">마지막 페이지</span></a>
        </div>
        <!-- //paging -->

    </div>
</div>
</body>
</html>
