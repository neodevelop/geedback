<html>
	<head>
		<meta name="layout" content="main" />
		<title>Login</title>
	</head>
	<body>
		<div id="login">
			<div class="inner">
				<g:if test="${flash.message}">
					<div class="login_message">${flash.message}</div>
				</g:if>
				<div class="fheader">Please Login..</div>
				<form action="${request.contextPath}/j_acegi_security_check" method="POST" id="loginForm" class="cssform">
					<g:render template="loginform"/>
					<div class="buttons">
						<span class="button">
							<input class="home" type="submit" value="${message(code:'auth.login', 'default':'Login')}" />
						</span>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>