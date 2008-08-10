<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
				<h1><span></a><g:message code="evaluation" default="Evaluaci&oacute;n" /></span></h1>
				<g:if test="${message}">
	            <div class="message"><g:message code="${message}" args="${args}" default="${defaultMessage}" /></div>
	            </g:if>
				<div class="body">
					<g:form action="evaluation" method="post" >
				        <div class="dialog">
							<table>
				                <tbody>

				                    <tr class="prop">
				                        <td valign="top" class="name">
				                            <label for="cuestionario"><g:message code="pregunta.cuestionario" default="Cuestionario" />  :</label>
				                        </td>
				                        <td valign="top" class="value ${hasErrors(bean:pregunta,field:'cuestionario','errors')}">
				                            <g:select optionKey="id" from="${Cuestionario.list()}" name="cuestionario.id" value="${pregunta?.cuestionario?.id}" ></g:select>
											<g:hasErrors bean="${pregunta}" field="cuestionario">
								            <div class="errors">
								                <g:renderErrors bean="${pregunta}" as="list" field="cuestionario"/>
								            </div>
								            </g:hasErrors>
				                        </td>
				                    </tr>

				                </tbody>
				            </table>
				        </div>
				        <div class="buttons">
							<span class="button"><g:submitButton name="back" value="${message(code:'default.paginate.prev')}"></g:submitButton></span>
							<span class="button"><g:submitButton name="next" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
				        </div>
				    </g:form>

			</div>
			</div>
		</div>
    </body>
</html>
