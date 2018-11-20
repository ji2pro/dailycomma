<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>캐스트</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/include/css/cast/cast-css.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.4/imagesloaded.js"></script>
<script src="<%=request.getContextPath()%>/resources/include/js/cast/cast-js.js"></script>
<script>
	var path = "<c:url value='/'/>"
</script>
<style>
.grid{
	height : auto;
}
</style>

</head>

<body>

<div class="grid" style="hegiht: auto">
  <div class="grid-sizer"></div>

<%--  <c:forEach items="${tours}" var="t">
  <div class="grid-item" id="${t.tourId}">    
    <div class="card" style="width: 23rem;">
    <c:forTokens items="${t.tourImg}" var="img" delims=",">
        <img class="card-img-top" src="resources/images/cast/${img}" alt="Card image cap">
    </c:forTokens>    
        <div class="card-body">
          <h5 class="card-title">${t.tourTitle}</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div> 
</c:forEach>   --%>   
  
 <!--  <div class="grid-item">
     <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-2.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  
  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-3.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
     <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-4.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-5.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>

  <div class="grid-item">
      <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-6.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  
  <div class="grid-item">
    <div class="card" style="width: 23rem;">
            <img class="card-img-top" src="resources/images/cast/castimg-7.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
     </div> 
  </div>
  <div class="grid-item">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/golden-hour.jpg" />
  </div>
  <div class="grid-item">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/flight-formation.jpg" />
  </div> -->
</div>
</body>
</html>





