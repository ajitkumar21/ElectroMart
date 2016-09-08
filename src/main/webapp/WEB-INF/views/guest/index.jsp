<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <link href="${css}/menu.css" rel="stylesheet">

    

    <!-- Custom styles for this template -->
    <link href="${css}/starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <%@ include file="../shared/menu.jsp" %>
    

    

    
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
 <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
 <li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
</ol>
      
      <div class="carousel-inner" role="listbox">
     <div class="item active">
     <img class="first-slide home-image" src="${images}/13.jpeg" alt="First slide">
     <div class="container">
     <div class="carousel-caption">
     </div>
       </div>
       </div>
       
       
       
        <div class="item">
          <img class="second-slide home-image"  src="${images }/16.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
            </div>
          </div>
        </div>
        
        
        
        <div class="item">
          <img class="third-slide home-image"  src="${images }/7.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
          </div>
          </div>
        </div>
      </div>
      
      
      
      
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
    
    
     <div class="container marketing">
    <div class="row">
    
        <div class="col-lg-4">
        <img class="img-circle" src="${images}/8.jpg" alt="" width="240" height="200">
          <h3><span style="color:#FFFFFF;">TELEVISIONS</span></h3>
          <p><span style="color:#FFFFFF;">Latest brands and types of televisions available.(4k ,LCD,LED,PLASM TV'S.)</span></p>
          <p><a class="btn btn-info" href="${contextPath}/ViewProduct" role="button">View details &raquo;</a></p>
        </div>
        
        <div class="col-lg-4">
          <img class="img-circle" src="${images}/9.jpg" alt="" width="240" height="200">
          <h3><span style="color:#FFFFFF;">MOBILES</span></h3>
          <p><span style="color:#FFFFFF;">Latest brands and types of mobile phones available.(ios , microsoft , android etc)</span></p>
          <p><a class="btn btn-info" href="${contextPath}/ViewProduct" role="button">View details &raquo;</a></p>
        </div>
        
        <div class="col-lg-4">
          <img class="img-circle" src="${images}/10.jpg" alt="" width="240" height="200">
          <h3><span style="color:#FFFFFF;">LAPTOPS</span></h3>
          <p><span style="color:#FFFFFF;">Latest brands and types of Laptops available.(macbook ,sony , Acer, LENOVO ,HCL ,HP.)</span></p>
          <p><a class="btn btn-info" href="${contextPath}/ViewProduct" role="button">View details &raquo;</a></p>
        </div>
        </div>
        </div>
        
        <br>
        <br>
        
        <div class="container" >
		<div class="row">
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/10.jpg" width="280" height="200">
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/11.jpg" width="280" height="200">
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/14.jpg" width="280" height="200">
		</div>
		</div>
		
		
		
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/15.jpg" width="280" height="200">
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/9.jpg" width="280" height="200">
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="thumbnail">
		<img src="${images}/16.jpg" width="280" height="200">
		</div>
		</div>
		
		</div>
	</div>

<%@ include file="../shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
   
    
  </body>
</html>
