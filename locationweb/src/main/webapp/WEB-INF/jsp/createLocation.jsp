<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Location</title>
</head>
<body>
	<form action="saveLoc" method="POST">
		ID: <input type="text" name="id" /> <br/>
		
		Code: <input type="text" name="code" /><br/>
		
		Name: <input type="text" name="name" /><br/>
		
		Type: Urban <input type="radio" name="type" value="URBAN" /><br/>
			  Rural <input type="radio" name="type" value="RURAL" /> <br/>
		<input type="submit" name="save">

	</form>
	${msg}
	
	<a href="displayLocations">View all Locations</a>
</body>
</html>