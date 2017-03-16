<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Case</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href=""src/main/webapp/resources/css/slider.css""/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <jsp:include page="customHeader.jsp"/>
  
<%-- <div class="row">
<c:forEach item="${categoryList}" var=l>
<div style="fornt-wegiht:bold"class="col-md-2">${category.categoryName}</div>
</c:forEach>
<c:forEach item="${category.subCategory}" var="l">
<div>${subCategory.subCategoryname}</div>
</c:forEach>
</div>
<hr>
<div>
 --%>
 
<%-- <div class="jumbotron">
 
<div class="row">

<c:forEach var="category" items="${categoryList}">

<div class="dropdown">
	<div class="col-md-2">
 <button class="dropbtn">${category.categoryName}</button>
  <div class="dropdown-content">
  	<div class="row">
    	<a href="#"><c:forEach var="subCategory" items="${category.subCategory}">
		<div class="col-md-12"><ul><li>
			${subCategory.subCategoryname}</li></ul>
		</div>
	</c:forEach> </a>
    </div>
  </div>
  </div>
</div>
</c:forEach>
</div>
</div> --%>
  
 

  
<div class="container-center">
  
</div>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
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
      <img src="resources/img/Apple.jpg" Height="200px" text-align="center">
    </div>

    <div class="item">
      <img src="resources/img/AppleMobile.jpg" text-align="center" alt="First slide">
    </div>

     <div class="item">
      <img src="resources/img/Iphone1.jpg" text-align="center" alt="Second slide">
    </div>
 
     <div class="item">
      <img src="resources/img/Moto1.jpg" text-align="center" alt="Third slide">
    </div>
    
        <div class="item">
      <img src="resources/img/Nokia1.jpg" text-align="center" alt="Four slide">
    </div>
    
        <div class="item">
      <img src="resources/img/Sam1.jpg" text-align="center" alt="Five slide">
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

</body>
</html>
