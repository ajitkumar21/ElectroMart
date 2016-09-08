
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/css" var="css"></spring:url>
<spring:url value="/resources/images" var="images"></spring:url>
<spring:url value="/resources/js" var="js"></spring:url>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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

<body>


	<%@ include file="../shared/menu.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<form:form action="${contextPath}/Product/AddToCart/${Product.id}" modelAttribute="Product" enctype="multipart/form-data">

	<div class="container" >
		<div class="row">
		<div class="col-md-offset-1 col-md-10">
			<div class="panel panel-default" align="left" style="background-color: white;">
			
		<div class="panel-header">
			<h2 align="center" style="font-size: 30px;" ><span style="color:#A93226;"><b>Product Detail</b></span></h2>
		</div>
			
			<div class="panel-body">
			
			<br>
			
			
			<div class="form-group">
			<img align="left" class="img-thumbnail" style="float: left; margin-top: 2px" src="${images}/product/${Product.imageUrl}"
				alt="" width="400px" >
			</div>
			
			<div class="form-group">
				<h4><label class="col-md-2" ><span style="color:#656565;">Name:</span></label>
				
					<span class="col-md-4">${Product.name}</span></h4>
					<br>
					<br>
			
			
			
			
			<div class="form-group">
				<h4><label class="col-md-2" ><span style="color:#656565;">Description:</span></label>
				
					<span class="col-md-4">${Product.description}</span></h4>
					<br>
					<br>
			</div>
			
			<div class="form-group">
				<h4><label class="col-md-2"><span style="color:#656565;">Price:</span></label>
				
				<span class="col-md-4"><span class="glyphicon glyphicon-euro"></span> ${Product.price}</span></h4>
					<br>
					<br>
			</div>
			
			<div class="form-group" align="center">
			<sec:authorize access="hasRole('ROLE_USER')">
			
			<button  type="submit" value="add" style="color: white;" class="btn btn-info btn-bg" ><b>BACK</b></button>
			<button  type="submit" value="add" style="color: white;" class="btn btn-success btn-bg" ><b>ADD TO CART</b></button>
			</sec:authorize>
			</div>
			
			
			
			
			</div>
			</div>
			</div>
			</div>
			</div>
</form:form>




	<%@ include file="../shared/footer.jsp"%>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${js}/scripts.js"></script>
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>