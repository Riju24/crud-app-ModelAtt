<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
  <%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br/>
<h1>The Records are :</h1>
<table border="1" width="50%" align="center">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Options</th>
		</tr>		
		<c:forEach items="${list}" var="stu">
		<tr>
			<td><c:out value="${stu.id}"/></td>
			<td><c:out value="${stu.name}"/></td>
			<td>
				<div id ="con" align="center">
				<a href = "update?id=<c:out value="${stu.id}"/>"><button type ="button">Update</button></a>
				<a href = "delete?id=<c:out value="${stu.id}"/>"><button type = "button">Delete</button></a>	
				</div>
		</tr>
		</c:forEach>
	</table>
	</br>
	</br>
	<a href =""><button type = "button" height ="100px" width="30px">Home</button></a>
	<a href ="insert"><button type = "button" height ="100px" width="30px" style="float:right;">Insert Record</button></a>
</body>
</html>