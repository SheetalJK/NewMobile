<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
  <link href="resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
</head>
<body>
 		 <jsp:include page="customHeader.jsp" />
 		
	<div ng-app="myApp" ng-controller="myCtrl" style="margin-top: 200px;background-color:#f1f1f1;">
		<div class="container-fluid">
		<legend>
		<a href="home">Home</a> 
		<a href="all_categories">{{products.categoryName}}</a> > 
		<a href="">{{products.subCategoryName}}</a> > 
		{{products.productName}}</legend>
		</div>
 
		<!-- <div class="container-fluid">
		<div class="row">
		<div class="col-sm-12 col-md-5"> -->
		<!-- <img src="Resources/Productimages/{{myScope.productId}}.jpg" width="100px" height="100px"> -->
<!-- 		</div>
		<div class="col-sm-12 col-md-5">
		{{myScope.productName}}<br>
		{{myScope.categoryName}}
		{{myScope.supplierCompanayName}}
		</div>
		</div>
		</div> 
 -->		
		
<!-- </div> -->

<!-- <div ng-app="myApp" ng-controller="myCtrl"> -->

<img src="resources/Product/{{myScope.productId}}.jpg">
{{myScope.productName}}
<input class="btn btn-primary" type="submit" value="ADD TO CART"/>
</div>
			<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productData};
			});
			</script>
		

		
		
</body>
</html>