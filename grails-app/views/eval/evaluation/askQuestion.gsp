 
<html>
    <head>
        <meta name="layout" content="main" />
		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			
			<div class="content">
				<h1><span></a><g:message code="evaluation" default="Evaluaci&oacute;n" /></span></h1>
				
				<div class="body">
					<g:if test="${message}">
		            <div class="message"><g:message code="${message}" args="${args}" default="${defaultMessage}" /></div>
		            </g:if>
					<g:form action="evaluation" method="post" name="formQuestion">
				        <div class="dialog">
							<table>
				                <tbody>

				                    <tr class="prop">
				                        <td valign="top" class="name">
				                            <label for="pregunta">${fieldValue(bean:pregunta,field:'pregunta')} </label>
				                        </td>
				                    </tr> 

									<g:if test="${pregunta.abierta}">
									     <tr class="prop">
					                        <td valign="top" class="name">
					                            <textarea class="required" rows='5' cols='40' name='respuesta'></textarea>
					                        </td>
					                    </tr>
									</g:if>
									<g:else>
									<g:radioGroup name="respuesta" values="${opciones.id}" labels="${opciones.opcion}" >
										<tr class="prop">
					                        <td valign="top" class="name">
					                            ${it.radio} ${it.label}
					                        </td>
					                    </tr>
									</g:radioGroup>

									</g:else>

				                </tbody>
				            </table>
				        </div>
				        <div class="buttons">
							<span class="button"><g:submitButton name="back" value="${message(code:'default.paginate.prev')}"></g:submitButton></span>
							<span class="button"><g:submitButton name="next" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
				        </div>
				    </g:form>
					<script type="text/javascript">
						var valid = new Validation('formQuestion', {immediate : true});
					</script>

			</div>
			</div>
		</div>

    </body>
</html>
