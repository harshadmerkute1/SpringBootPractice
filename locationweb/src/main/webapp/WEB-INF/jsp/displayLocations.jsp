<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Locations</title>
</head>
<body>

<h2>Locations:</h2>
<table>
<tr>
<th>Id</th>
<th>Code</th>
<th>Name</th>
<th>Type</th>	
</tr>
<c:forEach items="${locations}" var="locations">
<tr>
<td>${locations.id}</td>
<td>${locations.code}</td>
<td>${locations.name}</td>
<td>${locations.type}</td>
<td><a href="deleteLocation?id=${locations.id}">delete</a></td>
<td><a href="showUpdate?id=${locations.id}">edit</a></td>
</tr>
</c:forEach>
</table>
<a href="showCreate"> Add Locations</a>
</body>
</html>