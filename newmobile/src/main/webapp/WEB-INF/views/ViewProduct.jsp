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
 	<div class="row">
 	<div class="col-lg-4">
	<div ng-app="myApp" ng-controller="myCtrl" style="margin-top: 90px;background-color:#f1f1f1;">
	<img src="resources/Product/{{myScope.productId}}.jpg">
	{{myScope.productName}}
	
				<h2 class="title-price"><small>PRODUCT PRICE</small></h2>
                    <h2 style="margin-top:0px;"><small>{{myScope.price}}</small></h2>
               
	
	<div class="section" style="padding-bottom:20px;">
                        <a href="addtocart-{{myScope.productId}}" class="btn btn-primary"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add to Cart</a>
                        <!-- <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Add to Wishlist </a></h6> -->
                   </div>
	</div>
			<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productData};
			});
			</script>
		

			
</body>
</html>