<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            
          </button>
          <a class="navbar-brand" href="#"><img src="${images}/19.jpg"  alt="" width="210" height="50"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-left">
            <li><a href="${contextPath}/index"><span style="color:#FFFFFF;"><span class="glyphicon glyphicon-home"></span></span></a></li>
            <li><a href="${contextPath}/aboutus"><span style="color:#FFFFFF;"><b>ABOUT US</b></span></a></li>
            <li><a href="${contextPath}/ViewProduct"><span style="color:#FFFFFF;"><b>ACCESSORIES</b></span></a></li>
            
	        
            <sec:authorize access="hasRole('ROLE_ADMIN')">
			<li><a href="${contextPath}/Product"><span style="color:#FFFFFF;"><b>ADD PRODUCT</b></span></a></li>
            <li><a href="${contextPath}/Category"><span style="color:#FFFFFF;"><b>ADD CATEGORY</b></span></a></li>				
			<li><a href="${contextPath}/Supplier"><span style="color:#FFFFFF;"><b>ADD SUPPLIER</b></span></a></li>				
		    </sec:authorize>
		    
		    
		    <sec:authorize access="hasRole('ROLE_USER')">
			<li><a href="${contextPath}/Cart"><span style="color:#FFFFFF;"><span class="glyphicon glyphicon-shopping-cart">CART</span></span></a></li>
		    </sec:authorize>				
		    
		    
            
          </ul> 
          
          <ul class="nav navbar-nav pull-right">
          
          <sec:authorize access="isAnonymous()">
          <li><a href="${contextPath}/login"><span style="color:#FFFFFF;"><span class="glyphicon glyphicon-shopping-cart"> <b>CART</b></span></span></a></li>
          <li><a href="${contextPath}/login"><span style="color:#FFFFFF;"><span class="glyphicon glyphicon-user"> <b>LOGIN</b></span></span></a></li>
          <li><a href="${contextPath}/register"><span style="color:#FFFFFF;"><b>REGISTER</b></span></a></li>
          </sec:authorize>
          
          <sec:authorize access="isAuthenticated()">
             <li><a><span style="color:#FFFFFF;"><b>Hi  <span style="color:red;">${pageContext.request.userPrincipal.name }</span></b></span></a></li>
             <li><a href="${contextPath}/logout"><span style="color:#FFFFFF;"><b>LOGOUT</b></span></a></li>
             
		  </sec:authorize>
          
          
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>