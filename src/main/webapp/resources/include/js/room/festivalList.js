function festival(datas){

    console.log(datas);
    console.log(datas.response.body.items.item[0].addr1);
    console.log(datas.response.body.items.item[0].firstimage);
    console.log(datas.response.body.items.item.length);

    var festivalList = "";

    $.each(datas.response.body.items.item,function(idx,datas) {
        festivalList +=
            "<li>" +
            /*"<a href=\"/restAPI/"+datas.contentid+"\">"+*/
            "<div class=\"img-cont\">";
             if(typeof datas.firstimage == "undefined"){
                 festivalList += "<img src='"+ path +"/resources/images/festival/imageReady.jpg' alt=\""+datas.title+"\">";
             }else{
                 festivalList += "<img src=\""+datas.firstimage+"\" alt=\""+datas.title+"\">";
             }
        festivalList +=
            "</div>" +
            "<div class=\"lst-infor-wrap\">" +
            "<div class=\"lst-infor-title\">"+datas.title+"</div>" +
            "<div class=\"lst-infor-text\">" +
            "<div class=\"lst-infor-text-inner\">"+datas.eventstartdate+" ~ "+datas.eventenddate+"</div>" +
            "</div>" +
            "<div class=\"lst-infor-link\">"+
            "자세히 보기<i class=\"ion-ios-arrow-thin-right\"></i>"+
            "</div>" +
            "</div>" +
            "<div class=\"ico-arrow\"><span></span></div>" +
            "</a>" +
            "</li>";
    });
    $('.lst-type-card').append(festivalList);
}
function detailFestival(){

}
$(function () {

    //날짜와 코드를 입력 받아와서 url에 추가 해야한다.
    
    $.ajax({
        url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&areaCode=2&eventStartDate=20181111&_type=json",
        dataType: 'json',
        success : function(datas) {
            festival(datas);
        }
    });
})