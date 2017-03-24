<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Case</title>
<!-- <link href="src/main/webapp/resources/css/slider.css/"> -->
</head>
<body>

  <jsp:include page="customHeader.jsp"/>
  
   

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%; height:50%; margin-top:5px;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" text-align="center">
    <div class="item active">
      <img src="resources/img/samsang2.jpg" text-align="center" alt="Second slide">
    </div>

    <div class="item">
      <img src="resources/img/iPhone7Plus.jpg" text-align="center" alt="Second slide">
    </div>

     <div class="item">
      <img src="resources/img/sliding1.jpg" text-align="center" alt="Second slide">
    </div>
 
     <div class="item">
      <img src="resources/img/sliding4.jpg" text-align="center" alt="Third slide">
    </div>
    
        <div class="item">
      <img src="resources/img/sliding5apple.jpg" text-align="center" alt="Four slide">
    </div>
    
        <div class="item">
      <img src="resources/img/sliding6 apple.jpg" text-align="center" alt="Five slide">
    </div>
    
    
    
    
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="auto" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="auto" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</body>
</html>
