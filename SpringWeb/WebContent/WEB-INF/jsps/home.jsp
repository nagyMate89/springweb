<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SpringWebDemo</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
    <link href="${pageContext.request.contextPath}/staticresources/css/main.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
     <div class="container">
      
       <p class="btn btn-lg btn-primary btn-block"><a href="${pageContext.request.contextPath}/offers" class="labeltitle">Show Current Offers</a></p>
       <p class="btn btn-lg btn-primary btn-block"><a href="${pageContext.request.contextPath}/createoffer" class="labeltitle">Create New Offer</a></p>
       <p class="btn btn-lg btn-primary btn-block"><a href="${pageContext.request.contextPath}/createaccount" class="labeltitle">Create New Account</a></p>
       <p class="btn btn-lg btn-primary btn-block"><a href="${pageContext.request.contextPath}/login" class="labeltitle">Log In</a></p>
     <c:url var="logoutUrl" value="/logout"/><form action="${logoutUrl}" id="logout" method="post"> <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></form><a href="#" onclick="document.getElementById('logout').submit();">Logout</a>
</body></html>
