<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Search</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/darkly/bootstrap.min.css">
<body>
<main class="container">
<h2>Plan your getaway....</h2>
<h3>Choose a city</h3>
<form method="post">
	<select id="city" name="city">
	   <option value="NONE">--- Select ---</option>
	   <option value="Tokyo">Tokyo</option>
	   <option value="Honolulu">Honolulu</option>
	   <option value="New York">New York</option>
	</select> 
	<button>submit</button>
</form>
</body>
</html>