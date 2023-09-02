<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="css/mystyle.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<!-- navbar -->
	<%@include file = "normal_navbar.jsp" %>
	
	
	
	<main class="d-flex align-items-center jumbotron bg-dark text-white bannerbg" style="padding-top:50px">
		
		<div class="container">
		
			<div class="row">
			
				<div class="col-md-6 offset-md-3">
				
					<div class="card border-0">
					
						<div class="card-header bg-dark text-center">

								<div class="container text-center">
								<img src="image/error.png"  height="300px">
								</div>
								
								<div class="text-center">
							<h5 class="display-5 text-white">Oops! Something Went Wrong..</h5>
								
								</div>
							
							<div class="text-center">
								<a href="index.jsp" class="btn btn-light text-black mt-3">Home</a>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</main>







<!-- javascript -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="js/myjs.js" type = "text/javascript"></script>
</body>
</html>