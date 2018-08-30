<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Results</title>
</head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/darkly/bootstrap.min.css">

<body>
<main class="container">
<p></p>
<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>City</th><th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotel" items="${hotels}">
				<tr>
				
					<td>${hotel.name}</td>
					<td>${hotel.city}</td>
					<td>$${hotel.pricePerNight}</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
<form method="get" action="/">
    <button type="submit">Back</button>
</form>

</body>
</html>