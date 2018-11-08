<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
    <link href="${pageContext.request.contextPath}/staticresources/css/main.css" rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>Login successful</title>
</head>
<body>
<div class="container">
<b>You have logged in successfully!</b>
<p class="btn btn-lg btn-primary btn-block"><a href="${pageContext.request.contextPath}/" class="labeltitle">Return to homepage</a></p>
</body>
</html>