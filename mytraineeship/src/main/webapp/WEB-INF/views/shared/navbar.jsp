<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${contextRoot}/home">Tunisie Telecom</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                
                  <li id="about">
                        <a href="${contextRoot}/about">� propos de nous</a>
                    </li>
                
                    
                    <li id="listProducts">
                        <a href="${contextRoot}/show/all/products">Consultez produits</a>
                    </li>
					<security:authorize access="hasAuthority('ADMIN')">
	                    <li id="manageProducts">
	                        <a href="${contextRoot}/manage/products">G�rer les produits</a>
	                    </li>
                    </security:authorize>
                    
                  
                    <li id="contact">
                        <a href="${contextRoot}/contact">Contactez nous</a>
                    </li>
                    
                </ul>
                
                <ul class="nav navbar-nav navbar-right">                
                    <security:authorize access="isAnonymous()">
	                    <li id="register">
	                        <a href="${contextRoot}/register">S'inscrire</a>
	                    </li>                
	                    
	                    <li id="login">
	                        <a href="${contextRoot}/login">Connecter</a>
	                    </li> 
                    </security:authorize>
                    
                    <security:authorize access="isAuthenticated()">
                    <li class="dropdown" id="userCart">
                    
                    	<a href="javascript:void(0)"
                    		class="btn btn-default dropdown-toggle"
                    		id="dropdownMenu1" 
                    		data-toggle="dropdown">
                    			
                    			${userModel.fullName}
                    			<span class="caret"></span>
                    		
                    	</a>
                    	
                    	<ul class="dropdown-menu">
                    		
                    		
                    		<security:authorize access="hasAuthority('USER')">
	                    		<li>
	                    			<a href="${contextRoot}/cart/show" >
	                    				
	                    				<span class="glyphicon glyphicon-shopping-cart"></span>
	                    				<span class="badge">${userModel.cart.cartLines}</span>
	                    				- &#8377; ${userModel.cart.grandTotal}
	                    			
	                    			</a>
	                    		</li>
	                    		
	                    		<li class="divider" role="separator"></li>
	                    		
                    		</security:authorize>
                    		<li>
                    			<a href="${contextRoot}/perform-logout">D�connection</a>
                    		</li>
                    	
                    	</ul>

                    </li>
					</security:authorize>
                </ul>
                
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<script>
	
		window.userRole = '${userModel.role}';	
	
	</script>
	
	
	
	
	
	
