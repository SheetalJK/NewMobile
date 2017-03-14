<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
  <script src="Resources/js/jquery-1.10.2.min.js"></script>
  <script src="Resources/js/jquery.sldr.js"></script>
</head>
<body background color=>

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
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="registrationForm"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

</body>
</html>