
<jsp:include page="customHeader.jsp" />

<h2 style="color:#ff6600">Thanks.....Please Visit Again</h2>
           
  <section id="content">
        	<div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="/newmobile/">Home</a></li>
						<li class="active">CartList</li>
					</ul>
        		</div>
        	</div>
   </section>
   
    <div class="container">
        		<div class="row">
        			<div class="col-md-12">
						<header class="content-title">
							<h2 class="title" style="color:#ff6600">Cart List</h2>
						</header>
					</div>
				</div>		
    
    <table>
    	<tr>
    	<th>Product Img</th>
    	<th>Product Name</th>
    	<th>Product Price</th>
    	</tr>
    	<c:forEach items="${productList}" var="l">
    	<tr>
    	<td><img src="resources/Product/${l.productId }.jpg" width="100px" height="100px"></td>
    	<td>${l.productName}</td>
    	<td>${l.price}</td>
    	<td></td>
    	</tr>
    	</c:forEach>
    </table>
 	<!-- <div class="row">
 	<div ng-app="myApp" ng-controller="myCtrl"  ng-repeat="p in myscope"margin-top: 0px;background-color:#f1f1f1;">
	<img src="resources/Product/{{p.productId}}.jpg" alt="img not loaded"/>
	{{p.productName}}
	{{p.price}}
    <a href="ViewProduct" class="btn btn-primary">Back</a>
	</div>
	</div>
	</div>
			<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${cartlistbyjson};
			});
			</script> -->
		

<jsp:include page="footer.jsp"/>			
</body>
</html>