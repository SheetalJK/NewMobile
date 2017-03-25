<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
  <link href="resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
</head>
<body>
 		 <jsp:include page="customHeader.jsp" />
 	
 	<section id="content">
        	<div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="/newmobile/">Home</a></li>
						<li class="active">View Product</li>
					</ul>
        		</div>
        	</div>
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
						<header class="content-title">
							<h2 class="title" style="color:#ff6600">View Product</h2>
						</header>
    
 	<div class="row">
 	<div ng-app="myApp" ng-controller="myCtrl" style="margin-top: 0px;background-color:#f1f1f1;">
	<div class="col-xs-8 col-sm-6">
	<img style="max-width:100%" src="resources/Product/{{myScope.productId}}.jpg">
	</div>
	<div>
	<tr><td>
	</br>
	<h4>{{myScope.productName}}</h4>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	<td><h4 class="title-price"><small>PRODUCT PRICE</small></h4></td>
    <td><h4 style="margin-top:0px;"><small>{{myScope.price}}</small></h4></td>
    <div class="section" style="padding-bottom:20px;">
    <a href="addtocart-{{myScope.productId}}" class="btn btn-primary">Add to Cart</a>
    <a href="product" class="btn btn-primary">Back to Product</a>
    </tr>
    </div>
    </div>
	</div>
			<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productData};
			});
			</script>
		

<jsp:include page="footer.jsp"/>			
</body>
</html>