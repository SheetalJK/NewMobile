<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="customHeader.jsp" />

<h2 style="color:#ff6600">Thanks.....Please Visit Again</h2>
           
  <section id="content">
        	<div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="/newmobile/">Home</a></li>
						<li class="active">CartList</li>
					</ul>
        		</div>
        	</div>
        	<div class="container">
  
			<h2 style="color:#ff6600">CartList</h2>
			
			
	<table class="table table-hover">
                    <c:forEach items="${productList}" var="l">
                  <tr>  
                	<td><img src="resources/Product/${l.productId }.jpg" width="100px" height="100px"></td>
                  	<td>${l.productId}</td>
                    <td>${l.productName}</td>
                    <td>${l.productDescription}</td>
                    <td>${l.price}</td>
                    <td>${l.QTY}</td>
                    <td>${l.discount}</td>
                    <td>${l.amount}</td>
                    
                </c:forEach>
		
			
	<!-- <div class="row">
 	<div ng-app="myApp" ng-controller="myCtrl" style="margin-top: 0px;background-color:#f1f1f1;">
			    <img src="resources/Product/{{myScope.productId}}.jpg" width="100px" height="100px"></td>
                  	{{myScope.productName}}
                    {{myScope.price}}
                    </div>
                    
                    <script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productData};
			});
			</script>
			</div>
     -->                
                    
</body>
</html>