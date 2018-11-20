<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="utf-8"/>
<title>캐스트 상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath()%>/resources/include/css/detailCast.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/resources/include/js/cast/detailCast.js"></script>
<script>
    var path = "<c:url value='/'/>"
    var tourId = "${getDetailCast.tourId}";
</script>
<body>
<div class="container-fluid">
    <div id="topContent" class="contents">
        <!--S: .con_inner -->
        <div class="con_inner">
            <div class="con_detail bord_b">
                <div id="side_menu" class="side_menu">
                    <%--오른쪽 버튼--%>
                    <ul class="right">
                        <c:if test="${! empty getDetailCast.likeyn}">
                        <li name="btnLike">
                            <a href="#none" class="likey" id="${getDetailCast.tourId}">
                                <span class="a${getDetailCast.likeyn}"></span>
                            </a>
                        </li>
                        </c:if>
                        <li class="mg_top" id="likey"><a href="#"><span class="bl_top"></span></a></li>
                    </ul>
                </div>
                <div class="inner_bg">
                    <div class="detail_title">
                        <h3 class="sc_out"></h3>
                        <p id="jsonTitle">인생샷착즙기 반짝뽕쨕 빛축제7${getDetailCast.tourId}//${getDetailCast.likeyn}</p>
                        <div class="count">
                            <span class="day" id="jsonRegisterdDate">2018-09-27 18:15:24</span>
                            <span style="color:red; margin-left:20px;" class="fa fa-heart"></span><b
                                name="jsonLikeCount">5</b>
                            <span class="ico_read"></span>
                            <span class="fas fa-glasses"></span>
                            <b id="readCount">686</b>
                        </div>
                        <a href="#none" class="reply" style="display: none;">
                            <span>댓글</span>
                            <b name="jsonCommentCount"></b></a>
                    </div>
                    ${getDetailCast.tourImg}
                    <div class="detail_area">
                        <c:forTokens items="${getDetailCast.tourImg}" delims="," var="img" varStatus="status">
                            <c:if test="${status.first}">
                            <p style="text-align: center; width: 100%; margin: 0px; padding: 0px;" align="center">
                                <img name="target_contents_images"
                                     src="<c:url value='/resources/images/cast/${img}'/>">
                            </p>
                            </c:if>
                            <c:if test="${!status.first}">
                            <p style="text-align: center; width: 100%; margin: 0px; padding: 0px;" align="center">
                                <br>
                                <img name="target_contents_images"
                                     src="<c:url value='/resources/images/cast/${img}'/>">
                                &nbsp;
                            </p>
                            </c:if>
                        </c:forTokens>

                        <%--아랫쪽 버튼--%>
                        <c:if test="${! empty getDetailCast.likeyn }">
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
                        </c:if>
                    </div>
                </div>
            </div>

            <br>
            <%--후기 리스트--%>
            <div class="con_detail bord_b addPostList">

            </div>
            <br>

            <div style="display: table; margin-left: auto; margin-right: auto;">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item paging">
                            <a class="page-link " onclick="postContent(Previous())">Previous</a>
                        </li>

                        <%--태그 버튼 들어옴--%>

                        <li class="page-item">
                            <a class="page-link" onclick="postContent(Next())">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <c:if test="${login ne null}">
                <div class="inputButton">
<!--                     <button class="insertComment"> -->
					<button class="btn btn-outline-dark insertComment">
                        <a>댓글 작성하기</a>
                    </button>
                </div>
				<div class="insertTextDiv mt-2">
					<textarea id="insertTextarea" name="inquiryContent" rows="4" class="inp_txt2"></textarea>
				</div>
                <div class="commentSubmit">
                    <button class="btn btn-block btn-primary commentSubmitButton">
                        <a>등록</a>
                    </button>
                </div>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>