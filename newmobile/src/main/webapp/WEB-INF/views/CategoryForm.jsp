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
</head>
<body>
	
	<jsp:include page="customHeader.jsp" />
 	<div class="text-center">
 		<h1 style="color:#ff6600">Category</h1>
 	</div>
 	
<form:form method="POST" modelAttribute="category" action="addcategory" class="form">
		
			<form:input type="hidden" class="form-control" path="categoryId" />	
			
                    <div class="row">
                    <div class="col-md-3"><form:label  class="form-control" path="categoryName">Name</form:label></div>
                    <div class="col-md-3"><form:input class="form-control" path="categoryName"/></div>
                    <form:errors cssClass="error" cssStyle="color:#ff0000" path="categoryName"/>
            		</div>
                
                	<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="categoryDescription">Description</form:label></div>
                   	<div class="col-md-3"><form:input class="form-control" path="categoryDescription"/></div>
                   	<form:errors cssClass="error" cssStyle="color:#ff0000" path="categoryDescription"/>
                	</div>
                	               	
                    <input class="btn btn-primary" type="submit" value="Submit"/>
                       
	</form:form>
	
	<!-- <div class="container" ng-app="myApp" ng-controller="myCtrl">
		<div class="row">
			<div class="col-sm-12 col-md-6 form-group">
    		<label for="search">Search</label>
			<input type="text" ng-model="test" class="form-control input-lg" id="search">
		</div>
	</div> -->
	 
	<table class="table table-hover > <!-- table-fixed" id="myTable" --> 
                	<thead>
                	<tr>
                		<th>CATEGORY ID</th>
                        <th>CATEGORY NAME</th>
                        <th>CATEGORY DESCRIPTION</th>
                        <th>EDIT CATEGORY</th>
                        <th>DELETE CATEGORY</th>
                	</tr>
                	</thead>
                	<!-- <thead>
		              <tr>
                        <th class="control-label col-sm-2">CATEGORY ID</th>
                        <th class="control-label col-sm-2">CATEGORY NAME</th>
                        <th class="control-label col-sm-2">CATEGORY DESCRIPTION</th>
                        <th class="control-label col-sm-2">EDIT CATEGORY</th>
                        <th class="control-label col-sm-2">DELETE CATEGORY</th>  
                     </tr>
                    </thead> -->
                 <c:forEach items="${categoryList}" var="l"> 
                 
                    <tr> <!-- ng-repeat="l in myScope" -->                 
	                <!-- <td class="control-label col-sm-2">{{l.categoryId}}</td>
                    <td class="control-label col-sm-2">{{l.categoryName}}</td>
                    <td class="control-label col-sm-2">{{l.categoryDescription}}</td>
                    <td class="control-label col-sm-2"><a href="editcategory-{{l.categoryId}}">Edit</td>
                   	<td class="control-label col-sm-2"><a href="deletecategory-{{l.categoryId}}">Delete</td> -->
                                 
                    <td>${l.categoryId}</td>
                    <td>${l.categoryName}</td>
                    <td>${l.categoryDescription}</td>
                    <td><a href="editcategory-${l.categoryId}">Edit</td>
                   	<td><a href="deletecategory-${l.categoryId}">Delete</td>
                    </tr> 
                    
                </c:forEach>
			</table>
			</div>
			<!-- <script>
				var app = angular.module('myApp', []);
				app.controller('myCtrl', function($scope) {
    			$scope.myScope=${categoryListJSON};
			});
			</script> -->	
	<jsp:include page="footer.jsp"/>		
</body>
</html>