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





<table border=1 class = "table table-condensed">
				<thead>
					<tr>
						<th align="center" width="120"><span style="color:#FFFFFF;">Id</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">Name</span></th>
						<th align="center" width="200"><span style="color:#FFFFFF;">Description</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">Delete</span></th>
						<th align="center" width="120"><span style="color:#FFFFFF;">Edit</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${categoryList}" var="user">
						<tr>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><c:out value="${user.id}" /></span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><c:out value="${user.name}" /></span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><c:out value="${user.description}" /></span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><a class="btn btn-danger" href="${contextPath}/Category/delete/${user.id}" role="button">DELETE</a></span></td>
							<td style=" text-align: centre"><span style="color:#FFFFFF;"><a class="btn btn-info" href="${contextPath}/Category/edit/${user.id}" role="button"> E D I T </a></span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<%@ include file="../shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	
</body>
</html>