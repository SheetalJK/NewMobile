<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
 
 
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">newmobile</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="category">Category</a></li>
      <li class="active"><a href="subcategory">Brand</a></li>
      <li class="active"><a href="supplier">Supplier</a></li>
      <li class="active"><a href="product">Product</a></li>
      
      <!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
        </ul>
      </li> -->
      <!-- <li><a href="#">About</a></li> -->
    </ul>
    
   <!--      <form class="navbar-form navbar-left center">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
    
    <%-- <c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	<a href="logout">Logout</a>
</c:if>
	<security:authorize access="isAuthenticated()">
���			�welcome <security:authentication property="principal.username" /> 
			</security:authorize> --%>
    
    
    		<ul class="nav navbar-nav navbar-right">
    		<li><a href="#" style="space-top: 10px; color: #fff;">Welcome, 
    		<security:authorize access="isAuthenticated()">
���			�<security:authentication property="principal.username" /> 
			</security:authorize> 
			
			<li><a href="registrationpage" style="space-top: 10px; color: #ffffff;"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
   			<li><a href="login"style="space-top: 10px; color: #ffffff;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="logout" style="space-top: 10px; color: #ffffff;"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
			</a></li>
   			</ul>
   			
   			
   				    
  </div>
</nav>

 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
</body>
</html>