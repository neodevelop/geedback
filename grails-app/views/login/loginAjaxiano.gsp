<div id='login'>
	<div class='inner'>
		<div class='fheader'><g:message code="login.do" default="Please Login..." /></div>
		<form action='${request.contextPath}/j_acegi_security_check' method='POST' id='loginForm'>
			<g:render template="loginform"/>
			<div class="buttons">
				<span class="button">
					<input class="home" type="submit" value="${message(code:'auth.login', 'default':'Login')}" />
				</span>
			</div>
		</form>
	</div>
	<div style='display: none; text-align: left;' id='loginMessage'></div>
</div>
