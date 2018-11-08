<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/staticresources/css/main.css"
	rel="stylesheet" type="text/css" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Create New Account</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/staticresources/script/jquery.js"></script>
<script type="text/javascript">
	function onLoad() {
		$("#password").keyup(checkPasswords);
		$("#confirm").keyup(checkPasswords);
		$("#details").submit(canSubmit);
	}

	function canSubmit() {
		var password = $("#password").val();
		var confirm = $("#confirm").val();

		if (password != confirm) {
			return false;
		} else {
			return true;
		}
	}

	function checkPasswords() {
		var password = $("#password").val();
		var confirm = $("#confirm").val();

		if (password.length > 3 ) {

			if (password == confirm) {
				$("#passmatch").text("Passwords match.");
				$("#passmatch").addClass("valid");
				$("#passmatch").removeClass("error");

			} else {
				$("#passmatch").text("Passwords do not match.");
				$("#passmatch").addClass("error");
				$("#passmatch").removeClass("valid");

			}

		} else {
			return;
		}
	}

	$(document).ready(onLoad);
</script>






</head>
<body>
	<div class="container">
		<sf:form method="post" cssClass="form-signin"
			action="${pageContext.request.contextPath}/newaccount"
			modelAttribute="user">
			<h2 class="form-signin-heading">Create New Account</h2>
			<p>
			<table class="accounttable">
				<tr>
					<td align="justify" valign="middle"><label for="name"
						class="sr-only">Username</label> <sf:input path="name" name="name"
							type="text" cssClass="form-control" placeholder="Username"
							required="autofocus" />
						<div>
							<sf:errors path="name" cssClass="error" />
						</div></td>
				</tr>
				<tr>
					<td align="justify" valign="middle"><label for="email"
						class="sr-only">Email</label> <sf:input path="email" name="email"
							type="text" size="50" cssClass="form-control" placeholder="Email" />
						<div>
							<sf:errors path="email" cssClass="error" />
						</div></td>
				</tr>
				<tr>
					<td align="justify" valign="middle"><label for="password"
						class="sr-only">Password</label> <sf:input id="password"
							path="password" name="password" type="text"
							cssClass="form-control" placeholder="Password" />
						<div>
							<sf:errors path="password" cssClass="error" />
						</div></td>
				</tr>
				<tr>
					<td align="justify" valign="middle"><label
						for="repeatpassword" class="sr-only">Repeat Password</label> <input
						id="confirm" path="confirmPass" name="confirmPass" type="text"
						class="form-control" placeholder="Repeat Password" />
					<div id="passmatch"></div>
				</tr>
			</table>
			<br />


			<button id="details" class="btn btn-lg btn-primary btn-block"
				type="submit">Create Account</button>





		</sf:form>
</body>
</html>