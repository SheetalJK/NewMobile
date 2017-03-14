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

<script type="text/javascript"   src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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
  
 
  
<!--   <div class="panel panel-primary">
       <div class="panel-heading">Searching Sorting and Pagination in Angular js</div>
        <div class="panel-body">
      <div ng-controller="listitemdata">
        <div class="alert alert-success">
          <p>Sort By: {{sortBy}}</p>
          <p>Reverse: {{reverse}}</p>
          <p>Search Text : {{search}}</p>
        </div>
       
          <div class="col-md-12">
          
            <input type="text" ng-model="search" class="form-control" placeholder="Type your search keyword..">
          </div>
        
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th ng-click="sort('id')">Id
                <span class="glyphicon sort-icon" ng-show="sortBy=='id'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
              </th>
              <th ng-click="sort('product_name')">Product Name
                <span class="glyphicon sort-icon" ng-show="sortBy=='product_name'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
              </th>
              <th ng-click="sort('product_details')">Product Details
                <span class="glyphicon sort-icon" ng-show="sortBy=='product_details'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
              </th>
              
            </tr>
          </thead>
          <tbody>
            <tr dir-paginate="product in products|orderBy:sortBy:reverse|filter:search|itemsPerPage:5">
              <td>{{product.productId}}</td>
              <td>{{product.productName}}</td>
              <td>{{product.productDescription}}</td>
            </tr>
          </tbody>
        </table> 
        <dir-pagination-controls
          max-size="5"
          direction-links="true"
          boundary-links="true" >
        </dir-pagination-controls>
      </div>
    </div>
    
      </div>
<script src="lib/dirPagination.js"></script>
<script src="app/app.js"></script>

 -->
  
<div class="container">
  <h3>New Mobile </h3>
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
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/img/Apple.jpg" margin="0px auto" width="500px" height="300px" text-align="left">
    </div>

    <div class="item">
      <img src="resources/img/AppleMobile.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>

     <div class="item">
      <img src="resources/img/Iphone1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>
 
     <div class="item">
      <img src="resources/img/Moto1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>
    
        <div class="item">
      <img src="resources/img/Nokia1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>
    
        <div class="item">
      <img src="resources/img/Sam1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>
    
     <div class="item">
      <img src="resources/img/samsung-galaxy-j1-mini-prime-2016-1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
    </div>
    
        <div class="item">
      <img src="resources/img/Sony1.jpg" margin="0px auto" width="500px" height="300px" text-align="center">
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
