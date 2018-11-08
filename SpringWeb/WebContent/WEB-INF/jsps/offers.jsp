<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/staticresources/css/main.css"
	rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>SpringWebDemo</title>
</head>
<body>
	<c:forEach var="row" items="${offers}">
		<table class="formtable">
			<tr>

				<td class="label">ID:</td>
				<td>${row.id}</td>
			</tr>
			<tr>

				<td class="label">Name:</td>
				<td>${row.name}</td>
			</tr>
			<tr>

				<td class="label">Email:</td>
				<td>${row.email}</td>
			</tr>
			<tr>

				<td class="label">Enquiry:</td>
				<td class="enquiry">${row.enquiry}</td>
			</tr>
		</table>


	</c:forEach>
</body>
</html>