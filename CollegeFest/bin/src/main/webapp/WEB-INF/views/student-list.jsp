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
			Engineering!</h1>
		<hr style="background-color: orange; height: 1px;">
		<h3 style="text-align: center;">GL FEST 2022!</h3>
		<hr style="background-color: orange; height: 1px;">
		<p>
			<a href="showForm" class="btn btn-warning btn-lg">Click here to register</a>

		</p>
		<hr style="background-color: rgb(225, 0, 119); height: 1px;">
		<div class="container">
			<table class="table table-dark">
				<thead>
					<tr>
						<th>Student Id</th>
						<th>Name</th>
						<th>Department</th>
						<th>Country</th>
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach var="student" items="${students}" varStatus="c">
					<tbody>
						<tr>
							<td>${c.count }</td>
							<td>${student.name}</td>
							<td>${student.department}</td>
							<td>${student.country}</td>
							<td><a class="btn btn-success" href="update?id=${student.id}">Update</a> <a class="btn btn-danger" href="delete?id=${student.id}"
							onclick="if(!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>