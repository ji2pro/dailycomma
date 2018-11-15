function festival(datas) {

    $('#sub-container-type1').show();
    $('.sub-detail-inner').hide();
    var festivalList = "";

    $.each(datas.response.body.items.item, function (idx, datas) {
        festivalList +=
            "<li>" +
            "<a href=\"javascript:detailFestival(" + datas.contentid + ")\">" + /*"<a href=\"/restAPI/"+datas.contentid+"\">"+얘를 ajax 로 불러오는게 좋을듯*/
            "<div class=\"img-cont\">";
        if (typeof datas.firstimage == "undefined") {
            festivalList += "<img src='" + path + "/resources/images/festival/imageReady.jpg' alt=\"" + datas.title + "\">";
        } else {
            festivalList += "<img src=\"" + datas.firstimage + "\" alt=\"" + datas.title + "\">";
        }
        festivalList +=
            "</div>" +
            "<div class=\"lst-infor-wrap\">" +
            "<div class=\"lst-infor-title\">" + datas.title + "</div>" +
            "<div class=\"lst-infor-text\">" +
            "<div class=\"lst-infor-text-inner\">" + datas.eventstartdate + " ~ " + datas.eventenddate + "</div>" +
            "</div>" +
            "<div class=\"lst-infor-link\">" +
            "자세히 보기<i class=\"ion-ios-arrow-thin-right\"></i>" +
            "</div>" +
            "</div>" +
            "<div class=\"ico-arrow\"><span></span></div>" +
            "</a>" +
            "</li>";
    });
    $('.lst-type-card').append(festivalList);
}

function detailFestival(contentid) {
    var detailFestival = "";

    $('#sub-container-type1').hide();
    $('.sub-detail-inner').show();
    $.ajax({
        url: path + "detailAPI/" + contentid,
        success: function (datas) {
            console.log(datas);
            detailFestival +=
                <!-- left-content -->
                "<div class='left-content'>" +
                "<p class='location-lst'>" +
                "<span>하이라이트</span>" +
                "<span class='active'>축제&amp;행사</span>" +
                "</p><h4 class='sub-detail-title'>행사소개</h4>" +
                "<div class='detail-cont'><h5>" + datas.items1.items.item.program + "</h5>" +
                "<p style='margin: 0px;'>&nbsp;</p>" +
                "<p style='margin: 0px;'>" + datas.items1.items.item.subevent + "</p>" +
                "<p style='margin: 0px;'>&nbsp;</p>" +
                "<p style='margin: 0px; line-height: 1.8;'>&nbsp;</p>" +
                "<p style='margin: 0px; line-height: 1.8;'>" + datas.items2.items.item[0].infotext + "<span></span></p>" +
                "</div>" +
                <!-- sub-detail-slide -->
                /*            "<div class='sub-detail-slide-wrap'>"+
                            "<p class='sub-detail-slide-btn prev'><a href='#'><span></span></a></p>"+
                            "<div class='bx-wrapper' style='max-width: 100%;'><div class='bx-viewport' aria-live='polite' style='width: 100%; overflow: hidden; position: relative; height: 481px;'>" +
                            "<div class='sub-detail-slide bxslider' style='width: 1215%; position: relative; transition-duration: 0s; transform: translate3d(-1005px, 0px, 0px);'>" +
                            "<div class='item bx-clone' style='float: left; list-style: none; position: relative; width: 1005px;' aria-hidden='true'>"+
                             /!*for each로 가자*!/
                             "<img src='"+datas.item3.items.item[0].originimgurl+"' alt=''>"+
                             "</div>"+
                             "<div class='item' style='float: left; list-style: none; position: relative; width: 1005px;' aria-hidden='false">"+"
                            "<img src='"+datas.item3.items.item[1].originimgurl+"' alt=''>"+
                            "</div>"+
                            <div class="item bx-clone" style="float: left; list-style: none; position: relative; width: 1005px;" aria-hidden="true">
                                <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=351&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="DDP LED 장미정원">
                                </div></div></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item">
                            <a href="" data-slide-index="0" class="bx-pager-link active">1</a></div></div></div></div>
                            <p class="sub-detail-slide-btn next"><a href="#"><span></span></a></p>
                            </div><!--// sub-detail-slide -->
                            </div><!--// left-content -->*/

                /*"<div class='carousel slide' data-ride='carousel' id='carousel2'>" +
                "<div class='carousel-inner'>";*/
                "<div id='carouselExampleControls' class='carousel slide' data-ride='carousel'>" +
                "<div class='carousel-inner'>";
                
                
            $.each(datas.items3.items.item, function (idx, datas) {
            	var active = "";
            	if (idx == 0 ){
            		active = "active";
            	}
                detailFestival +=
                    "<div class='carousel-item "+active+"'>" +
                    "<img class='d-block img-fluid w-100' src='" + datas.originimgurl + "'/>" +
                    "</div>";
            })
            
            detailFestival +=
                "</div>" +
                "<a class='carousel-control-prev' href='#carouselExampleControls' role='button' data-slide='prev'>" +
                "<span class='carousel-control-prev-icon' aria-hidden='true'></span></a><span class='sr-only'>이전</span>" +
                '<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">'+
                '<span class="carousel-control-next-icon" aria-hidden="true"></span>'+
                '<span class="sr-only">다음</span>'+
                '</a>' +
                "</div>" +

                
                "</div>" + 
                <!-- right-content -->
                "<aside class='right-content'>" +
                "<div class='aside' style='width: auto; top: auto; height: auto; bottom: auto;'>" + <!-- scroll fixed 추가 -->
                "<div class='detail-box'>" +
                "<span>상세정보</span>" +
                "</div>" +
                "<div class='right-content-inner'>" +
                "<dl class='detail-type'>" +
                "<dt>시작일 / 종료일</dt>" +
                "<dd>" +
                datas.items1.items.item.eventstartdate + " / " + datas.items1.items.item.eventenddate + "</dd>" +
                "</dl>" +
                "<dl class='detail-type'>" +
                "<dt>행사 기간</dt>" +
                "<dd>" +
                datas.items1.items.item.playtime + "</dd>" +
                "</dl>" +
                "<dl class='detail-type'>" +
                "<dt>전화번호</dt>" +
                "<dd>" + datas.items1.items.item.sponsor1tel + "</dd>" +
                "</dl>" +
                "</div>" +
                "</div>" +
                "</aside>";
            $('.sub-detail-inner').append(detailFestival);
        }
    });

}

$(function () {

    //날짜와 코드를 입력 받아와서 url에 추가 해야한다.

    $.ajax({
        url: "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&areaCode=1&eventStartDate=20181111&_type=json",
        dataType: 'json',
        success: function (datas) {
            festival(datas);
        }
    });
})