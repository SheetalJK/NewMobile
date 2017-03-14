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
	
	<form:form method="POST" modelAttribute="customer" action="registrationForm" class="form">
		
		<thead><h2>User Details</h2></thead>
		<div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="firstname">First Name</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="firstname"/></div>
        </div>
		
		<div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="lastname">Last Name</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="lastname"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="email">Email</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="email"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="phonenumber">Contact Number</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="phonenumber"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="user.username">User Name</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="user.username"/></div>
          
          <form:errors path="user.username"></form:errors>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="user.password">Password</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="user.password" type="password"/></div>
        </div>
        
        <thead><h2>Billing Address</h2></thead>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.apartmentNumber">Apartment/House Number</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.apartmentNumber"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.streetName">Street Name</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.streetName"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.city">City</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.city"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.zipcode">Zipcode</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.zipcode"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.state">State</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.state"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="billingAdd.country">Country</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="billingAdd.country"/></div>
        </div>
        <thead><h2>Shipping Address</h2></thead>
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.apartmentNumber">Apartment/House Number</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.apartmentNumber"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.streetName">Street Name</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.streetName"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.city">City</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.city"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.zipcode">Zipcode</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.zipcode"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.state">State</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.state"/></div>
        </div>
        
        <div class="row">
          <div class="col-md-3"><form:label  class="form-control" path="shippingAddress.country">Country</form:label></div>
          <div class="col-md-3"><form:input class="form-control" path="shippingAddress.country"/></div>
        </div>
        
        <input class="btn btn-primary" type="submit" value="Register">
	</form:form>
	
</body>
</html>