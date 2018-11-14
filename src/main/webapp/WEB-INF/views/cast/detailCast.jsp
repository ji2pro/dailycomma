<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<meta charset="utf-8"/>
<title>캐스트 상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap 4.1.3 -->
<%--<link rel="stylesheet" type="text/css" href="bootstrap-4.1.3/css/bootstrap.min.css"/>
<script src="bootstrap-4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<!-- Custom Stylesheets -->

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>--%>
<link href="<%=request.getContextPath()%>/resources/include/css/detailCast.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/resources/include/js/cast/detailCast.js"></script>
<script>
    var path = "<c:url value='/'/>"
</script>
<body>
<div class="container-fluid" id="wrapper">

    <div id="topContent" class="contents">
        <!--S: .con_inner -->
        <div class="con_inner">
            <div class="con_detail bord_b">
                <div id="side_menu" class="side_menu">
                    <%--오른쪽 버튼--%>
                    <ul class="right">
                        <li name="btnLike">
                            <a href="#none" class="likey" id="${getDetailCast.tourId}">
                                <span class="a${getDetailCast.likeyn}"></span>
                            </a>
                        </li>
                        <li class="mg_top" id="likey"><a href="#"><span class="bl_top"></span></a></li>
                    </ul>
                </div>
                <div class="inner_bg">
                    <div class="detail_title">
                        <h3 class="sc_out"></h3>
                        <p id="jsonTitle">인생샷착즙기 반짝뽕쨕 빛축제7${getDetailCast.tourId}//${getDetailCast.likeyn}</p>
                        <div class="count">
                            <span class="day" id="jsonRegisterdDate">2018-09-27 18:15:24</span>
                            <span style="color:red; margin-left:20px;" class="fas fa-heart"></span><b
                                name="jsonLikeCount">5</b>
                            <span class="ico_read"></span>
                            <span class="fas fa-glasses"></span>
                            <b id="readCount">686</b>
                        </div>
                        <a href="#none" class="reply" style="display: none;">
                            <span>댓글</span>
                            <b name="jsonCommentCount"></b></a>
                    </div>
                    <div class="detail_area">
                        <p style="text-align: center; width: 100%; margin: 0px; padding: 0px;" align="center">
                            <img name="target_contents_images"
                                 src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f7305dc71.19082667.jpg">
                        </p>
                        <p style="text-align: center; width: 100%; margin: 0px; padding: 0px;" align="center">
                            <br>
                            <img name="target_contents_images"
                                 src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f73abbd13.09747372.jpg">
                            <a href="yanoljamotel://Leisure?target=detail&amp;param[idx]=37149" target="_self">
                                <img name="target_contents_images"
                                     src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb2294b34564.47882131.jpg">
                            </a>&nbsp;
                        </p>
                        <p style="text-align: center; width: 100%; margin: 0px; padding: 0px;" align="center">
                            <br>
                            <img name="target_contents_images"
                                 src="http://yaimg.yanolja.com/v5/2018/09/27/18/1280/5bac9f7272b250.11914022.jpg">
                            <a href="yanoljamotel://Leisure?target=detail&amp;param[idx]=37545&#10;" target="_self">
                                <img name="target_contents_images"
                                     src="http://yaimg.yanolja.com/v5/2018/10/08/18/1280/5bbb22bea40e34.52950782.jpg">
                            </a>&nbsp;
                        </p>
                        <%--아랫쪽 버튼--%>
                        <div class="bt_rap">
                            <div class="bt_detail">
                                <ul>
                                    <li>
                                        <button type="button" name="btnLike" class="likey" id="${getDetailCast.tourId}">
                                            <span class="a${getDetailCast.likeyn}"></span>
                                        </button>
                                        <span class="bt_txt">좋아요</span>
                                        <b name="jsonLikeCount">${getDetailCast.totalLike}</b>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>