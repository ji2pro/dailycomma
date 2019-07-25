<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link href="./resources/include/css/management.css" rel="stylesheet" type="text/css"> 
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DailyComma</title>

<style>
 html, body {
  /* background: #333; */
  	height: 100%;
  	overflow: hidden;
  	text-align: center;
 	width: 100wh;
	height: 90vh;
	color: #fff;
	background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
	background-size: 400% 400%;
	-webkit-animation: Gradient 15s ease infinite;
	-moz-animation: Gradient 15s ease infinite;
	animation: Gradient 15s ease infinite;
}

@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

.svg-wrapper {
  height: 60px;
  margin: 0 auto;
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  width: 320px;
}

.shape {
  fill: transparent;
  stroke-dasharray: 0 540; /*140 540 */ 
  stroke-dashoffset: -474; /* -474 */
  stroke-width: 2px;
  stroke: #ffffff;/* #19f6e8; */
}

 .shape:hover {
	stroke: #111;/* #103a47; */ 
}
 
.text {
  color: #fff;
  font-family:  /* 'Open Sans'; */  'Roboto Condensed'; 
  font-size: 32px;
  letter-spacing: 8px;
  line-height: 32px; 
  position: relative;
  top: -48px;
  text-decoration:none;
}

.text:hover { 
	color: #fff; /* #2cb860; *//* #ff8ef5; *//* #103a47; */ /* #FF6666; */ /* #32BBF1; */
	/* text-shadow: 2px 3px 4px white; */
	stroke: #111; 
	transition-delay: 1s;
	text-shadow: 0 0 0px #fff,
	0 0 20px #fff,
	0 0 30px #fff;
	/* 0 0 40px #ff00de; */
	/* 0 0 70px #ff00de,
	0 0 80px #ff00de, */
	/* 0 0 100px #ff00de, 
	0 0 150px #ff00de; */
} 

@keyframes draw {
  0% {
    stroke-dasharray: 140 540;
    stroke-dashoffset: -474;
    stroke-width: 16px;
  }
  100% {
    stroke-dasharray: 760;
    stroke-dashoffset: 0;
    stroke-width: 4px;
    stroke: #ffffff;/* #2cb860; */
  }
}

.svg-wrapper:hover .shape {
  -webkit-animation: 0.8s draw linear forwards;
  animation: 0.8s draw linear forwards;
}

</style>

<script type="text/javascript">
$(window).load(function() {     
     $('#loading').hide();   
    }); 
</script>




</head>
<body>
<!-- height:60, width:320 default 주석 삭제 하지마세요. -->
 	 <div class="svg-wrapper">
  		<svg height="58" width="322" xmlns="http://www.w3.org/2000/svg">
    		<rect class="shape" height="58" width="322" />
  		</svg>
   	<b><a onclick="location.href='<c:url value="/"/>'"  style="cursor: pointer;" class="text">Daily Comma</a></b>
	</div>
	
<!-- <div id="loading"><img id="loading-image" src="./resources/images/myPage/25.gif" alt="Loading..." /></div> -->


</body>
</html>