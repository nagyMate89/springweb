<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/staticresources/css/main.css"
	rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>Create a new offer</title>
</head>
<body>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate" modelAttribute="offer">

		<table class="formtable">
			<tr>
				<td class="label">Name:</td>
				<td><sf:input path="name" name="name" type="text" /><br/> <sf:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input path="email" name="email" type="text" /><br/> <sf:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td class="label">Job Inquiry and Introduction:</td>
				<td><sf:textarea path="enquiry" name="enquiry"  rows="10" cols="10"></sf:textarea><br/> <sf:errors path="enquiry"  cssClass="error" />
					</td>
			</tr>
			<tr>
				<td></td>
				<td><input value="Send" type="submit" /></td>
			</tr>

		</table>



	</sf:form>


<p ><a href="${pageContext.request.contextPath}/createaccount" >Create New Account</a></p>


</body>
</html>