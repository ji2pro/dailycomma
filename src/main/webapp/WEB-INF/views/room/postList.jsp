<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="list" items="${getPostscriptList}">
    <li class="place-review__item"></li>
    <a role="button" class="detail" id="${list.postscriptNo}">
        <div class="review-info">
            <div class="review-info__title">
                <span class="badge-rap"><i class="badge-best"><em>추천</em></i></span><strong>일요일 가기 좋은곳</strong></div>
            <p class="review-info__content"> ${list.postscriptContent}</p>
            <div class="review-userinfo">
                <span class="nicname">${list.memberNick}</span><i class="bar"></i><span
                    class="roomtype">${list.roomName}</span><i class="bar"></i><span class="date">2017.05.07</span>
            </div>
            <div class="place-review__score"><span class="score-rap"><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i></span>
            </div>
        </div>
    </a>
</c:forEach>
