<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>student-list</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
.data {
	font-size: large;
	color: orange;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
</style>
</head>
<body>
	<div class="container p-3 my-3 bg-primary text-white">
		<h1 style="text-align: center">Great Learning College Of
			Engineering</h1>
		<hr style="background-color: orange; height: 2px;">
		<h3 style="text-align: center;">! COLLEGE FEST !</h3>
		<hr style="background-color: orange; height: 1px;">
		<p>
			<a href="list" class="btn btn-warning btn-lg">Participants List</a>
		</p>
		<hr style="background-color: rgb(0, 255, 119); height: 1px;">
		<div class="container">
			<h4 style="text-align: center;">Fest Registraion Form</h4>
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<form action="save" method="post">
						<div class="form-group">
							<input type="hidden" class="form-control" placeholder="Enter Id"
								name="id" value="${student.id}">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Name"
								name="name" value="${student.name}">
						</div>
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Enter Department" name="department"
								value="${student.department}">
						</div>
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Enter Country" name="country"
								value="${student.country}">
						</div>

						<button class="btn btn-success btn-lg" type="submit"
							class="btn btn-primary">Save</button>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</body>
</html>
