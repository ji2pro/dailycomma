<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Daily Comma</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <!-- Custom Stylesheets -->
    <link rel="stylesheet" type="text/css" href="./resources/include/css/lodgmentSearch-css.css" />
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</head>
<body>
<div class="container-fluid" id="wrapper">
    <div class="datepicker-container">
        <i class="icon-staylist icon-calendar-on" ></i>
        <input type="text"
               name="daterange" value="01/01/2018 - 01/15/2018" size="22" style="background-color:transparent; border:none"/>
        <img
                src="https://yaimg.yanolja.com/joy/pw/place/bullet-datepicker-check.svg"
                alt=""><span>1박</span>
    </div>
    <ul class="nav">
        <li class="nav-item"><a class="nav-link active" href="#">모텔</a></li>
        <li class="nav-item"><a class="nav-link" href="#">#마이룸</a></li>
        <li class="nav-item"><a class="nav-link" href="#">#야놀자호텔</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#">#신축/리모델링</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#">#인기숙소</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#">#파티룸</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#">#무료영화</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#">
            <button type="button" class="filter__refresh-btn f-right">
                <i class="filter-icon filter-icon__refresh"></i>
                <!-- react-text: 60597 -->
                <!-- /react-text -->
                <em>필터 초기화</em>
            </button>
        </a></li>
    </ul>

    <div    class="popover-content animate-bounce-down popover-filter__option"
            data-popover-content="true" style="display: block;">
        <div class="layer-default">
            <div class="radio-list inner">
                <div class="input-radio">
                    <input type="checkbox" id="basic" name="sortFilter" value="on"><label
                        for="basic">기본순</label>
                </div>
                <div class="input-radio input-radio_active">
                    <input type="checkbox" id="like" name="sortFilter" value="on"><label
                        for="like">인기순</label>
                </div>
                <div class="input-radio">
                    <input type="checkbox" id="hot" name="sortFilter" value="on"><label
                        for="hot">가볼래요 많은 순</label>
                </div>
            </div>
        </div>
    </div>


 <div class="row mb-2">
        <div class="col-md-10">
            <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                <div class="card-body d-flex flex-column align-items-start">
                    <strong class="d-inline-block mb-2 text-primary">World</strong>
                    <h3 class="mb-0">
                        <a class="text-dark" href="#">Featured post</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 12</div><i class="price-label label-reserve">예약가</i>


                    <span class="score-rap"><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score05"></i></span>

                    <p class="card-text mb-auto">This is a wider card with
                        supporting text below as a natural lead-in to additional content.</p>
                    <a href="#">Continue reading</a>
                </div>
                <img class="card-img-right "
                     src="./room.jpg"
                     width="230" height="260" alt="Card image cap">
            </div>

<!--             <div class="card flex-md-row mb-4 shadow-sm h-md-250">
                <div class="card-body d-flex flex-column align-items-start">
                    <strong class="d-inline-block mb-2 text-success">Design</strong>
                    <h3 class="mb-0">
                        <a class="text-dark" href="#">Post title</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 11</div>

                    <span class="score-rap"><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score10"></i><i class="icon-staylist icon-staylist-score score05"></i></span>
                    <p class="card-text mb-auto">This is a wider card with
                        supporting text below as a natural lead-in to additional content.</p>
                    <a href="#">Continue reading</a>
                </div>
                <img class="card-img-right flex-auto d-none d-lg-block"
                     src="//yaimg.yanolja.com/resize/place/v4/2017/08/21/11/640/599a445240a802.32248447.jpg"
                     width="200" height="200" alt="Card image cap">
            </div> -->
        </div>
        <div class="map-maker-guide">
            <!--        <span><i class="quadrange maker-motel"></i><em>모텔</em></span><span><i
                        class="quadrange maker-hotel"></i><em>호텔</em></span><span><i
                        class="quadrange maker-pension"></i><em>펜션</em></span><span><i
                        class="quadrange maker-guesthouse"></i><em>게스트하우스</em></span><span><i
                        class="quadrange maker-nopartner"></i><em>비제휴</em></span>-->
            <img src="../../../../../../../../Desktop/프로젝트/DailyComma캐스트디자인/images/제목%20없음.png" width="600" height="500">
        </div>
    </div>
</div>

</body>

<script>
    $(function() {
        $('input[name="daterange"]').daterangepicker(
            {
                opens : 'left'
            },
            function(start, end, label) {
                console.log("A new date selection was made: "
                    + start.format('YYYY-MM-DD') + ' to '
                    + end.format('YYYY-MM-DD'));
            });
    });
</script>
<script type="text/javascript"></script>
</html>