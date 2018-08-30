<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Search</title>
</head>
<body>
Let's find some hotels...

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