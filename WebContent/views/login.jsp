<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body
	style="background-image: url('https://travelandleisureindia.in/wp-content/uploads/2019/12/Indian-But-Not-Indian-Food-feature.jpg')">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTFKeV3a1nhqCjUh7H2JUw6i8g0a-80WLX7A&usqp=CAU"
			width="100px" height="50px">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="index">Home</a>
				</li>

				<!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cuisine
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Indian Cuisine</a>
          <a class="dropdown-item" href="#">Arabic Cuisine</a>
          <a class="dropdown-item" href="#">Italian Cuisine</a>
          </div>
          
      </li> -->
				<li class="nav-item"><a class="nav-link" href="contact">Contact
						Us</a></li>
			</ul>

		</div>
	</nav>
	<div class="container" style="height: 100%; align-content: center;">
		<div class="d-flex justify-content-center h-100">

			<div class="card"
				style="height: 250px; margin-top: 3.45cm; border-radius: 30px; margin-bottom: auto; width: 400px; background-color: rgba(0, 0, 0, 0.5)">

				<div class="card-header">
					<h3 style="color: white;">Log-In</h3>
				</div>
				<div class="card-body">
					<form action="userlogin" method="post">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control"
								placeholder="Enter username" name="lname">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="Enter password" name="lpass">
						</div>
						<div class="form-group">
							<input style="border-radius: 10px" type="submit" value="LogIn"
								class="btn float-right login_btn">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>