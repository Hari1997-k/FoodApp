<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<body>
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
				<li class="nav-item"><a class="nav-link" href="registerpage">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="loginpage">Login</a>
				</li>

			</ul>
			<a class="nav-link disabled" href="contact">Contact Us</a>

		</div>
	</nav>
	<!--Carousel Wrapper-->
	<div id="carousel-thumb" class="carousel slide " data-ride="carousel">
		<!--Slides-->
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<img style="width: 12cm; height: 10cm;" class="d-block h-50 w-100"
					src="https://www.foodvahan.com/wp-content/uploads/2019/12/paneer-biryani.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img style="width: 12cm; height: 10cm;" class="d-block h-50 w-100"
					src="https://www.bollywoodmasalaz.com/wp-content/uploads/2019/09/South-Indian-food-in-Indian-Cuisine.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img style="width: 12cm; height: 10cm;" class="d-block h-50 w-100"
					src="https://www.foodfusion.com/wp-content/uploads/2019/01/Qorma-Biryani-Recipe-by-Food-fusion-4-1.jpg"
					alt="Third slide">
			</div>
		</div>
		<!--/.Slides-->
		<!--Controls-->
		<a class="carousel-control-prev" href="#carousel-thumb" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carousel-thumb" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
		<!--/.Controls-->
		<ol class="carousel-indicators">
			<li data-target="#carousel-thumb" data-slide-to="0" class="active">
				<img src="" style="width: 12cm; height: 10cm;">
			</li>
			<li data-target="#carousel-thumb" data-slide-to="1"><img src=""
				style="width: 12cm; height: 10cm;"></li>
			<li data-target="#carousel-thumb" data-slide-to="2"><img src=""
				style="width: 12cm; height: 10cm;"></li>
		</ol>
	</div>
	<!--/.Carousel Wrapper-->
	<!-- <div style = "text-align : center">
<h1 class="bg-info">Welcome To ECreator.com</h1>
<h2>Create An Employee</h2>
</div>
<form action = "create" method = "post">
<div class="form-group">

<table style = "align: center; margin-left: 38%;">
<tr>width : 200px ; height : 200px;
<th><label for="ename">EmployeeName: </label></th>
<td><input class="form-control input-lg" type = "text" name = "ename"></td>
</tr>
<tr>
<th><label for="ename">EmployeeDomain: </label></th>
<td><input  class="form-control input-lg" type = "text" name = "edomain"></td>
</tr>
<tr>
<th><label for="ename">EmployeeRole: </label></th>
<td><input class="form-control input-lg" type = "text" name = "erole"></td>
</tr>
</table>
</div>
<input  style = " margin-left : 39%; "type = "submit"  class="btn btn-primary" value = "CreateEmployee">
</form><br>
<form action = "view">
<input  style = " margin-left : 50%; margin-top : -8.41%;" type = "submit"  class="btn btn-danger" value = "ViewEmployees">
</form><br> -->
</body>
</html>