<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script>
        var path = "<c:url value='/'/>"
    </script>
    <script src="<%=request.getContextPath()%>/resources/include/js/room/festivalList.js"></script>
</head>
<body>
<div class="sub-detail-contents" id="sub-container">
    <div class="sub-detail-inner">
        <!-- left-content -->
        <div class="left-content">
            <p class="location-lst">
                <span>하이라이트</span>
                <span class="active">축제&amp;행사</span>
            </p><h4 class="sub-detail-title">기본정보</h4>
            <div class="detail-cont"><h5>미래적 건축에 따뜻함을 더하다, DDP LED 장미정원</h5>

                <p style="margin: 0px;">&nbsp;</p>

                <p style="margin: 0px;">동대문디자인플라자(DDP) 이간수문전시장 옆에 펼쳐진 25,550송이의 눈부신 장미정원이 상설전시한다.</p>

                <p style="margin: 0px;">&nbsp;</p>

                <p style="margin: 0px; line-height: 1.8;">지난 해 가을 DDP 잔디언덕에서 선보여 시민들의 많은 사랑을 받았던 LED 장미정원이 4월 18일부터 이간수문전시장 옆 잔디공원에서 시민들을 맞이하고 있다. 가족과 친구, 연인 등 소중한 사람들과 함께 장미정원을 산책하며 아름다운 야경을 함께&nbsp;즐길 수 있다.</p>

                <p style="margin: 0px; line-height: 1.8;">&nbsp;</p>

                <p style="margin: 0px; line-height: 1.8;">이번 LED 장미정원은 총 25,550송이로 구성됐다. 이는 70에 365를 곱한 수로, 대한민국이 광복을 맞은 지 70주년이 되는 해를 기념하여 1년 365일 세계 시민들과 축제처럼 즐기고자 하는 마음에서 비롯됐다. 우리나라 사람들이 가장 좋아하는 꽃으로 20년간 부동의 1위를 차지해 온 장미(여론조사기관 갤럽 발표)를 택해 '모두를 위한 콘텐츠'로서의 의미를 더했다.<span></span></p>
            </div>

            <!-- sub-detail-slide -->
            <div class="sub-detail-slide-wrap">
                <p class="sub-detail-slide-btn prev"><a href="#"><span></span></a></p>
                <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 481px;"><div class="sub-detail-slide bxslider" style="width: 1215%; position: relative; transition-duration: 0s; transform: translate3d(-1005px, 0px, 0px);">
                    <div class="item bx-clone" style="float: left; list-style: none; position: relative; width: 1005px;" aria-hidden="true">
                    <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=351&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="DDP LED 장미정원">
                </div>
                    <div class="item" style="float: left; list-style: none; position: relative; width: 1005px;" aria-hidden="false">
                        <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=351&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="DDP LED 장미정원">
                    </div>
                    <div class="item bx-clone" style="float: left; list-style: none; position: relative; width: 1005px;" aria-hidden="true">
                        <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=351&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="DDP LED 장미정원">
                    </div></div></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div></div></div></div>
                <p class="sub-detail-slide-btn next"><a href="#"><span></span></a></p>
            </div><!--// sub-detail-slide -->
        </div><!--// left-content -->

        <!-- right-content -->
        <aside class="right-content">
            <div class="aside" style="width: auto; top: auto; height: auto; bottom: auto;"><!-- scroll fixed 추가 -->
                <div class="detail-box">
                    <span>상세정보</span>
                </div>
                <div class="right-content-inner">

                    <dl class="detail-type">
                        <dt>발행일 / 수정일</dt>
                        <dd>
                            2016.01.02 / 2018.11.12</dd>
                    </dl>
                    <dl class="detail-type">
                        <dt>행사 기간</dt>
                        <dd>
                            2015.04.18 ~ 2020.12.31</dd>
                    </dl>
                    <dl class="detail-type">
                        <dt>전화번호</dt>
                        <dd>02-2153-0000</dd>
                    </dl>
                </div>
            </div>
        </aside><!--// right-content -->
    </div>
</div>
</body>
</html>
