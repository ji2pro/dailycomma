<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
// external js: masonry.pkgd.js, imagesloaded.pkgd.js

// init Masonry after all images have loaded
    var $grid = $('.grid').imagesLoaded( function() {
    $grid.masonry({
        itemSelector: '.grid-item',
        percentPosition: true,
        columnWidth: '.grid-sizer'
    }); 
    });
</script>

    <style>
        * {
            box-sizing: border-box;
        }

        /* force scrollbar */

        html {
            overflow-y: scroll;
        }

        body {
            font-family: sans-serif;
        }

        /* ---- grid ---- */

        .grid {
            background: #ffffff;
        }

        /* clear fix */

        .grid:after {
            content: '';
            display: block;
            clear: both;
        }

        /* ---- .grid-item ---- */

        .grid-sizer,
        .grid-item {
            width: 370px;
        }

        .grid-item {
            float: left;
        }

        .grid-item img {
            display: block;
            max-width: 100%;
        }
    </style>
</head>

<body>
    <h1>Masonry - imagesLoaded progress</h1>

<div class="grid">
  <div class="grid-sizer"></div>
  <div class="grid-item">
    <div class="card" style="width: 23rem;">
        <img class="card-img-top" src="resources/images/cast/castimg-1.jpg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div> 
    
  
  <div class="grid-item">
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
  </div>
</div>

</body>

</html>





 