
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

<body>

<form action="${contextPath}/login"  method="post">

	<%@ include file="../shared/menu.jsp"%>
<br>
<br>
<br>
<br>
<br>
<br>



<div class="container">

<div class="row">
	<div class="col-md-offset-3 col-md-6">
		<div class="panel panel-default">
		
		<div class="panel-header">
		<h2 align="center" ><b><span style="color:#696969;">Login</span></b></h2>
		</div>
			
			<div class="panel-body">
			
			
		<div class="form-group">
		<label class="col-md-2 control-label"><span style="color:#696969; "> Username:</span></label>
		<div class="col-md-10 ">
			<input type="text" placeholder="username" name="email_Id" required="required" class="form-control" >
			<br>
		</div>
		</div>
		
		<div class="form-group">
		<label class="col-md-2 control-label"><span style="color:#696969;">Password:</span></label>
		<div class="col-md-10 ">
			<input type="password" placeholder="password" name="password" required="required"  class="form-control" />
			<br>
		</div>
		</div>
		
		<div class="form-group" align="left">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		
			<button type="submit" value="submit" style="color:#656565;" class="btn btn-info btn-bg" >L o g i n</button>
			<br>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
		</div>			
		</div>			
		</div>
			
		<div class="form-group">
		<div class="col-md-10 ">
		<div class="col-md-10 ">
		<span style="color:#696969;">New to Electro-M@rt &raquo; </span> <a href="${contextPath}/register"><b><span style="color:info;">  REGISTER NOW</span></b></a>
	    </div>
		</div>
		</div>
		
			
			
			<br>
			<br>
			
		
		</div>
	</div>
	</div>		
	
</div>
</form>


	
	
	<%@ include file="../shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
</body>
</html>
