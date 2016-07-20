
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

	<%@ include file="../shared/menu.jsp"%>
<br>
<br>
<br>
<br>
<br>
<br>

<div class= "container">

<form:form action="${contextPath}/Supplier/add" modelAttribute="Supplier" method="post">

<div class="row">
	<div class="col-md-offset-2 col-md-8">
		<div class="panel panel-default">
		
		<div class="panel-header">
		<h2 align="center" ><b><span style="color:#696969;">ADD SUPPLIER</span></b></h2>
		</div>
			
			<div class="panel-body">
		
		<div class="form-group">
<!-- 		<label class="col-md-2 control-label">Id:</label>
 -->		<div class="col-md-8">
			<form:hidden path ="id"  />
			<form:errors path="id"></form:errors>
		</div>
		</div>
		
		<div class="form-group">
		<label class="col-md-2 control-label"><span style="color:#696969;">Name:</span></label>
		<div class="col-md-10 ">
			<form:input type ="text" path ="name"  class="form-control" />
			<form:errors path="name" cssClass="error"></form:errors>
			<br>
		</div>
		</div>
		
		<div class="form-group">
		<label class="col-md-2 control-label"><span style="color:#696969;">Email ID:</span></label>
		<div class="col-md-10 ">
			<form:input type ="email" path ="email_Id"  class="form-control" />
			<form:errors path="email_Id" cssClass="error"></form:errors>
			<br>
		</div>
		</div>
		
		<div class="form-group">
		<label class="col-md-2 control-label"><span style="color:#696969;">Contact No:</span></label>
		<div class="col-md-10 ">
			<form:input type ="text" path ="contactNumber"  class="form-control" />
			<form:errors path="contactNumber"></form:errors>
			<br>
		</div>
		</div>
			
			<div class="form-group">
			<label class="col-md-2 control-label"><span style="color:#696969;">Address:</span></label>
			<div class="col-md-10 ">
			<form:textarea type ="text" path ="address"  class="form-control" />
			<form:errors path="address" cssClass="error"></form:errors>
			<br>
		</div>
		</div>
		
		<div class="form-group" align="center">
			<button  type="submit" value="add" style="color: white;" class="btn btn-info btn-md" >A D D</button>
			<button type="reset" value="reset" style="color: white;" class="btn btn-info btn-md" >R E S E T</button>
			<br>
		</div>
	
	
	</div>
	</div>
	</div>
	</div>
	

</form:form>
</div>
	
	
	<%@ include file="../shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>
