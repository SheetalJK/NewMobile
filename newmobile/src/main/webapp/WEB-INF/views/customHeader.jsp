<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link href="src/main/webapp/resources/css/slider.css/">
  
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
 
 
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/newmobile/" style="color:#ff6600;">newmobile</a>
    </div>
    <ul class="nav navbar-nav">
    
         
     <security:authorize access="hasRole('ROLE_ADMIN')">
     
      <li class="active"><a href="/newmobile/" style="color:#ff6600;"></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="/newmobile/" style="color:#ff6600;">Admin Panel <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="category" style="color:#ff6600;">Category</a></li>
          <li><a href="subcategory" style="color:#ff6600;">SubCategory</a></li>
          <li><a href="supplier" style="color:#ff6600;">Supplier</a></li>
           <li><a href="product" style="color:#ff6600;">Product</a></li>
        </ul>
      </li>
      
      </security:authorize>
      
      <security:authorize access="hasRole('ROLE_USER')">
     
      <li class="active"><a href="/newmobile/" style="color:#ff6600;"></a></li>
          <li><a href="#" style="color:#ff6600;">About Us</a></li>
          <li><a href="#" style="color:#ff6600;">Contact Us</a></li>
          <li><a href="CartList" style="color:#ff6600;">My Cart</a></li>
       </li>
      
      </security:authorize>
    
    	  <li class="active"><a href="/newmobile/" style="color:#ff6600;">Home</a></li>
          <li><a href="/newmobile/" style="color:#ff6600;">About Us</a></li>
          <li><a href="/newmobile/" style="color:#ff6600;">Contact Us</a></li>
          
      
    <li>
    <security:authorize access="isAuthenticated()">
    <a href="#" style="space-top: 10px; color:#ff6600;">Welcome,  		
   			 <security:authentication property="principal.username" /> </a>
			</security:authorize> 
			</li>
			<security:authorize access="isAnonymous()">
			<li><a href="registrationpage" style="space-top: 10px; color:#ff6600;"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
   			<li><a href="login"style="space-top: 10px; color:#ff6600;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			 </security:authorize>
			 <security:authorize access="isAuthenticated()">
			<li><a href="logout" style="space-top: 10px; color:#ff6600;"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
			</security:authorize>
		
			</ul>
		
    
    </div>
</nav>

</body>
</html>