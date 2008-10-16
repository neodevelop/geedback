<table>
	<tbody>
		<tr class="prop">
			<td valign="top" class="name">
				<label for="name"><g:message code="auth.loginId" default="Login ID" />:</label>
			</td>
			<td valign="top" class="value ${hasErrors(bean:event,field:'name','errors')}">
				<input type='text' name='j_username' id='j_username'  />
			</td>
		</tr>
		<tr class="prop">
			<td valign="top" class="name">
				<label for="name"><g:message code="auth.password" default="Password" />:</label>
			</td>
			<td valign="top" class="value ${hasErrors(bean:event,field:'name','errors')}">
				<input type='password' name='j_password' id='j_password' />
			</td>
		</tr>
		<tr class="prop">
			<td valign="top" class="name">
				<label for="name"><g:message code="auth.rememberMe" default="Remember Me" />:</label>
			</td>
			<td valign="top" class="value ${hasErrors(bean:event,field:'name','errors')}">
				<input type='checkbox' id='remember_me' name='_acegi_security_remember_me'>
			</td>
		</tr>
	</tbody>
</table>	