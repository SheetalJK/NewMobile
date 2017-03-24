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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
</head>
<body>

	<jsp:include page="customHeader.jsp" />
	
 	<div class="text-center">
 		<h1 style="color:#ff6600">Product</h1>
 	</div>
 	
		<form:form method="POST" modelAttribute="product" action="addproduct" class="form" enctype="multipart/form-data">
		
					<form:input type="hidden" class="form-control" path="productId"/>			
                    <div class="row">
                    <div class="col-md-3"><form:label  class="form-control" path="productName">ProductName</form:label></div>
                     <div class="col-md-3"><form:input class="form-control" path="productName"/></div>
                     <form:errors cssClass="error" cssStyle="color:#ff0000" path="productName"/>
            </div>
                
                <div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="productDescription">ProductDescription</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="productDescription"/></div>
                   <form:errors cssClass="error" cssStyle="color:#ff0000" path="productDescription"/>
                </div>
                
                <div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="price">ProductPrice</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="price"/></div>
                </div>
                
                <div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="QTY">QTY</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="QTY"/></div>
                </div>
                
				<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="discount">Discount</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="discount"/></div>
                </div>                
                <div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="amount">Amount</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="amount"/></div>
                </div>
                <div class="form-group">                         
    			<label class="custom-file">
    			<form:input path="productImg" type="file"></form:input>
    			<span class="custom-file-control"></span>
   				</label>
				</div><br>
				
				
        		<form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" class="form-control">
			</form:select>
        		
                <form:select path="subCategory.subCategoryname" items="${subCategoryList}" itemValue="subCategoryname" itemLabel="subCategoryname" class="form-control">
			</form:select>
			
			<form:select path="supplier.supplierName" items="${supplierList}" itemValue="supplierName" itemLabel="supplierName" class="form-control">
			</form:select>
				
			
                    <input class="btn btn-primary" type="submit" value="submit"/>
           
	</form:form>
	<!-- <div class="" ng-app="myApp" ng-controller="myCtrl"> -->
	<table class="table table-hover">
                
		              <tr>
		              	<th>PRODUCT IMG</th>
                        <th>PRODUCT ID</th>
                        <th>PRODUCT NAME</th>
                        <th>PRODUCT DESCRIPTION</th>
                        <th>PRODUCT PRICE</th>
                        <th>PRODUCT QTY</th>
                        <th>DISCOUNT</th>
                        <th>AMOUNT</th>
                        <th>View</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
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
                    <td><a href="viewproduct-${l.productId}">View</td>
                    <td><a href="editproduct-${l.productId}">Edit</td>
                    <td><a href="deleteproduct-${l.productId}">Delete</td>
                    </tr>
                </c:forEach>
				
				
                  <!-- <tr ng-repeat="l in myScope | filter:test | orderBy:myOrderBy">  
                	<td><img src="resources/Product/{{l.productId}}.jpg" width="100px" height="100px"></td>
                  	<td>{{l.productId}}</td>
                    <td>{{l.productName}}</td>
                    <td>{{l.productDescription}}</td>
                    <td>{{l.price}}</td>
                    <td><a href="viewproduct-{{l.productId}}">View</td>
                    <td><a href="editproduct-{{l.productId}}">Edit</td>
                    <td><a href="deleteproduct-{{l.productId}}">Delete</td>
                    </tr>
                 </table>
              
             <script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productlistJSON};
			$scope.orderByMe=function (x);
			{
				$scope.myOrderBy=x;
			}
			});
			</script> -->
			</div>
              
	 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
	</body>
</html>