<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">ELECTRO<span style="color:#708090;">-</span><span style="color:#696969;"><I>M<span style="color:red;">@</span>RT</I></span></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-left">
            <li><a href="${contextPath}/index"><span class="glyphicon glyphicon-home"></span></a></li>
            <li><a href="${contextPath}/aboutus"><b>ABOUT US</b></a></li>
            <li><a href="${contextPath}/ViewProduct"><b>ACCESSORIES</b></a></li>
            
	        
            <sec:authorize access="hasRole('ROLE_ADMIN')">
			<li><a href="${contextPath}/Product"><b>ADD PRODUCT</b></a></li>
            <li><a href="${contextPath}/Category"><b>ADD CATEGORY</b></a></li>				
			<li><a href="${contextPath}/Supplier"><b>ADD SUPPLIER</b></a></li>				
		    </sec:authorize>
		    
		    
		    <sec:authorize access="hasRole('ROLE_USER')">
			<li><a href="${contextPath}/Cart"><span class="glyphicon glyphicon-shopping-cart">CART</span></a></li>
		    </sec:authorize>				
		    
		    
            
          </ul> 
          
          <ul class="nav navbar-nav pull-right">
          
          <sec:authorize access="isAnonymous()">
          <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-shopping-cart">CART</span></a></li>
          <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-user"> <b>LOGIN</b></span></a></li>
          <li><a href="${contextPath}/register"><b>REGISTER</b></a></li>
          </sec:authorize>
          
          <sec:authorize access="isAuthenticated()">
             <li><a href="${contextPath}/logout"><b>LOGOUT</b></a></li>
		  </sec:authorize>
          
          
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>