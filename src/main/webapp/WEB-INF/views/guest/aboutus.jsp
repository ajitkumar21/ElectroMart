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
<title>Insert title here</title>

<link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <link href="${css}/menu.css" rel="stylesheet">
    <link href="${css}/starter-template.css" rel="stylesheet">
</head>
<body>

<%@ include file="../shared/menu.jsp" %>
<form action="$(contextPath)/aboutus" method="post">
<h1>AboutUs</h1>

<p>
cbhdhbcdhcbhdcbdbchdbchbcdbhhbcb hbcdhbchdbhdbchbddhchdbchdbchcbhdbhggdvc
gdvcgdvcgdvcgdvgdvgvgdvbxbsxyvxvxvxgxvg
ddgvgvdgvcgdvcgdvgdvgvcgvdgcvgdvcdgvcdg
dcbcbdbdcgdvcgvdgvcd
dcbcvdgcvdgcvdgcvgbshbsgdv
dnchbcdbgcgcvgdvcgdvcdgvc
</p>

</form>

<%@ include file="../shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
</body>
</html>