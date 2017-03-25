<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" 

href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="customHeader.jsp" />
	
 	<div class="text-center">
 		<h1 style="color:#ff6600">Supplier</h1>
 	</div>
 	
<form:form method="POST" modelAttribute="supplier" action="addsupplier" class="form">			
                	<form:input type="hidden" class="form-control" path="supplierId"/>
                	
                    <div class="row">
                    <div class="col-md-3"><form:label  class="form-control" path="supplierName">SupplierName</form:label></div>
                     <div class="col-md-3"><form:input class="form-control" path="supplierName"/></div>
                     <form:errors cssClass="error" cssStyle="color:#ff0000" path="supplierName"/>
            </div>
                
                
                    <input class="btn btn-primary" type="submit" value="Submit"/>
                
           
	</form:form>
	
	<table class="table table-hover">
                
		              <tr>
                        <th>SUPPLIER ID</th>
                        <th>SUPPLIER NAME</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                  <c:forEach items="${supplierList}" var="l">
                  <tr>  
                    <td>${l.supplierId}</td>
                    <td>${l.supplierName}</td>
                    <td><a href="editsupplier-${l.supplierId}">Edit</td>
                    <td><a href="deletesupplier-${l.supplierId}">Delete</td>
                    
                    </tr>
                </c:forEach>
				</tr>
            </table>
            
            <jsp:include page="footer.jsp"/>
</body>
</html>