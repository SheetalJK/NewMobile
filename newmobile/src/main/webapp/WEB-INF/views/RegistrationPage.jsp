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
 		<h1 style="color:#ff6600">Registration Page</h1>
 	</div>
 	
<form:form method="POST" modelAttribute="user" action="adduser" class="form">
		
					<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="fname">First Name</form:label></div>
                   	<div class="col-md-3"><form:input class="form-control" path="fname"/></div>
                	</div>
                	
                	<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="lname">Last Name</form:label></div>
                   	<div class="col-md-3"><form:input class="form-control" path="lname"/></div>
                	</div>
                	
                	<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="contactno">Contact No</form:label></div>
                   	<div class="col-md-3"><form:input class="form-control" path="contactno" /></div>
                	</div>
			
                    <div class="row">
                    <div class="col-md-3"><form:label  class="form-control" path="username">User</form:label></div>
                    <div class="col-md-3"><form:input class="form-control" path="username"/></div>
                    </div>
                
                	<div class="row">
                    <div class="col-md-3"><form:label class="form-control" path="password">Password</form:label></div>
                   	<div class="col-md-3"><form:input class="form-control" path="password" type="password"/></div>
                	</div>
                	      
                	          	
                    <input class="btn btn-primary" type="submit" value="Submit"/>
                       
					</form:form>
	
				</div>
	<jsp:include page="footer.jsp"/>		
</body>
</html>