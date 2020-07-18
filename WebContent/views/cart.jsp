<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
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
				<li class="nav-item"><a class="nav-link" href="index">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="menu">Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="contact">Contact
						Us</a></li>

			</ul>
			<a class="nav-link disabled" href="logout">Logout</a>


		</div>
	</nav>
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<!-- <th style="width:8%">Quantity</th> -->
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td data-th="Product">
						<div class="row">
							<div class="col-sm-2 hidden">
								<img width="80" height="80"
									src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQMuv-ygaGRPNkqUARYPRjecGzCSx1l2ZbnRA&usqp=CAU"
									alt="..." class="img-responsive" />
							</div>
							<div class="col-sm-10">

								<h5 class="nomargin">${ufood}</h5>
							</div>
						</div>
					</td>

					<td data-th="Price">${fprice}</td>

					<!-- <td data-th="Quantity">
								<input type="number" class="form-control text-center" value="1">
							</td> -->
					<td data-th="Subtotal" class="text-center">${tprice}</td>
					<td class="actions" data-th=""><a href="menu"
						class="btn btn-info btn"><i class="fa fa-arrow-left"></i></a> <a
						href="#" class="btn btn-danger btn"><i class="fa fa-trash-o"></i></a>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr class="visible">
					<td class="text-center"><strong>Total Price :
							${tprice}.00 </strong></td>
				</tr>
				<tr>
					<td><a href="menu" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> AddFood</a></td>
					<td colspan="2" class="hidden"></td>
					<td class="hidden-xs text-center"><h5>
							<strong>Total ${tprice}.00 </strong>
						</h5></td>
					<td><a href="order" class="btn btn-success btn-block">OrderNow
							<i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
		</table>
	</div>

</body>
</html>