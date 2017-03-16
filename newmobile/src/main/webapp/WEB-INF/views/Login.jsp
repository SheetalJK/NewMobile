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
 		<h1 style="color:#999966">Login Page</h1>
 	</div>
 	
		<form method="POST" action="perform_login">
			
                    <div class="row">
                    <div class="col-md-3"><label type="text" name="username">User Name</label></div>
                    <div class="col-md-3"><input type="text" name="username"/></div>
                    </div>
                
                	<div class="row">
                    <div class="col-md-3"><label type="password" name="password">Password</label></div>
                   	<div class="col-md-3"><input type="password" name="password" type="password"/></div>
                	</div>
                	               	
                    <input class="btn btn-primary" type="submit" value="Submit"/>
                       
					</form>
	
				
			
</body>
</html>