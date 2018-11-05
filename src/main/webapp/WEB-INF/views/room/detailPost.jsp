<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="review-detail">
        <div class="review-detail__title"><span class="badge-rap"></span><em></em></div>
        <div class="review-userinfo">
            <div class="place-review__score"><span class="score-rap"><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i><i
                    class="icon-staylist icon-staylist-score score10"></i></span></div>
            <span class="nicname">${getDetailPost.memberNick}</span>
            <i class="bar"></i>
            <span class="roomtype">${getDetailPost.roomName}</span>
            <i class="bar"></i><span class="date">15:29:12</span>
        </div>
        <div class="review-detail__content">
            <div>${getDetailPost.postscriptContent}</div>
        </div>
        <div class="review-detail__btn-rap">
            <button type="button" class="review-detail__list-btn" >목록</button>
        </div>
    </div>
</div>

