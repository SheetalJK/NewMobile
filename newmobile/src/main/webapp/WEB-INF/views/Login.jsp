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
 
  <link href="resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body>
	
	<jsp:include page="customHeader.jsp" />
 	<div class="text-center">
 		<h1 style="color:#ff6600">Login Page</h1>
 	</div>
 	
		<form method="POST" action="perform_login">
					<table>
                    <div class="row">
                    <div class="col-md-3"><label type="text" style="position: absolute; margin-left: 100px"name="username">User Name</label></div>
                    <div class="col-md-3"><input type="text" name="username"/></div>
                    </div>
                
                	<div class="row">
                    <div class="col-md-3"><label type="password" style="position: absolute; margin-left: 100px"name="password">Password</label></div>
                   	<div class="col-md-3"><input type="password" name="password" type="password"/></div>
                	</div>
                	</br>
                	               	
                    <input class="btn btn-primary" type="submit" style="position: absolute; margin-left: 400px"value="Login"/>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    </table>
					</form>
					
	
				
		<jsp:include page="footer.jsp"/>	
</body>
</html>