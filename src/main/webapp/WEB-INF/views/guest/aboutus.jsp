<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url value="/resources/css" var="css"></spring:url>
<spring:url value="/resources/images" var="images"></spring:url>
<spring:url value="/resources/js" var="js"></spring:url>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>

<link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <link href="${css}/menu.css" rel="stylesheet">
    <link href="${css}/starter-template.css" rel="stylesheet">
</head>
<body>

<%@ include file="../shared/menu.jsp" %>
<form action="$(contextPath)/aboutus" method="post">


<br><br><br>
<h1><span style="color:#696969;">A</span>bout  <span style="color:#696969;">U</span>s</h1>
<br>
<h2><span style="color:#696969;">ELECTRO</span><span style="color:#656565;">-</span><span style="color:red;">M</span><span style="color:#FFFFFF;">@</span><span style="color:#696969;">RT</span></h2>




<div class="container">
		<div class="row">
		
			<img align="left" style="float: left" src="${images}/17.jpg"
				 width="200" height="200">
			
			
			</div>
			</div>
			<br>
			<br>
			
			<div class="panel" align="center">

<p>

			
			
			<span style="color:red;"><h2>CONTACT US</h2></span>
			<h3>We provide our customers with best and latest electronic appliances.
			Get the latest product at with all latest cofiguration .
			We here care for the need of our customer and make sure they get the desired proctuct as soon as they can at reasonalble price in a well condition.</h3>

			<span style="color:red;"><h3>EMAIL ID:</h3></span>
			<h4>ajitkm.17@gmail.com</h4>

			<span style="color:red;"><h3>CONTACT NO:</h3></span>
			<h4>+91 9769293660</h4>
			<h4>+91 8097192556</h4>

			
			
</p>
			</div>


</form>

<%@ include file="../shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
</body>
</html>