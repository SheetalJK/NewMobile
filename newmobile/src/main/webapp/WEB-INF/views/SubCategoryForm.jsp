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
</head>
<body>
	
	<jsp:include page="customHeader.jsp" />
	
 	<div class="text-center">
 		<h1>SubCatgeory</h1>
 	</div>
 	
		<form:form method="POST" modelAttribute="subCategory" action="addsubcategory" class="form" >
					<form:input type="hidden" class="form-control" path="subCategoryid" />
								
                    <div class="row">
                    <div class="col-md-3"><form:label  class="form-control" path="subCategoryname">Name</form:label></div>
                     <div class="col-md-3"><form:input class="form-control" path="subCategoryname"/></div>
                     
            </div>
                
                <div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="subCategorydescription">Description</form:label></div>
                   <div class="col-md-3"><form:input class="form-control" path="subCategorydescription"/></div>
                   
                </div>
        
                <form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" class="form-control">
			</form:select>
				
			
                    <input class="btn btn-primary" type="submit" value="submit"/>
           
	</form:form>
	
	<table class="table table-hover">
                
		              <tr>
                        <th>SUBCATEGORY ID</th>
                        <th>SUBCATEGORY NAME</th>
                        <th>SUBCATEGORY DESCRIPTION</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                  <c:forEach items="${subCategoryList}" var="l">
                  <tr>  
                    <td>${l.subCategoryid}</td>
                    <td>${l.subCategoryname}</td>
                    <td>${l.subCategorydescription}</td>
                    <td><a href="editsubcategory-${l.subCategoryid}">Edit</td>
                    <td><a href="deletesubcategory-${l.subCategoryid}">Delete</td>
                    </tr>
                </c:forEach>
				</tr>
            </table>
	
	</body>
</html>