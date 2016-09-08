<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/css" var="css"></spring:url>
<spring:url value="/resources/images" var="images"></spring:url>
<spring:url value="/resources/js" var="js"></spring:url>

	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>PING</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="${css}/menu.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/starter-template.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!--     <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
 -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body ng-app="webapp">

<%@ include file="../shared/menu.jsp"%>
<br>
<br>
<br>
<br>

<div class="container-search">
<div class="col">
  
  <form class="navbar-form" role="search">
    <div class="input-group add-on">
      <input type="text" class="form-control" placeholder="Search" ng-model="search" >
      <div class="input-group-btn">
        <button class="btn btn-default btn-btn-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </div>
    </div>
  </form>
  
  
</div>
</div>
<br>
<br>




<table border=1 class = "table table-condensed" ng-controller="mainController as ctrl">
				<thead>
					<tr>
					    <sec:authorize access="hasRole('ROLE_ADMIN')">
						<th align="center" width="120"><span style="color:#FFFFFF;">Id</span></th>
						</sec:authorize>
						<th align="center" width="120"><span style="color:#FFFFFF;">Image</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">Name</span></th>
						<th align="center" width="200"><span style="color:#FFFFFF;">Description</span></th>
						<th align="center" width="200"><span style="color:#FFFFFF;">Price</span></th>
						
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						<th align="center" width="120"><span style="color:#FFFFFF;">Category Id</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">Supplier Id</span></th>
						</sec:authorize>
						
						<sec:authorize access="hasRole('ROLE_USER')">
						<th align="center" width="120"><span style="color:#FFFFFF;">View Product</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">ADD to CART</span></th>
						</sec:authorize>
						
						
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						   <th align="center" width="120"><span style="color:#FFFFFF;">Delete</span></th>
						   <th align="center" width="120"><span style="color:#FFFFFF;">Edit</span></th>
						</sec:authorize>
						
					</tr>
				</thead>
				<tbody >

						<tr ng-repeat="user in ctrl.user |  filter:search">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<td style=" text-align: centre"><span style="color:#FFFFFF;">{{user.id}}</span></td>
						</sec:authorize>
						<td style=" text-align: centre"><span style="color:#FFFFFF;"><img ng-src="${images}/product/{{user.imageUrl}}" width="300px"></span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;">{{user.name}}</span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;">{{user.description}}</span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><i class="glyphicon glyphicon-euro"></i> {{user.price}}</span></td>
							
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							<td style=" text-align: centre"><span style="color:#FFFFFF;">{{user.categoryId}}</span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;">{{user.supplierId}}</span></td>
							</sec:authorize>
							
							<sec:authorize access="hasRole('ROLE_USER')">
							<td style=" text-align: centre" ><a class="btn btn-info" href="${contextPath}/Product/View/{{user.id}}" role="button"><b>V I E W</b></a></td>
							<td style=" text-align: centre" ><a class="btn btn-primary" href="${contextPath}/Product/AddToCart/{{user.id}}" role="button"><b> A D D </b></a></td>
							</sec:authorize>
							
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							<td style=" text-align: centre"><a class="btn btn-danger" href="${contextPath}/Product/delete/{{user.id}}" role="button"><b>DELETE</b></a></td>
							<td style=" text-align: centre"><a class="btn btn-info" href="${contextPath}/Product/edit/{{user.id}}" role="button"><b> E D I T </b></a></td>
							</sec:authorize>
							
						</tr>

				</tbody>
			</table>
			<%@ include file="../shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/angular.min.js"></script>
	<script src="${js}/app.js"></script>
</body>
</html>