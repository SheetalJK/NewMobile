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
							<h1 class="title" style="color:#ff6600">View Product</h1>
						</header>
    
 	<div class="row">
 	<div ng-app="myApp" ng-controller="myCtrl" style="margin-top: 0px;background-color:#f1f1f1;">
	<img src="resources/Product/{{myScope.productId}}.jpg">
	<tr>
	<td>{{myScope.productName}}</td>
	<td><h2 class="title-price"><small>PRODUCT PRICE</small></h2></td>
    <td><h2 style="margin-top:0px;"><small>{{myScope.price}}</small></h2></td>
               
	
	<div class="section" style="padding-bottom:20px;">
                        <a href="addtocart-{{myScope.productId}}" class="btn btn-primary"><span style="margin-right:20px"></span>Add to Cart</a>
                        </tr>
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