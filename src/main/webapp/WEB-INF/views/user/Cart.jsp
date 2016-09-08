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


<div class="panel-header">
<h2 align="center" ><b><span style="color:#D5D8DC;">CART</span></b></h2>
</div>

<br>
<br>
<br>


<table border=1 class = "table table-condensed">
				<thead>
					<tr>
						<th style=" text-align: center" align="center" ><span style="color:#FFFFFF;"></span></th>
						<th style=" text-align: center" align="center" ><span style="color:#FFFFFF;">Quantity</span></th>
						<th style=" text-align: center" align="center" ><span style="color:#FFFFFF;">Product Name</span></th>
						<th style=" text-align: center" align="center" ><span style="color:#FFFFFF;">Total Price</span></th>
						<th style=" text-align: center" align="center" ><span style="color:#FFFFFF;"></span></th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartList}" var="user">
						<tr>
						    <td style=" text-align: center" align="center"><span style="color:#FFFFFF;"><img src="${images}/product/${user.imageUrl}" width="200px"></span></td>
							<td style=" text-align: center" align="center"><span style="color:#FFFFFF;"><c:out value="${user.quantity}" /></span></td>
							<td style=" text-align: center" align="center"><span style="color:#FFFFFF;"><c:out value="${user.productName}" /></span></td>
							<td style=" text-align: center" align="center"><span style="color:#FFFFFF;"><i class="glyphicon glyphicon-euro"></i> <c:out value="${user.totalPrice}" /></span></td>
							<td style=" text-align: center" align="center"><span style="color:#FFFFFF;"><a class="btn btn-danger" href="${contextPath}/CartItem/delete/${user.id}" role="button"><span class="glyphicon glyphicon-trash"> REMOVE</span></a></span></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="form-group" align="center">
			<label><h3><span style="color:#2874A6;"><b>GRAND TOTAL :</b></span></h3></label>
		    <span style="color:#FFFFFF;"><span><i class="glyphicon glyphicon-euro"></i> <c:out value="${grandTotal}"></c:out></span></span>
			</div>
			
			
			<div class="form-group" align="center">
			<button type="submit" value="checkout" style="color: white;" class="btn btn-success btn-bg"><b>CONTINUE SHOPPING</b></button>
		    <button type="submit" value="checkout" style="color: white;" class="btn btn-warning btn-bg"><b>CHECKOUT</b></button>
			</div>
			
			<%@ include file="../shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	
</body>
</html>