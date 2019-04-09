<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link href='<spring:url value="/css/jquery-ui.min.css"/>'
	rel="stylesheet" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<link href='<spring:url value="/css/registration.css"/>' rel="stylesheet" />
<script type="text/javascript"
	src='<spring:url value="/Script/registration.js"/>'></script>
	<script type="text/javascript"
	src='<spring:url value="/Script/validator.js"/>'></script>
<script type="text/javascript"
	src='<spring:url value="/Script/jquery-ui.min.js"/>'></script>
	
<title>Registration</title>
</head>

<body>
	<div class="main">
		<section class="signup">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<div class="signup-content">
					<form:form method="POST" action="add" id="signup-form" class="signup-form" commandName="admin" name="signup" autocomplete="off">
						<h2 class="form-title">CREATE ACCOUNT</h2>
						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="fname"
								id="firstName" placeholder="First Name"
								  ></form:input>
								 
								  
						</div>
						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="lname"
								id="lastName" placeholder="Last Name"  />
								
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class='col-md-6'>
									<div class="form-group">										
											<form:input type='text' class="form-control" id="mydate"
												placeholder='DOB' path="dob" />								
									</div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="age"
								id="age"  placeholder="Age" readonly="true"  />
						</div>

						<div class="form-group">

                                                <form:select class="form-control input-lg mdb-select md-form " path="gender" id="gender">

                                                       <option value="" disabled selected>Gender</option>

                                                       <option value="Male">Male</option>

                                                       <option value="Female">Female</option>

                                                </form:select>

                                         </div>

						
						

						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="contact"
								id="contactNumber" placeholder="Contact Number"  />
						</div>



						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="altcontact"
								id="altContactNumber" placeholder="Alternate Contact Number"/>
						</div>


						<div class="form-group">
							<form:input type="email" path="login.username" id="email" class="form-control input-lg" placeholder="Email"  />
							<span id="disp"></span>
						
						</div>
						<div class="form-group">
							<form:input id="password" type="password" class="form-control input-lg"
								path="login.password" placeholder="Password" />
								<span id="eye"  toggle="#password" class="fa fa-fw fa-eye-slash fa-lg field-icon toggle-password"></span>
								<div id="errors"></div>
						</div>
						<div class="form-group">
							<input id="confirmpassword" name="confirmpassword" type="password" class="form-control input-lg"
								 placeholder="Confirm Password"  /> <span id="eye" toggle="#confirmpassword" class="fa fa-fw fa-eye-slash fa-lg field-icon toggle-password"></span>
							<div class="pwstrength_viewport_progress"></div>
						</div>
						
						<div class="form-group">
							<input type="checkbox" name="terms" id="agree-term" class="agree-term"
								> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>I
								agree all statements in <a href="#"  data-toggle="modal" data-target="#myModal" class="term-service">Terms
									of service</a></label>
						</div>
						
						
						
						<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Terms and Conditions</h4>
        </div>
        <div class="modal-body">
          
          <!-- para -->
          
         <p>By accessing and using the&nbsp;njhealth.org website and/or the National Jewish Health patient portal (Service) you accept the contents of this Agreement. If you do not agree to the Terms and Conditions for this Service, you may not use <em>My National Jewish Health</em> patient portal.</p>

<p>We may modify this Agreement at anytime. Any modifications made to this Agreement will be effective immediately upon posting on the Service. This Agreement may be viewed at any time while using the Service by clicking the &quot;Policies &amp; Guidelines&quot; link at the bottom of each web page. By accessing or using <em>My National Jewish Health</em>, you agree to be bound by the Terms and Conditions posted on the Service at the time of your access or use. You agree to review the Terms and Conditions posted on <em>My National Jewish Health</em> each time you use <em>My National Jewish Health</em> so that you are aware of any modifications made to this Agreement.</p>

<p>We reserve the right at any time and from time to time to modify or discontinue, temporarily or permanently, <em>My National Jewish Health</em>, or any part thereof, with or without notice.</p>

<p>Our failure to act with respect to a breach by you or others of these Terms and Conditions does not waive our right to act with respect to subsequent or similar breaches. These Terms and Conditions set forth the entire understanding and agreement between us and any Service User with respect to the Service, its uses and services.</p>
         
          
          
          <!-- para -->
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
						
						
						
						<div class="form-group"></div>
						<input type="submit" class="form-input" name="" id="submit"
							value="Sign Up" />
					</form:form>
					<p class="loginHere">
						Have already an account ? <a href="login" class="loginhere-link">Login
							here</a>
					</p>
				</div>
			</div>
		</div>
		</section>
	</div>
</body>

</html> 