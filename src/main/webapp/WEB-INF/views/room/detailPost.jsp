<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="review-detail">
        <div class="review-detail__title">
        	<span class="badge-rap">${getDetailPost.postscriptTitle}</span>
        	<em></em>
        </div>
        <div class="review-userinfo">
            <div class="place-review__score">
                <span class="score-rap">
                    <c:forEach var="i" begin="1" end="5" step="1">
                        <c:choose>
                            <c:when test="${getDetailPost.grade >= i}">
                                <i class='fa fa-star starColor' style="color:#ffeb00"></i>
                            </c:when>
                            <c:otherwise>
                                <i class='fa fa-star-o starColor' style="color:#ffeb00"></i>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
               </span>
            </div>
            <span class="nicname">${getDetailPost.memberNick}</span>
            <i class="bar"></i>
            <span class="roomtype">${getDetailPost.roomName}</span>
            <i class="bar"></i><span class="date">${getDetailPost.postscriptDate}</span>
        </div>
        <div class="review-detail__content">
            <div>${getDetailPost.postscriptContent}</div>
        </div>
        <div class="review-detail__btn-rap">
            <button type="button" class="btn btn-dark review-detail__list-btn" >목록</button>
        </div>
    </div>

