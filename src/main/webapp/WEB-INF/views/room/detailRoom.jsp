<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
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
<div class="py-5">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
<%--                <div class="carousel slide" data-ride="carousel" id="carousel2">
                    <div class="carousel-inner">
                        <c:forTokens items="${getAllImg.roomImg}" delims="||" var="img" varStatus="status">
                            <c:if test="${status.first}">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid w-100" src="/dailycomma/upload/${img}"/>
                                </div>
                            </c:if>
                            <c:if test="${!status.first}">
                                <div class="carousel-item">
                                    <img class="d-block img-fluid w-100" src="/dailycomma/upload/${img}"/>
                                </div>
                            </c:if>
                        </c:forTokens>
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                        <span class="sr-only">Previous</span> </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next" style="">
                        <span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
                </div>--%>
            </div>
        </div>
    </div>
</div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active show" href="" data-toggle="tab"
                           data-target="#tabone">객실</a></li>
                    <li class="nav-item"><a href="" class="nav-link" data-toggle="tab" data-target="#tabtwo">후기</a></li>
                </ul>
                <div class="tab-content mt-2">
                    <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                        <c:forEach var="list" items="${getDetailRooms}">
                                <div class="row py-4 border-bottom border-secondary">
                                    <div class="col">
                                        <div class="roomtitle">${list.roomName}</div>
                                        <div class="roomtip">객실 정보 : ${list.roomInfo}</div>
                                        <div class="roomtip">기준2명 (최대인원${list.roomQuantity}명)</div>
                                        <div class="py-3"><span class="room-label f-right" >숙박${list.roomPrice}원</span></div>
                                        <button class="btn btn-info btn-block color-gradation"> 예약하기</button>
                                    </div>

                                <div class="col">
                                    <div class="carousel slide" data-ride="carousel" id="carousel">
                                        <div class="carousel-inner">
                                            <c:forTokens items="${list.roomImg}" delims="||" var="img" varStatus="status">
                                                <c:if test="${status.first}">
                                                    <div class="carousel-item active">
                                                        <img class="d-block img-fluid w-100" src="/dailycomma/upload/${img}"/>
                                        </div>
                                        </c:if>
                                        <c:if test="${!status.first}">
                                            <div class="carousel-item">
                                                <img class="d-block img-fluid w-100" src="/dailycomma/upload/${img}"/>
                                            </div>
                                        </c:if>
                                            </c:forTokens>
                                        </div>
                                        <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                            <span class="sr-only">Previous</span> </a>
                                        <a class="carousel-control-next" href="#carousel" role="button" data-slide="next" style=""> <span
                                                class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
                                    </div>
                                    <%--<img class="d-block img-fluid w-100 rounded" src="../../객실이미지1.png">--%>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                        <div class="row">
                            <div class="col-sm-1">
                                <button class="btn btn-primary" type="submit" style="">추천</button>
                            </div>
                            <div class="col-md-7">
                                <div class="col offset-md-10">
                                    <p class="icon text-warning">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <textarea rows="6" cols="100" style="border:0; resize:none;"
                                  placeholder="후기를 남겨주세요."></textarea>
                        <div class="row">
                            <div class="col-sm-2">록맨</div>
                            <div class="col-sm-3">프리미엄룸</div>
                            <div class="col-sm-3">2018-10-13</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>