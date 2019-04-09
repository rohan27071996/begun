<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<body>
	
		<h1 id="banner">Unauthorized Access !!</h1>
	
		<hr />
	
		<c:if test="${not empty error}">
			<div style="color:red">
				Your fake login attempt was bursted, dare again !!<br /> 
				Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
	
		<p class="message">Access denied!</p>
		<a href="${pageContext.request.contextPath}/login">Go back to login page</a> 
	</body>
</html> --%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> 
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='<spring:url value="/css/registration.css"/>' rel="stylesheet" />
<script type="text/javascript" src='<spring:url value="/Script/registration.js"/>'></script>

<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- <script src="Script/registration.js"></script>
<link rel="stylesheet" type="text/css" href="Styles/registration.css"> -->
<title>Login</title>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div class="main">
		<section class="signup">	
			<div class="container">
				<div class="col-md-6 col-md-offset-3" style="padding-top: 10%">
					<div class="signup-content">
					<form method="POST" action="<c:url value='j_spring_security_check'/>" id="signup-form" class="signup-form">
						<h2 class="form-title">Login</h2>
						
						<div class="form-group">
							<input type="text" class="form-control input-lg"  name='j_username' id="loginId"
								placeholder="Login Id" required />
						</div>
						
						<div class="form-group">
							<input id="password" type="password" class="form-control input-lg" name='j_password' placeholder="Password" required>
              					<span id="eye" toggle="#password" class="fa fa-fw fa-eye-slash fa-lg field-icon toggle-password"></span>
              					<div class="pwstrength_viewport_progress"></div>
              					<span class="errors">You have entered wrong credentials,try again!!!</span>
              					<a href="">Forgot password?</a>
						</div>
						
						
						
						<input type="submit" class="form-input" name="" id="submit"
								value="Login" />
					</form>
					
					<p class="loginHere">
                        Don't have an account ? <a href="reg" class="Registerhere-link">Register Here</a> 
                    	
                    </p>
                    
				</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>