<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link href="/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">


  <style>
  .ui-tabs-vertical { width: 55em; }
  .ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: left; width: 12em; }
  .ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100%; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; }
  .ui-tabs-vertical .ui-tabs-nav li a { display:block; }
  .ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; }
  .ui-tabs-vertical .ui-tabs-panel { padding: 1em; float: right; width: 40em;}
  </style>
  
    <script>
  $( function() {
    $( "#tabs" ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
    $( "#tabs li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
  } );
  </script>
<!--     <script>
    $(function(){
        $("#re").click,(function(){
         $(".reserve")
          $.ajax({ url: "reserve.jsp",
        	  		type: "get",
        	  		}).done(function(data){
        	  			$(".reta").html(data);
        	  			})
        	  		})
});
    </script> -->
    
    <script>
    $( function() {
        $( "#tabs" ).tabs({
          beforeLoad: function( event, ui ) {
            ui.jqXHR.fail(function() {
              ui.panel.html(
                "Couldn't load this tab. We'll try to fix this as soon as possible. " +
                "If this wouldn't be a demo." );
            });
          }
        });
      } );
    </script>
</head>

<body>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4" align="center"><span class="oi oi-person"></span>
        </div>
        <div class="col-md-2">
          <br><br>
          <h4>이름</h4>
          <br>
          <h4>닉네임</h4><br>
          <h4>소개</h4>
        </div>
        <div class="col-md-6" style="">
          <form style="">
            <br>
            <input type="text" size="70" class="my-3">
            <input type="text" size="70" class="mt-2">
            <input type="text" size="70" class="mt-4">
            <button class="btn btn-primary btn-lg mt-3" type="submit" style="">정보수정 </button>
          </form>
        </div>
      </div>
    </div>
  </div>
        <div id="tabs">
        <ul>
            <li><a href="point.jsp">포인트</a></li>
            <li><a href="reserve.jsp">예약정보</a></li>
            <li><a href="country.jsp">최근 본 숙소</a></li>
         </ul>
        </div>
        <div class="col">
            <div class="reserve">

        </div>
        </div>    
</body>

</html>